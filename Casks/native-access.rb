cask "native-access" do
  version "1.14.1.156"
  sha256 "0fa0d9cd4b24a498cd2327559bc0bb643fba09192ed6639ba0965cc92f76f696"

  url "https://www.native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg"
  name "native-access"
  desc "Software controller for Native Instruments applications"
  homepage "https://native-instruments.com/"

  livecheck do
    url "https://www.native-instruments.com/en/support/downloads/"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Native Access.app"

  uninstall quit: "Native Access"
end