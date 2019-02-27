class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.13.0.tar.gz"
  sha256 "f0495bed9de083acf27a556786ed6657cebf32fbfaa8140677ff978237a25a2d"
  version "0.13.0"
  depends_on "crystal-lang"

  def install
    system "mkdir lib"
    system "mv teeplate lib/"
    system "mv lucky_cli lib/"
    system "crystal build lib/lucky_cli/src/lucky.cr"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
