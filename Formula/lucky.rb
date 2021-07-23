class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.28.0.tar.gz"
  sha256 "011053c5ddbaa64eb7b0046353cf2b4602c4cbdd533d91e5a5e4035eeb2f4b7d"
  version "0.28.0"
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
