class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.8.3"
  sha256 "d8eacc85f1e4a0fe03a62a2b0910ac0c20650ceeb3be3f634fab68a15c6e1063"
  version "0.8.3"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.8.3", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
