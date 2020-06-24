class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/tarballs/lucky-0.22.1.tar.gz"
  sha256 "214c8ad433d6d8f8320ed9d9d8d61deac4b6ce64704f1a3ff00d7e94c091d07f"
  version "0.22.1"
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
