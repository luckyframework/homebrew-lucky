class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.5.0"
  sha256 "325933fccf09158c1ccd8a8e075d03aa6edbc9bd209804de7c4ba4fb5882ff15"
  version "0.5.0"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.5.0", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
