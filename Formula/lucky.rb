class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.2.1"
  sha256 "bc617d6405c9d0aed58a147c11e82da90fdcc0e1008e15e06389cbbd68b7c041"
  version "0.2.1"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.2.1", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
