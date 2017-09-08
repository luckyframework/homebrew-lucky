class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.4.3"
  sha256 "998137fb45669037a8422c9dd2bf1fec110008be6fbe7819263e51e2c22f496f"
  version "0.4.3"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.4.3", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
