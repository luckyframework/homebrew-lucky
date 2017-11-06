class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.6.2"
  sha256 "9c3dacd32f78a312cb7181f3c6ca5b8951d834ca1e639e7242f930dfbbba7136"
  version "0.6.2"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.6.2", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
