class Mainz < Formula
  desc "Prepare and style PDFs without changing protected content"
  homepage "https://github.com/roktas/mainz"
  url "https://github.com/roktas/mainz/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c6b32ff326290a343d0a0c0b474ae9e41766d719dcac4ebef0c0465176985e79"
  license "GPL-3.0-only"
  revision 1

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "cairo"
  depends_on "fontconfig"
  depends_on "glib"
  depends_on "librsvg"
  depends_on "libxml2"
  depends_on "pango"
  depends_on "qpdf"

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
