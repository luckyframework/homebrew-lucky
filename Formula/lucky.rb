class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.18.3.tar.gz"
  sha256 "895eb5ba5192d1e9dfd5f1a20d3e9982ac295bff8f741fec53d47ae125418b10"
  version "0.18.3"
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
