cask "voxel-racer" do
  version "0.1.0"
  sha256 "00a495597d07eb938aafb2e33fdb3164c415936dbc144731b8b5a8b56bc3ab03"

  url "https://github.com/teddyfluffkins/voxel-racer/releases/download/v#{version}/voxel-racer-v#{version}-macos-unsigned.zip"
  name "Voxel Racer"
  desc "Small-voxel 3D driving parcours game"
  homepage "https://github.com/teddyfluffkins/voxel-racer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Voxel Racer.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Voxel Racer"

  caveats <<~EOS
    Voxel Racer is currently unsigned. On first launch, macOS may require
    you to allow it in System Settings > Privacy & Security.
  EOS
end
