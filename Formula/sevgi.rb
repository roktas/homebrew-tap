class Sevgi < Formula
  desc "Ruby toolkit for creating SVG"
  homepage "https://github.com/roktas/sevgi"
  url "https://github.com/roktas/sevgi/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "91e8363a8a47c2667cfdd0ed95b337c03dcbc8da46ac1a457e952f129ea8e774"
  license "GPL-3.0-or-later"
  head "https://github.com/roktas/sevgi.git", branch: "main"

  depends_on "pkgconf" => :build
  depends_on "cairo"
  depends_on "freetype"
  depends_on "gdk-pixbuf"
  depends_on "gettext"
  depends_on "glib"
  depends_on "gobject-introspection"
  depends_on "librsvg"
  depends_on "libxml2"
  depends_on "libxslt"
  depends_on "openssl@4"
  depends_on "pdfcpu"
  depends_on "poppler"
  depends_on "roktas/tap/mainz"
  depends_on "ruby"
  depends_on "zlib-ng-compat"

  uses_from_macos "libffi"

  resource "native-package-installer" do
    url "https://rubygems.org/downloads/native-package-installer-1.1.9.gem"
    sha256 "fbb41b6b22750791a4304f0a0aeea3dd837668892117f49c4caf2e8e0f4e792f"
  end

  resource "pkg-config" do
    url "https://rubygems.org/downloads/pkg-config-1.6.8.gem"
    sha256 "7045fa6e185929fa7329f39c6fac934b0df70d643f3e0954c4a2e592355ea2e8"
  end

  resource "public_suffix" do
    url "https://rubygems.org/downloads/public_suffix-7.0.5.gem"
    sha256 "1a8bb08f1bbea19228d3bed6e5ed908d1cb4f7c2726d18bd9cadf60bc676f623"
  end

  resource "addressable" do
    url "https://rubygems.org/downloads/addressable-2.10.0.gem"
    sha256 "5e13b9c001adf01dd65ad6e0d2a91d2bc07885c0ff2b83f48cbcd95e08d9de62"
  end

  resource "css_parser" do
    url "https://rubygems.org/downloads/css_parser-1.22.0.gem"
    sha256 "f274988a40c6178305530d60e7deb5162f7b5538b701b61b5488fc703e5b40c1"
  end

  resource "mini_portile2" do
    url "https://rubygems.org/downloads/mini_portile2-2.8.9.gem"
    sha256 "0cd7c7f824e010c072e33f68bc02d85a00aeb6fce05bb4819c03dfd3c140c289"
  end

  resource "racc" do
    url "https://rubygems.org/downloads/racc-1.8.1.gem"
    sha256 "4a7f6929691dbec8b5209a0b373bc2614882b55fc5d2e447a21aaa691303d62f"
  end

  resource "nokogiri" do
    url "https://rubygems.org/downloads/nokogiri-1.19.7.gem"
    sha256 "abe94507c54cb18f872777b16bdca4aad32b1abdc4c52fe843f1c80fbdf992b8"
  end

  resource "rufo" do
    url "https://rubygems.org/downloads/rufo-0.18.2.gem"
    sha256 "f279bea838aae7cd51149413a2dfa3383044b1c93f1469ceaddd1ca3824fc46f"
  end

  resource "cmdparse" do
    url "https://rubygems.org/downloads/cmdparse-3.0.7.gem"
    sha256 "f7c5cace10bec6abf853370ae095e4b97a84ed9d847b3fb38f41cc4fbc950739"
  end

  resource "geom2d" do
    url "https://rubygems.org/downloads/geom2d-0.4.1.gem"
    sha256 "ea0998ea90c4f2752e24fe13d85a4f89bee689d151316140ebcc6369bf634ed9"
  end

  resource "openssl" do
    url "https://rubygems.org/downloads/openssl-4.0.2.gem"
    sha256 "1037ad2868ae58df9ad917891c0c0f9815a1172f6846d4bcdd508e4c2ee747c2"
  end

  resource "strscan" do
    url "https://rubygems.org/downloads/strscan-3.1.8.gem"
    sha256 "aae2db611a225559f21ffbb71765c9a4e60fd262534a9ea84f4f11c7f32f679e"
  end

  resource "hexapdf" do
    url "https://rubygems.org/downloads/hexapdf-1.11.2.gem"
    sha256 "c69ea394cc1c4b291ee17cbf2707956ad975948db4f9cf7b9d9d3bfca87b5f1c"
  end

  resource "json" do
    url "https://rubygems.org/downloads/json-3.1.0.gem"
    sha256 "3ce7ccf8fde58960177a3a756c31f292a4c1e1dedee884547096a5b0604e3bd8"
  end

  resource "ast" do
    url "https://rubygems.org/downloads/ast-2.4.3.gem"
    sha256 "954615157c1d6a382bc27d690d973195e79db7f55e9765ac7c481c60bdb4d383"
  end

  resource "language_server-protocol" do
    url "https://rubygems.org/downloads/language_server-protocol-3.17.0.6.gem"
    sha256 "5ef2c0c138f8267e1bc631d3328347d354f96724b0af22f2c79516120443b7f0"
  end

  resource "lint_roller" do
    url "https://rubygems.org/downloads/lint_roller-1.1.0.gem"
    sha256 "2c0c845b632a7d172cb849cc90c1bce937a28c5c8ccccb50dfd46a485003cc87"
  end

  resource "parallel" do
    url "https://rubygems.org/downloads/parallel-2.3.0.gem"
    sha256 "f75a3e904101ce6a1ccb6b8dc800cbafd42166d83330192438dcf29395167a6f"
  end

  resource "parser" do
    url "https://rubygems.org/downloads/parser-3.3.14.0.gem"
    sha256 "62f8f76af7b919425ee2d811880e9dcb8011ab40bfd59970dfb583141697e58f"
  end

  resource "prism" do
    url "https://rubygems.org/downloads/prism-1.9.0.gem"
    sha256 "7b530c6a9f92c24300014919c9dcbc055bf4cdf51ec30aed099b06cd6674ef85"
  end

  resource "rainbow" do
    url "https://rubygems.org/downloads/rainbow-3.1.1.gem"
    sha256 "039491aa3a89f42efa1d6dec2fc4e62ede96eb6acd95e52f1ad581182b79bc6a"
  end

  resource "regexp_parser" do
    url "https://rubygems.org/downloads/regexp_parser-2.13.4.gem"
    sha256 "1d0547814f57e6f00946957bd0ca201bc42f42cfb08eee89df60998aedcd8a3b"
  end

  resource "ruby-progressbar" do
    url "https://rubygems.org/downloads/ruby-progressbar-1.13.0.gem"
    sha256 "80fc9c47a9b640d6834e0dc7b3c94c9df37f08cb072b7761e4a71e22cff29b33"
  end

  resource "unicode-emoji" do
    url "https://rubygems.org/downloads/unicode-emoji-4.3.0.gem"
    sha256 "11c02fa73290378c066bb0562cd4c87d8e1b706fbbe0059ca12746a4244de8ce"
  end

  resource "unicode-display_width" do
    url "https://rubygems.org/downloads/unicode-display_width-3.3.0.gem"
    sha256 "4b7aa66a4b11db50f6f7e98411215cd0dd10eaecb665d36eec5bcacb3fa0b613"
  end

  resource "rubocop-ast" do
    url "https://rubygems.org/downloads/rubocop-ast-1.53.0.gem"
    sha256 "027984d28485d6502ae4c72f9341080f54f538599f5dbb54f81875a4ddcad574"
  end

  resource "rubocop" do
    url "https://rubygems.org/downloads/rubocop-1.92.3.gem"
    sha256 "fd77feac46e8e91c3a534f868a1702c59f5bf8173515fd00a3c6ce1198672ff6"
  end

  resource "matrix" do
    url "https://rubygems.org/downloads/matrix-0.4.3.gem"
    sha256 "a0d5ab7ddcc1973ff690ab361b67f359acbb16958d1dc072b8b956a286564c5b"
  end

  resource "red-colors" do
    url "https://rubygems.org/downloads/red-colors-0.5.0.gem"
    sha256 "0a33f603d1843035fe467485ba4461022e3b5a2de9a0f0371e7cc0939b99ad19"
  end

  resource "cairo" do
    url "https://rubygems.org/downloads/cairo-1.18.5.gem"
    sha256 "e57356141c91748061b10260e185735bd6e2288ab81ab300a6de3adfa270a623"
  end

  resource "glib2" do
    url "https://rubygems.org/downloads/glib2-4.4.0.gem"
    sha256 "0cab1c0433057d765ba21eac0bd9ea61fdbfc9997ab9eff5b1d087b35492b27b"
  end

  resource "gobject-introspection" do
    url "https://rubygems.org/downloads/gobject-introspection-4.4.0.gem"
    sha256 "c94fe81dd945a80ad87881734d90b54709eeec61af1a76ddfecbf1fb4180520c"
  end

  resource "fiddle" do
    url "https://rubygems.org/downloads/fiddle-1.1.8.gem"
    sha256 "7fa8ee3627271497f3add5503acdbc3f40b32f610fc1cf49634f083ef3f32eee"
  end

  resource "gio2" do
    url "https://rubygems.org/downloads/gio2-4.4.0.gem"
    sha256 "bbffde4edeb573ef96912872c000c05bb1c3101eafc95b87186d27d058d4b63c"
  end

  resource "rake" do
    url "https://rubygems.org/downloads/rake-13.4.2.gem"
    sha256 "cb825b2bd5f1f8e91ca37bddb4b9aaf345551b4731da62949be002fa89283701"
  end

  resource "gdk_pixbuf2" do
    url "https://rubygems.org/downloads/gdk_pixbuf2-4.4.0.gem"
    sha256 "58aa55e020af41232cb94573b9cae3e8a7d9e6ea9f1d5653189db275f76d3204"
  end

  resource "cairo-gobject" do
    url "https://rubygems.org/downloads/cairo-gobject-4.4.0.gem"
    sha256 "9f73c6b719688210bcf0920a08c517d24dd1023beff32d17d46aa3a63209f9b8"
  end

  resource "rsvg2" do
    url "https://rubygems.org/downloads/rsvg2-4.4.0.gem"
    sha256 "30793faf9071a0df0dae51df9fdbd40e1b095292e5781a1dcf2b9706e28b243a"
  end

  def install
    ENV["GEM_HOME"] = libexec

    resources.each do |resource|
      args = [
        "gem", "install", resource.cached_download,
        "--ignore-dependencies", "--no-document", "--install-dir", libexec
      ]
      if resource.name == "nokogiri"
        xml2 = formula_opt_prefix("libxml2")
        xslt = formula_opt_prefix("libxslt")
        args += [
          "--", "--use-system-libraries",
          "--with-xml2-include=#{xml2}/include/libxml2",
          "--with-xml2-lib=#{xml2}/lib",
          "--with-xslt-include=#{xslt}/include",
          "--with-xslt-lib=#{xslt}/lib"
        ]
      end
      system(*args)
    end

    components = %w[function geometry graphics standard derender sundries appendix toplevel]
    components.each do |component|
      cd component do
        gemspec = Dir["*.gemspec"].fetch(0)
        package = buildpath/"#{File.basename(gemspec, ".gemspec")}.gem"
        system "gem", "build", gemspec, "--output", package
        system "gem", "install", package, "--ignore-dependencies", "--no-document", "--install-dir", libexec
      end
    end

    (pkgshare/"skills").install buildpath/"appendix/agents/skills/sevgi"

    bin.install(*%w[igsev igves sevgi].map { libexec/"bin"/it })
    environment = {
      PATH:        "#{formula_opt_bin("ruby")}:$PATH",
      GEM_HOME:    ENV["GEM_HOME"],
      SEVGI_SKILL: (opt_share/"sevgi/skills/sevgi").to_s,
    }
    bin.env_script_all_files libexec/"bin", environment
  end

  test do
    ENV["GEM_HOME"] = libexec

    mainz = formula_opt_bin("roktas/tap/mainz")/"mainz"
    assert_equal version.to_s, shell_output("#{bin}/sevgi --version").strip
    assert_equal version.to_s, shell_output("#{bin}/igves --version").strip
    assert_equal version.to_s, shell_output("#{bin}/igsev --version").strip
    assert_equal 1, JSON.parse(shell_output("#{mainz} --version"))["contract"]
    system formula_opt_bin("pdfcpu")/"pdfcpu", "version"
    assert_match "pdfunite", shell_output("#{formula_opt_bin("poppler")}/pdfunite -v 2>&1")

    skill = shell_output("#{bin}/sevgi --skill").strip
    assert_equal (opt_share/"sevgi/skills/sevgi").to_s, skill
    assert_path_exists Pathname(skill)/"SKILL.md"
    rubocop = "#{libexec}/bin/rubocop --config /dev/null --plugin sevgi-appendix"
    assert_match "Sevgi/Parentheses", shell_output("#{rubocop} --show-cops Sevgi/Parentheses")

    pdf = testpath/"circle.pdf"
    png = testpath/"circle.png"
    prepared = testpath/"prepared.pdf"
    (testpath/"circle.sevgi").write <<~RUBY
      drawing = SVG width: 10, height: 10 do
        circle cx: 5, cy: 5, r: 4, fill: "tomato"
      end

      drawing.PDF #{pdf.to_s.dump}
      drawing.PNG #{png.to_s.dump}

      drawing.Imprint do
        Page name: "Circle"
      end
      drawing.PDF #{prepared.to_s.dump}, fallback: false
    RUBY

    log = shell_output("#{bin}/sevgi #{testpath}/circle.sevgi 2>&1")
    refute_match "already initialized constant", log
    [pdf, png].each do |output|
      assert_path_exists output
      assert_operator output.size, :>, 0
    end
    report = JSON.parse(shell_output("#{mainz} describe #{prepared}"))
    assert_equal "Circle", report.fetch("pages").first.fetch("name")

    source = testpath/"circle.svg"
    source.write '<svg xmlns="http://www.w3.org/2000/svg"><circle r="4"/></svg>'
    assert_match "circle r: 4", shell_output("#{bin}/igves #{source}")
    assert_match '<circle r="4"/>', shell_output("#{bin}/igsev #{source}")
  end
end
