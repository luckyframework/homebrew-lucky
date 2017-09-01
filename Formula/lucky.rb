class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.4.1"
  sha256 "6fcf77216deb789ce711a2b8ab37fc55cd489568fd2fe106bdec686603bc87ae"
  version "0.4.1"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.4.1", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
