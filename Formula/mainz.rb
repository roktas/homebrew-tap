class Mainz < Formula
  desc "Prepare and style PDFs without changing protected content"
  homepage "https://github.com/roktas/mainz"
  url "https://github.com/roktas/mainz/archive/3cbebc056e42b94f8a60dc7629584acb242a4580.tar.gz"
  version "1.0.0"
  sha256 "a38d83b33f1311ae7dd846017c873791b40ada8d389df4d152bee26b22c99baf"
  license "GPL-3.0-only"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "cairo"
  depends_on "fontconfig"
  depends_on "gdk-pixbuf"
  depends_on "gettext"
  depends_on "glib"
  depends_on "harfbuzz"
  depends_on "librsvg"
  depends_on "libxml2"
  depends_on "pango"
  depends_on "qpdf"
  depends_on "zlib-ng-compat"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args,
                    "-DMAINZ_LINT=OFF", "-DBUILD_TESTING=OFF"
    system "cmake", "--build", "build", "--target", "mainz"
    bin.install "build/mainz"
  end

  test do
    assert_equal version.to_s, JSON.parse(shell_output("#{bin}/mainz --version"))["version"]
    (testpath/"source.svg").write <<~SVG
      <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100">
        <g id="Ink" fill="none" stroke="black"><rect x="20" y="20" width="40" height="40"/></g>
      </svg>
    SVG
    (testpath/"style.json").write JSON.generate(
      targets:    { ink: { selectors: ["#Ink"] } },
      parameters: {
        display: {
          schema:  { type: "string", enum: ["inline", "none"] },
          binding: { targets: ["ink"], property: "display" },
        },
      },
    )
    system bin/"mainz", "produce", "source.svg", "--declaration", "style.json", "--output", "prepared.pdf"
    assert_equal({ "valid" => true, "version" => 1 }, JSON.parse(shell_output("#{bin}/mainz verify prepared.pdf")))
  end
end
