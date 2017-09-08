class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.4.2"
  sha256 "c1bbc420c369ec5e7b1d1a1c122222e286cba51db92533d3c5fe91f23b19275f"
  version "0.4.2"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.4.2", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
