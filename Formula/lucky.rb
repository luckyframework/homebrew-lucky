class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.2.1"
  sha256 "a931527758dde879b01b428a8a59cf2d6c174b1d9b9445d737053a75c0071068"
  version "0.2.1"
  depends_on "crystal-lang"

  def install
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
