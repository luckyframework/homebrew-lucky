class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.2.1"
  sha256 "06409e051e9f4fa9d52d0d2c22d43e9edf835c0637c3833c4345b904abc426b4"
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
