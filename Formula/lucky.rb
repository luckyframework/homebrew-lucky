class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.2.1"
  sha256 "ff5b6782ca784aa543a14b90292514563936a402161f612917571d0f286a5d72"
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
