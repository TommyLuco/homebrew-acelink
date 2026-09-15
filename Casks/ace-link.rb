cask "ace-link" do
  version "2.1.0"
  sha256 "778e122a739c53aba5e5a8715b630b287089ef89870064a0345c0ee526d44886"

  url "https://github.com/blaise-io/acelink/releases/download/#{version}/Ace.Link.#{version}.dmg"
  name "Ace Link"
  desc "Menu bar app for playing Ace Stream video streams in an external media player"
  homepage "https://github.com/TommyLuco/acelink"

  depends_on cask: "docker-desktop"
  depends_on :macos

  app "Ace Link.app"

  # Strip quarantine so the intentionally-unsigned app launches without Gatekeeper prompts.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Ace Link.app"],
                   sudo: false
  end

  uninstall quit: "blaise.io.acelink"

  zap trash: "~/Library/Application Support/Ace Link"
end
