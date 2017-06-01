class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.1.0"
  sha256 "c36a67d7b8722ac211bcf6d2ce960490730b6a1939e9da610350684bc79b1c9e"
  version "0.1.0"
  depends_on "crystal-lang"

  def install
    bin.install "lucky-#{version}"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
