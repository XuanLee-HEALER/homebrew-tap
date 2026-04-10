cask "blowup" do
  version "2.0.7"
  sha256 "55808aed8b930bfec571e8fa37bc46d29c201c38bb7a44a5e530e9fb0396a2d0"

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
