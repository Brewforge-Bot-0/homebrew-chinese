# Example: https://github.com/Homebrew/homebrew-cask/blob/master/Casks/a/anaconda.rb
cask "lceda-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.2.27.1"
  sha256 arm:   "26cd2a28e7c55e91b7695300e4cb0336d91666d488d193ec24818b726b3ab0b8",
         intel: "26cd2a28e7c55e91b7695300e4cb0336d91666d488d193ec24818b726b3ab0b8"

  branch = "fix-lceda-pro"
  url "https://raw.githubusercontent.com/Brewforge/homebrew-chinese/refs/heads/#{branch}/Casks/l/lceda-pro.sh"
  name "LCEDA-Pro"
  desc "高效的国产 PCB 设计工具，永久免费"
  homepage "https://lceda.cn/"

  livecheck do
    url "https://lceda.cn/page/download"
    regex(/lceda-pro-mac-#{arch}-(\d+(\.\d+)+)/i)
  end

  auto_updates true

  # app "LCEDA-Pro.app"

  installer script: {
    executable: "lceda-pro.sh",
    args:       [
      "https://image.lceda.cn/files/lceda-pro-mac-#{arch}-#{version}.zip",
      "#{staged_path}/lceda-pro-mac-#{arch}-#{version}.zip",
      "#{appdir}",
    ],
  }

  # binary "#{appdir}/LCEDA-Pro.app/Contents/MacOS/LCEDA-Pro"

  uninstall delete: caskroom_path.to_s

  zap trash: ""
end
