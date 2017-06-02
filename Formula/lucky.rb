class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.2.2"
  sha256 "5ca5633f1f11c901698b185f614d3c260a3b23021769038dc606c2abdd97332c"
  version "0.2.2"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.2.2", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
