class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.8.1"
  sha256 "2e301f1a6d4b079722f0f6d5a3d32b2c53cba1f371f141839857249fd4531b7b"
  version "0.8.1"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.8.1", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
