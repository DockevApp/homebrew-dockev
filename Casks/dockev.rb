cask "dockev" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "16269d2c73c69d65be0f350560b4ca2cfd2a9d19765d66eef05019ed9ac4fc64",
         intel: "388f0bf8c04a77cc394d5b18d30a6ddcb3432f2b3ceb05e041b4e1a498a4a9a5"

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
