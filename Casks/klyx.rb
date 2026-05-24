cask "klyx" do
  version "0.1.42"
  sha256 "917fcadde52f0c4f309ffcb3e10e9545de4553c0f8097e0eb78b6a48b3adb2a4"

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
