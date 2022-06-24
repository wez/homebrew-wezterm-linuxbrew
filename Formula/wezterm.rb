# Note: if you are viewing this from the tap repo, this file is automatically
# updated from:
# https://github.com/wez/wezterm/blob/main/ci/wezterm-linuxbrew.rb.template
# by automation in the wezterm repo.
class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20220624-141144-bd1b7c5d/WezTerm-20220624-141144-bd1b7c5d-Ubuntu18.04.AppImage"
  sha256 "4de3cd65b7d7ae0c72a691597bd3def57c65f07fe4a7c98b447b8a9dc4d0adf0"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu18.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
