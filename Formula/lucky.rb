class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-1.0.0.tar.gz"
  sha256 "21fb34252672733f8f51e3370ee8b13a6ece1de09d176a6c80f7a92192a05a0a"
  version "1.0.0"
  depends_on "crystal"

  def install
    system "mkdir lib"
    system "mv nox lib/"
    system "mv teeplate lib/"
    system "mv lucky_task lib/"
    system "mv lucky_cli lib/"
    system "crystal build lib/lucky_cli/src/lucky.cr"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "-v"
  end
end
