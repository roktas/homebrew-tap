class Mainz < Formula
  desc "Compose PDF pages and edit declared styles"
  homepage "https://github.com/roktas/mainz"
  url "https://github.com/roktas/mainz/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "bd99cfb65059b8ada69e0765af0fdcef043d5dc3731feb42627da94f7a2e5112"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/roktas/homebrew-tap/releases/download/mainz-1.0.0"
    rebuild 1
    sha256 cellar: :any, arm64_tahoe:  "0ffc4eaba3e65b21f03a4c75db2445fe07bc23742ee037a1d84b3c25247e9237"
    sha256 cellar: :any, x86_64_linux: "a284c505171d7df6b91fc34f28b6ca9385e299d1a9414be6964f5a21707448a4"
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
