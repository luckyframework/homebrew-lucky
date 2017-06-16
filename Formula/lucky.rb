class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.3.1"
  sha256 "54310e9e762eaa4a83eee4aa0e0dfc4a9087523c315c31abffaa4c5f33d05d6c"
  version "0.3.1"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.3.1", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
