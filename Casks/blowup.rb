cask "blowup" do
  version "2.0.5"
  sha256 "117973dc203f80d9e51f919c24941353f6788445600f19100b4955ccde73c583"

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
