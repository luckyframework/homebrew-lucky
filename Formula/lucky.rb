class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.2.0"
  sha256 "54a76bdb8ec7186c49aeaccd51966d01d17af27eca5af19e0c33bc71b90a9b3e"
  version "0.2.0"
  depends_on "crystal-lang"

  def install
    bin.install "lucky-0.2.0"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
