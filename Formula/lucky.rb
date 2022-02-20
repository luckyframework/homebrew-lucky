class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/main/tarballs/lucky-0.29.0.tar.gz"
  sha256 "0e2e52f051d1d461991a340635806440f0630a960bc17005ce00fa2ac03a6146"
  version "0.29.0"
  depends_on "crystal"

  def install
    system "mkdir lib"
    system "mv future lib/"
    system "mv teeplate lib/"
    system "mv lucky_task lib/"
    system "mv lucky_cli lib/"
    system "crystal build lib/lucky_cli/src/lucky.cr"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "-v"
  end
end
