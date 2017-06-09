class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.3.0"
  sha256 "cc2c2559e2af3a87308baa32645fc2a93d5d09f5b6b88cb3fe59924ceee74d63"
  version "0.3.0"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.3.0", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
