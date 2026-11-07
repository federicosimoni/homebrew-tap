cask "thats-it" do
  version "0.5.1"
  sha256 "b34db282fa23cc7642027844ab3e97dd1adb22fd93c9eef90baeb318606b3a6c"

  url "https://github.com/federicosimoni/thats-it/releases/download/v#{version}/Thats-it-#{version}.dmg"
  name "That's it"
  desc "Drag & drop file converter for macOS"
  homepage "https://github.com/federicosimoni/thats-it"

  depends_on macos: :ventura

  app "That's it.app"

  zap trash: [
    "~/Library/Application Support/io.github.federicosimoni.thatsit",
    "~/Library/Logs/io.github.federicosimoni.thatsit",
    "~/Library/Preferences/io.github.federicosimoni.thatsit.plist",
  ]

  caveats <<~EOS
    That's it is not notarized by Apple yet. On first launch macOS will block it:
    open System Settings → Privacy & Security and click "Open Anyway", or run
      xattr -dr com.apple.quarantine "#{appdir}/That's it.app"
    Video and MP3 conversions need ffmpeg:  brew install ffmpeg
  EOS
end
