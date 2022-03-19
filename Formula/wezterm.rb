# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/main/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20220319-142410-0fcdea07/WezTerm-20220319-142410-0fcdea07-Ubuntu18.04.AppImage"
  sha256 "aefad841ced84bc9d80a3b9649ecd51c23876bb36235bae3dd51e9cfe6aee411"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu18.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
