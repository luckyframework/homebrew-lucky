class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.11.0.tar.gz"
  sha256 "ebacb4e9e0e4013e25a6debdeefae6c7fe8bae1d3d3b54b6fdd1a169b4d140dc"
  version "0.11.0"
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
