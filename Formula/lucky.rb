class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.6.1"
  sha256 "2015ae7a5a2e5d5cd36ea6ac295f70ba200f2e6dce78ca39de9563f2967c1e34"
  version "0.6.1"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.6.1", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
