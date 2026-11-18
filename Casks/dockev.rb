cask "dockev" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "85fd6802df3de7a257e35ad357df92e2d391926a0d28ddfaffbf2d15d77676e0",
         intel: "2ae8ea8feb453222a139190b4e823a09fe53faf2945bcf390ff8417b1a709822"

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
