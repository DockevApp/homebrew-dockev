cask "dockev" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:   "75f5403a0445613d54bf7038d2e3cba63d17e6862c61302ca8ea82aceb5dc4e6",
         intel: "569f2fb7509b4d05c3deb4705190abde2d31921f83f3642921f919b4911048c8"

  url "https://github.com/DockevApp/Dockev/releases/download/v#{version}/Dockev_#{version}_mac_#{arch}.dmg"
  name "Dockev"
  desc "Desktop app for Docker containers, images, volumes and Compose stacks"
  homepage "https://github.com/DockevApp/Dockev"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Dockev updates itself; `brew upgrade` leaves it alone unless --greedy.
  auto_updates true
  depends_on :macos

  app "Dockev.app"

  zap trash: [
    "~/Library/Application Support/com.nacasha.dockev",
    "~/Library/Application Support/dockev",
    "~/Library/Caches/com.nacasha.dockev",
    "~/Library/Logs/com.nacasha.dockev",
    "~/Library/Preferences/com.nacasha.dockev.plist",
    "~/Library/Saved Application State/com.nacasha.dockev.savedState",
    "~/Library/WebKit/com.nacasha.dockev",
  ]
end
