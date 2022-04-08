class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-0.30.0.tar.gz"
  sha256 "e7563eada76ffcc1cf1845f5c5a70fa274a494e66df3c1e0fef85342721cd71f"
  version "0.30.0"
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
