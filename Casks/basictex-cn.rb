cask "basictex-cn" do
  version "2023.0314"
  sha256 "bee681935e4af6dd3ae79229ccd5437e6a0ced138b530e88fe66a95a13c113b1"

  url "https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg",
      verified: "mirrors.tuna.tsinghua.edu.cn/CTAN/systems/mac/mactex/"
  name "BasicTeX"
  desc "Compact TeX distribution as alternative to the full TeX Live / MacTeX"
  homepage "https://www.tug.org/mactex/morepackages.html"

  livecheck do
    url "https://ctan.org/texarchive/systems/mac/mactex/"
    strategy :page_match do |page|
      match = page.match(/href=.*?mactex-basictex-(\d{4})(\d{2})(\d{2})\.pkg/)
      next if match.blank?

      "#{match[1]}.#{match[2]}#{match[3]}"
    end
  end

  conflicts_with cask: [
    "basictex",
    "mactex-no-gui",
    "mactex",
  ]
  depends_on macos: ">= :mojave"

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
              "/etc/manpaths.d/TeX",
              "/etc/paths.d/TeX",
              "/Library/TeX",
              "/usr/local/texlive/#{version.major}basic",
            ]

  zap trash: [
        "/usr/local/texlive/texmf-local",
        "~/Library/texlive/#{version.major}basic",
      ],
      rmdir: [
        "/usr/local/texlive",
        "~/Library/texlive",
      ]

  caveats <<~EOS
    You must restart your terminal window for the installation of MacTex CLI tools to take effect.
    Alternatively, Bash and Zsh users can run the command:

      eval "$(/usr/libexec/path_helper)"
  EOS
end
