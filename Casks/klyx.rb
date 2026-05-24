cask "klyx" do
  version "0.1.44"
  sha256 "592f38749c37d143c4fb8070d243c22476819bba2414ff3c92bbfcbbcc594bd4"

  url "https://github.com/klyx-terminal/homebrew-klyx/releases/download/v0.1.44/Klyx-v0.1.44-arm64.zip"
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
