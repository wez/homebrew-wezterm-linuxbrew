# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/master/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20210203-095643-70a364eb/WezTerm-20210203-095643-70a364eb-Ubuntu16.04.AppImage"
  sha256 "fbe935a505c2f0f6e4077fc30730f365dd19cc4b1b178f2a4075244b96f5fc77"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu16.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
