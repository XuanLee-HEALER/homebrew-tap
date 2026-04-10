cask "blowup" do
  version "2.0.6"
  sha256 "0aeacd01e912e3ebdfcbf10df1fe212705a0b08d28c7ea415fa5d7a70b415c95"

  url "https://github.com/XuanLee-HEALER/blowup/releases/download/v#{version}/blowup_#{version}_aarch64.dmg"
  name "blowup"
  desc "Desktop app for film discovery, download, subtitle management, and knowledge base"
  homepage "https://github.com/XuanLee-HEALER/blowup"

  depends_on macos: ">= :ventura"

  app "blowup.app"

  zap trash: [
    "~/Library/Application Support/io.github.xuanlee-healer.blowup",
    "~/Library/Caches/io.github.xuanlee-healer.blowup",
  ]
end
