class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky"
  sha256 "695cc617e9768ac9a69d908130f461cc678dfe06255ed7e56901991f98d9ba6d"
  version "0.2.0"
  depends_on "crystal-lang"

  def install
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
