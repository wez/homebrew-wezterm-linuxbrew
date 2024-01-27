# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/main/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20240127-113634-bbcac864/WezTerm-20240127-113634-bbcac864-Ubuntu20.04.AppImage"
  sha256 "7f82ad42c5cef36a0a49696c491ac80ecce52bd91b25a7e44a7ce51263a2dc29"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu20.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
