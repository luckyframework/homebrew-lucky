class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.6.0"
  sha256 "c824fd696e0f97921cf4eb38b311e052bdf3abce0a4bdd102e27f613aa151ada"
  version "0.6.0"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.6.0", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
