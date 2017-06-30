class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.3.2"
  sha256 "6d23abd4fa0bcc91d95b2c8074a059f78f9cd7e48385737eda52624280d2b180"
  version "0.3.2"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.3.2", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
