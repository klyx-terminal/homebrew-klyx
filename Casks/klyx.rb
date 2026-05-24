cask "klyx" do
  version "0.1.47"
  sha256 "5808f17d28e7db0748b23671bd58e4a85dd19ecb43aa9dd9bea7db1392fe4756"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.47/Klyx-v0.1.47-arm64.zip"
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
