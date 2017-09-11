class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.4.4"
  sha256 "a30b20656ebbc8d2b855682fb0b50efff2b37ffc260f4fe505e388181fecbc63"
  version "0.4.4"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.4.4", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
