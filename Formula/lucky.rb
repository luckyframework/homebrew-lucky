class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-0.30.0.tar.gz"
  sha256 "37d7f7dfa89b82eabd671148e4af0508b5b0fef56da2a19b7e7b0514a68e3c9c"
  version "0.30.0"
  depends_on "crystal"

  def install
    system "mkdir lib"
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
