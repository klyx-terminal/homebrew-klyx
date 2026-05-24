cask "klyx" do
  version "0.1.41"
  sha256 "cb7f22e0f28f2e384fd33861446247105fea6ccef436134673172f2ac3d5ef5d"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.41/Klyx-v0.1.41-arm64.zip"
  name "Klyx"
  desc "Minimal, opinionated terminal emulator"
  homepage "https://github.com/klyx-terminal/homebrew-klyx"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Klyx.app"
  binary "#{appdir}/Klyx.app/Contents/MacOS/klyx"

  zap trash: [
    "~/.klyx",
  ]
end
