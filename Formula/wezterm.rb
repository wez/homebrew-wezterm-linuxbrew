# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/master/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20200718-095447-d2315640/WezTerm-20200718-095447-d2315640-Ubuntu16.04.AppImage"
  sha256 "a529c9ed18801bde73aa9c8871bcd213c0c72bbffcc382f988249dcb58fca648"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu16.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
