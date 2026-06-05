cask "klyx" do
  version "0.1.48"
  sha256 "ab90025446a7a78379526f3f4453dad8e53db46b5e73d5381099a19c008a9957"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.48/Klyx-v0.1.48-arm64.zip"
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
