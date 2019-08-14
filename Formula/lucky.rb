class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.17.0.tar.gz"
  sha256 "f004d8ae1beb39be8cef5234a04c47c3f32c0a1571314f718149f31d60e592ce"
  version "0.17.0"
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
