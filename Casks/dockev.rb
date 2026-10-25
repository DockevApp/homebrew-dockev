cask "dockev" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "529e8596886130b6b0fe4c126adef9cc728df2c6e5e35224288b544cf07f8105",
         intel: "540285db08752bca246f5c34ffc3fc95c82951f2fd3c7701c3040cb8c4000425"

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
