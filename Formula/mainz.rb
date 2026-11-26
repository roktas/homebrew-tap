class Mainz < Formula
  desc "Compose PDF pages and edit declared styles"
  homepage "https://github.com/roktas/mainz"
  url "https://github.com/roktas/mainz/archive/16e77431a9210d2bc6feb1809edfdddcacf7e9b0.tar.gz"
  version "1.0.1"
  sha256 "b4822449550b1e26cf66155c25a0d3195746eebfe3b15eebf5459817fda58413"
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
    system bin/"mainz", "imprint", "source.svg", "--declaration", "style.json", "--output", "prepared.pdf"
    assert_equal({ "valid" => true, "version" => 1 }, JSON.parse(shell_output("#{bin}/mainz verify prepared.pdf")))
  end
end
