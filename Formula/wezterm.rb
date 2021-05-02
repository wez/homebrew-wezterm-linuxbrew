# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/main/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20210502-154244-3f7122cb/WezTerm-20210502-154244-3f7122cb-Ubuntu16.04.AppImage"
  sha256 "e8ea235bf4130fd85d3ab6488a578e0c45dffee8aee5968331e14b5c1057a957"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu16.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
