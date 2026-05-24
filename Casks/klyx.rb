cask "klyx" do
  version "0.1.45"
  sha256 "49aa6984c92b2e78023745932e7ade9b36f6a6990220d74fe7f47e897cb8e087"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.45/Klyx-v0.1.45-arm64.zip"
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
