class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20200517-122836-92c201c6/WezTerm-20200517-122836-92c201c6-Ubuntu16.04.AppImage"
  sha256 "dc53150749ef5e122270ac3ad194a055b614d92cb719cba0faed3e30e9e9e2da"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
