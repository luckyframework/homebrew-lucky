class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.4.7"
  sha256 "d6c5e411013c6a8f31cfc5267221a57d7c8dd5eb653951e0175a5f5027871dde"
  version "0.4.7"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.4.7", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
