class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.27.0.tar.gz"
  sha256 "e3ffb19c17c884e30e2c29892c7dc981ed5ad53ddcd0129f3c7583344751b62f"
  version "0.27.0"
  depends_on "crystal"

  def install
    system "mkdir lib"
    system "mv future lib/"
    system "mv teeplate lib/"
    system "mv lucky_cli lib/"
    system "crystal build lib/lucky_cli/src/lucky.cr"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "-v"
  end
end
