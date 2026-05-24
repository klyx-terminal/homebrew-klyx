cask "klyx" do
  version "0.1.46"
  sha256 "11ff05f69e122d7f838c81501c5775d950ea255e1d57ca243115e79fbf30035a"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.46/Klyx-v0.1.46-arm64.zip"
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
