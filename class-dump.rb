class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files."
  homepage "http://stevenygard.com/projects/class-dump"
  url "https://github.com/nygard/class-dump/archive/3.5.tar.gz"
  sha256 "94f5286c657dca02dbed4514b2dbd791b42ecef5122e3945a855caf8d1f65e64"

  depends_on :xcode => :build

  def install
    system "xcodebuild", "-configuration",
                          "Release",
                          "SYMROOT=build",
                          "PREFIX=#{prefix}",
                          "ONLY_ACTIVE_ARCH=NO",
                          "OTHER_CFLAGS=-I/usr/local/opt/openssl/include",
                          "OTHER_LDFLAGS=-L/usr/local/opt/openssl/lib"
    bin.install "build/Release/class-dump"
  end

  test do
    system "true"
  end
end