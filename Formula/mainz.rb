class Mainz < Formula
  desc "Compose PDF pages and edit declared styles"
  homepage "https://github.com/roktas/mainz"
  url "https://github.com/roktas/mainz/archive/6b578cfaef6ae72050e16f00ab67f5a063c4da52.tar.gz"
  version "1.0.0"
  sha256 "bf608719e587a4aaa47072aeb76b421c225d4395a7d8493eb58f97d68057ad0c"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/roktas/homebrew-tap/releases/download/mainz-1.0.0"
    sha256 cellar: :any, arm64_tahoe:  "98b0b3de96903305a77ec8ffb12eb9ee4e6c675a2eef62e66ca8fb2959e2db33"
    sha256 cellar: :any, x86_64_linux: "a70cca955c275f016bc6f6d5c7e3c4376d25a58f76ded2a7a4981b753ee02c35"
  end

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
