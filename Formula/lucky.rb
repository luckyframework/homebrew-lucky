class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-1.0.0-rc1.tar.gz"
  sha256 "f3d3cb3f65c0345e79c6e0ddf2b7b6e91c3683b11eeb472cdad1624aefe361af"
  version "1.0.0-rc1"
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
