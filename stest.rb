require "formula"

class Stest < Formula
  homepage "http://tools.suckless.org/dmenu"
  url "http://git.suckless.org/dmenu/snapshot/dmenu-4.6.tar.gz"
  head "http://git.suckless.org/dmenu", :using => :git
  sha256 "5dfe25762109814ecdd0929308707567ceee69a86e79e9faafaf5d4836930319"

  def install
    system "#{ENV.cc} #{ENV.cflags} -o stest stest.c"
    bin.install "stest"
    man1.install "stest.1"
  end
end
