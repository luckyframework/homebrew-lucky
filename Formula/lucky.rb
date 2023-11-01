class Lucky < Formula
  desc "CLI installer for Lucky Framework"
  homepage "https://github.com/luckyframework/lucky_cli"
  url "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/tarballs/lucky-1.1.0.tar.gz"
  sha256 "6fad3305c5d842a2a4efe59d8f9e51ec1ebf38e4ac7633dbcc88c8b855cd5be2"
  version "1.1.0"
  depends_on "crystal"

  def install
    system "mkdir lib"
    system "mv nox lib/"
    system "mv lucky_template lib/"
    system "mv lucky_task lib/"
    system "mv lucky_cli lib/"
    system "crystal build lib/lucky_cli/src/lucky.cr"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "-v"
  end
end
