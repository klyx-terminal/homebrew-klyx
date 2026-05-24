cask "klyx" do
  version "0.1.43"
  sha256 "02416b4d01dafdb3bda621c9b375cf6d1eaa6f3d4f13dd7fdb730a75be700a5f"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.43/Klyx-v0.1.43-arm64.zip"
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
