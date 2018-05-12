class Lucky < Formula
  desc "Task runner and Lucky project initializer for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.9.2.tar.gz"
  sha256 "d58ce3559eb09a3cb65fec82873ceafac1bac5097480932fbc869726f1f6a25e"
  version "0.9.2"
  depends_on "crystal-lang"

  devel do
    url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.10.0-rc2.tar.gz"
    sha256 "3afe3f6a5d472286489615508affc5485622bcbe88fdcdeb6c4a8a8fb4278d84"
    version "0.10.0-rc2"
  end

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
