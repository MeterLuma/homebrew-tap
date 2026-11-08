cask "meterluma" do
  version "0.1.3"
  sha256 "0f07aaa77a1dda3911c213da156cc10abe02721a0540e2091d023594dba6ef6c"

  url "https://downloads.meterluma.com/#{version}/MeterLuma_#{version}_universal.dmg"
  name "MeterLuma"
  desc "Menu bar meter for AI coding tool allowances and reset times"
  homepage "https://meterluma.com/"

  livecheck do
    url "https://downloads.meterluma.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "MeterLuma.app"

  uninstall launchctl: "MeterLuma",
            quit:      "app.meterluma.desktop"

  zap trash: [
    "~/Library/Application Support/app.meterluma.desktop",
    "~/Library/Caches/app.meterluma.desktop",
    "~/Library/LaunchAgents/MeterLuma.plist",
    "~/Library/Preferences/app.meterluma.desktop.plist",
    "~/Library/WebKit/app.meterluma.desktop",
  ]

  caveats <<~EOS
    MeterLuma is not signed by Apple. The first time you open it, macOS says it
    cannot verify the developer. Open System Settings → Privacy & Security and
    choose Open Anyway next to the MeterLuma message.

    MeterLuma updates itself and asks before installing an update.
  EOS
end
