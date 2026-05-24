cask "klyx" do
  version "0.1.41"
  sha256 "d5f05b129e69fdcc49cbd5ab29eeeb4ab9b636616be71f00577e690f9f2c6f96"

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
