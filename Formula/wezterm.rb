class Wezterm < Formula
  desc "A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust"
  homepage "https://wezfurlong.org/wezterm/"
  url "https://github.com/wez/wezterm/releases/download/20200620-160318-e00b076c/WezTerm-20200620-160318-e00b076c-Ubuntu16.04.AppImage"
  sha256 "0ece46be9eb80b29cfea48331bf41823c7bce0eb06be978605e744a9e9fac78f"
  head "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu16.04.AppImage"

  def install
    Dir.glob("*.AppImage").each do |img|
      bin.install img => "wezterm"
    end
  end
end
