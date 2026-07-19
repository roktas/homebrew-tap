class Sevgi < Formula
  desc "Ruby toolkit for creating SVG"
  homepage "https://sevgi.roktas.dev"
  url "https://github.com/roktas/sevgi/archive/refs/tags/v0.97.0.tar.gz"
  sha256 "54284903d8ea8addc672222ec94ad038a4a1406850279f57312632235bf00bc5"
  license "GPL-3.0-or-later"
  revision 2
  head "https://github.com/roktas/sevgi.git", branch: "main"

  depends_on "pkgconf" => :build
  depends_on "cairo"
  depends_on "gdk-pixbuf"
  depends_on "glib"
  depends_on "gobject-introspection"
  depends_on "librsvg"
  depends_on "libxml2"
  depends_on "libxslt"
  depends_on "openssl@3"
  depends_on "pdfcpu"
  depends_on "poppler"
  depends_on "ruby"

  resource "native-package-installer" do
    url "https://rubygems.org/downloads/native-package-installer-1.1.9.gem"
    sha256 "fbb41b6b22750791a4304f0a0aeea3dd837668892117f49c4caf2e8e0f4e792f"
  end

  resource "pkg-config" do
    url "https://rubygems.org/downloads/pkg-config-1.6.5.gem"
    sha256 "33f9f81c5322983d22b439b8b672f27777b406fea23bfec74ff14bbeb42ec733"
  end

  resource "public_suffix" do
    url "https://rubygems.org/downloads/public_suffix-7.0.5.gem"
    sha256 "1a8bb08f1bbea19228d3bed6e5ed908d1cb4f7c2726d18bd9cadf60bc676f623"
  end

  resource "addressable" do
    url "https://rubygems.org/downloads/addressable-2.9.0.gem"
    sha256 "7fdf6ac3660f7f4e867a0838be3f6cf722ace541dd97767fa42bc6cfa980c7af"
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
    url "https://rubygems.org/downloads/nokogiri-1.19.4.gem"
    sha256 "50c951611c92bca05c51411aef45f1cbc50f2821c4802758c5c6d34696533ab5"
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
    url "https://rubygems.org/downloads/hexapdf-1.9.1.gem"
    sha256 "2d1f6a3622e6bc2a70a707d4c3f3fa44f5552ecd9d899f6283abb07398a84884"
  end

  resource "json" do
    url "https://rubygems.org/downloads/json-2.21.1.gem"
    sha256 "13a43df75d95641443f5702dff350f237164a9d811ff0f2c2800d4d980220583"
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
    url "https://rubygems.org/downloads/parallel-2.1.0.gem"
    sha256 "b35258865c2e31134c5ecb708beaaf6772adf9d5efae28e93e99260877b09356"
  end

  resource "parser" do
    url "https://rubygems.org/downloads/parser-3.3.12.0.gem"
    sha256 "21a6d7f755d5a24dfbdc6e6b772e4e879a52e7631a88bc5a3a134606052c9828"
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
    url "https://rubygems.org/downloads/regexp_parser-2.12.0.gem"
    sha256 "35a916a1d63190ab5c9009457136ae5f3c0c7512d60291d0d1378ba18ce08ebb"
  end

  resource "ruby-progressbar" do
    url "https://rubygems.org/downloads/ruby-progressbar-1.13.0.gem"
    sha256 "80fc9c47a9b640d6834e0dc7b3c94c9df37f08cb072b7761e4a71e22cff29b33"
  end

  resource "unicode-emoji" do
    url "https://rubygems.org/downloads/unicode-emoji-4.2.0.gem"
    sha256 "519e69150f75652e40bf736106cfbc8f0f73aa3fb6a65afe62fefa7f80b0f80f"
  end

  resource "unicode-display_width" do
    url "https://rubygems.org/downloads/unicode-display_width-3.2.0.gem"
    sha256 "0cdd96b5681a5949cdbc2c55e7b420facae74c4aaf9a9815eee1087cb1853c42"
  end

  resource "rubocop-ast" do
    url "https://rubygems.org/downloads/rubocop-ast-1.50.0.gem"
    sha256 "b9ca88300da0803ee222ad20cdb30494c0a784eed06fdc35d254b06d662788db"
  end

  resource "rubocop" do
    url "https://rubygems.org/downloads/rubocop-1.88.2.gem"
    sha256 "8def251c90cd955feb4daa3edc0ab56893250c4ce90ef81e6c80c03f9a939bbf"
  end

  resource "matrix" do
    url "https://rubygems.org/downloads/matrix-0.4.3.gem"
    sha256 "a0d5ab7ddcc1973ff690ab361b67f359acbb16958d1dc072b8b956a286564c5b"
  end

  resource "red-colors" do
    url "https://rubygems.org/downloads/red-colors-0.4.0.gem"
    sha256 "2356eba0782ca6c44caa47645fbf942a2b16d85905c35c6e3f80d5ff0c04929a"
  end

  resource "cairo" do
    url "https://rubygems.org/downloads/cairo-1.18.5.gem"
    sha256 "e57356141c91748061b10260e185735bd6e2288ab81ab300a6de3adfa270a623"
  end

  resource "glib2" do
    url "https://rubygems.org/downloads/glib2-4.3.7.gem"
    sha256 "6d5e1e04b3bfcb59ed18ef9ef7689151fc66b93e3a8b3a15d330fd97fa0223ed"
  end

  resource "gobject-introspection" do
    url "https://rubygems.org/downloads/gobject-introspection-4.3.7.gem"
    sha256 "037cd58d338ec00f7cd877243527dcb52e9d8c54e461ee8ca090855ee62cce29"
  end

  resource "fiddle" do
    url "https://rubygems.org/downloads/fiddle-1.1.8.gem"
    sha256 "7fa8ee3627271497f3add5503acdbc3f40b32f610fc1cf49634f083ef3f32eee"
  end

  resource "gio2" do
    url "https://rubygems.org/downloads/gio2-4.3.7.gem"
    sha256 "7cc31c15d83324489dc7bcab545a6fef3aac42d41304e7a67e545d9a475f0f6d"
  end

  resource "rake" do
    url "https://rubygems.org/downloads/rake-13.4.2.gem"
    sha256 "cb825b2bd5f1f8e91ca37bddb4b9aaf345551b4731da62949be002fa89283701"
  end

  resource "gdk_pixbuf2" do
    url "https://rubygems.org/downloads/gdk_pixbuf2-4.3.7.gem"
    sha256 "6eecabf3136ddc708ff438c9f6c19e11d0f5d883b8d83d9b577761070cc18807"
  end

  resource "cairo-gobject" do
    url "https://rubygems.org/downloads/cairo-gobject-4.3.7.gem"
    sha256 "d23cd5d6c6a958ef275ef9bc76af6fea61bd49a4db74f5ab21ee8067f5d400d4"
  end

  resource "rsvg2" do
    url "https://rubygems.org/downloads/rsvg2-4.3.7.gem"
    sha256 "7e6d99550e199f647ac3250d7ce50345444f0b97991e0a00d091d3027ee8da60"
  end

  def install
    ENV["GEM_HOME"] = libexec

    appendix = (buildpath/"appendix").directory?
    extras = %w[
      ast language_server-protocol lint_roller parallel parser prism rainbow regexp_parser rubocop rubocop-ast
      ruby-progressbar unicode-display_width unicode-emoji
    ]

    resources.each do |resource|
      next if !appendix && extras.include?(resource.name)

      resource.fetch
      args = [
        "gem", "install", resource.cached_download,
        "--ignore-dependencies", "--no-document", "--install-dir", libexec
      ]
      if resource.name == "nokogiri"
        xml2 = formula_opt_prefix("libxml2")
        xslt = formula_opt_prefix("libxslt")
        args += [
          "--", "--use-system-libraries",
          "--with-xml2-include=#{xml2/"include/libxml2"}",
          "--with-xml2-lib=#{xml2/"lib"}",
          "--with-xslt-include=#{xslt/"include"}",
          "--with-xslt-lib=#{xslt/"lib"}"
        ]
      end
      system(*args)
    end

    components = %w[function geometry graphics standard derender sundries]
    components << "appendix" if appendix
    components << "toplevel"
    components.each do |component|
      cd component do
        gemspec = Dir["*.gemspec"].fetch(0)
        package = buildpath/"#{File.basename(gemspec, ".gemspec")}.gem"
        system "gem", "build", gemspec, "--output", package
        system "gem", "install", package, "--ignore-dependencies", "--no-document", "--install-dir", libexec
      end
    end

    (share/"sevgi/skills").install buildpath/"appendix/agents/skills/sevgi" if appendix

    executables = appendix ? %w[igsev igves rubocop sevgi] : %w[igves sevgi]
    bin.install(*executables.map { libexec/"bin"/it })
    environment = {
      PATH:     "#{formula_opt_bin("ruby")}:$PATH",
      GEM_HOME: ENV["GEM_HOME"],
    }
    environment[:SEVGI_SKILL] = (opt_share/"sevgi/skills/sevgi").to_s if appendix
    bin.env_script_all_files libexec/"bin", environment
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/sevgi --version").strip
    assert_equal version.to_s, shell_output("#{bin}/igves --version").strip
    assert_match "pdfcpu", shell_output("#{formula_opt_bin("pdfcpu")}/pdfcpu version")
    assert_match "pdfunite", shell_output("#{formula_opt_bin("poppler")}/pdfunite -v 2>&1")

    if build.head? || version >= Version.new("0.97.0")
      assert_equal version.to_s, shell_output("#{bin}/igsev --version").strip
      skill = shell_output("#{bin}/sevgi --skill").strip
      assert_equal (opt_share/"sevgi/skills/sevgi").to_s, skill
      assert_path_exists Pathname(skill)/"SKILL.md"
      rubocop = "#{bin}/rubocop --config /dev/null --plugin sevgi-appendix"
      assert_match "Sevgi/Parentheses", shell_output("#{rubocop} --show-cops Sevgi/Parentheses")
    end

    output = testpath/"circle.png"
    (testpath/"circle.sevgi").write <<~RUBY
      SVG width: 10, height: 10 do
        circle cx: 5, cy: 5, r: 4, fill: "tomato"
      end.PNG #{output.to_s.dump}
    RUBY

    system bin/"sevgi", testpath/"circle.sevgi"
    assert_path_exists output
    assert_operator output.size, :>, 0

    source = testpath/"circle.svg"
    source.write '<svg xmlns="http://www.w3.org/2000/svg"><circle r="4"/></svg>'
    assert_match "circle r: 4", shell_output("#{bin}/igves #{source}")
    if build.head? || version >= Version.new("0.97.0")
      assert_match '<circle r="4"/>', shell_output("#{bin}/igsev #{source}")
    end
  end
end
