cask "blowup" do
  version "2.1.1"
  sha256 "081a900f24cdd57bb811a0496edace3dca482fdf869b72e701d2c48cbb1b2dc6"

  url "https://github.com/XuanLee-HEALER/blowup/releases/download/v#{version}/blowup_#{version}_aarch64.dmg"
  name "blowup"
  desc "Desktop app for film discovery, download, subtitle management, and knowledge base"
  homepage "https://github.com/XuanLee-HEALER/blowup"

  depends_on macos: ">= :ventura"

  app "blowup.app"

  # blowup is not code-signed or notarized, so the DMG carries
  # the com.apple.quarantine xattr. Gatekeeper then blocks the
  # first launch with "damaged / cannot be opened". Strip the
  # attribute after install so the app opens cleanly.
  postflight do
    system_command "/usr/bin/xattr",
         args: ["-rd", "com.apple.quarantine", "#{appdir}/blowup.app"],
         must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/io.github.xuanlee-healer.blowup",
    "~/Library/Caches/io.github.xuanlee-healer.blowup",
  ]
end
