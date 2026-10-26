cask "zed-local" do
  version "local"
  sha256 :no_check

  url "file:///Users/hwacha/work/personal/zed/target/aarch64-apple-darwin/release/Zed-aarch64.dmg"
  name "Zed (Local Build)"
  desc "Multiplayer code editor built from local repository with LaTeX math"
  homepage "https://github.com/kapten-hwacha/zed"

  auto_updates true
  depends_on arch: :arm64

  app "Zed.app"
  binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed",
    "~/Library/Preferences/dev.zed.Zed.plist",
  ]
end
