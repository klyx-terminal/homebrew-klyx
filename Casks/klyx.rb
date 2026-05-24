cask "klyx" do
  version "0.1.42"
  sha256 "11cf87ada095d6162957838a87337852dac8beddf4848e6a37ddeda696525c97"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.42/Klyx-v0.1.42-arm64.zip"
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
