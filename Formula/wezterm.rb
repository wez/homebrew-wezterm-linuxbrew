# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/main/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20220904-064125-9a6cee2b/WezTerm-20220904-064125-9a6cee2b-Ubuntu18.04.AppImage"
  sha256 "664d0c61f1ccc931b25eb12e4bcd844e28bc6c4084c199fa26788371196eeebc"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu18.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
