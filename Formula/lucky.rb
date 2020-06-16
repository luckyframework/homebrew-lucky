class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.22.0.tar.gz"
  sha256 "aaa5fbd9df0253c4320d7c3d9665a4999980d1e1c8983c6da22b28b0dd48b242"
  version "0.22.0"
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
