class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.7.1"
  sha256 "1f851c0f2cf82fb191bafc26cf95a753970e49f61fe9d2726ba463dc9f54a839"
  version "0.7.1"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.7.1", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
