class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.3.4"
  sha256 "22df67ff500cfbc764ea0c595eed8494377cbc2be6b6aeb5bc0c7532fea279c9"
  version "0.3.4"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.3.4", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
