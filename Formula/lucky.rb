class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-0.30.0.tar.gz"
  sha256 "609188dc195ac0611bef1bdada626231795f4872dada27d2e7c366ae7a5a6285"
  version "0.30.0"
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
