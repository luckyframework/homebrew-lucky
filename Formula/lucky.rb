class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-1.1.0.tar.gz"
  sha256 "8ecc09bbccd04b4041f4ebaf672888eaf2548752aa8e7dd2ac1443650443cb46"
  version "1.1.0"
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
