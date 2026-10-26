cask "zed" do
  version :latest
  sha256 :no_check

  url "https://github.com/kapten-hwacha/zed/releases/download/latest-math/Zed-aarch64.dmg"
  name "Zed with LaTeX Math"
  desc "Multiplayer code editor with native LaTeX math rendering in markdown"
  homepage "https://github.com/kapten-hwacha/zed"

  depends_on arch: :arm64
  depends_on :macos

  app "Zed.app"
  binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed",
    "~/Library/Preferences/dev.zed.Zed.plist",
  ]
end
