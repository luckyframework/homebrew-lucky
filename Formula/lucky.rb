class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-0.3.5"
  sha256 "f032b60c11f2b937ce7a9f3225d78daa8ed10d60b7626c63485389374f473705"
  version "0.3.5"
  depends_on "crystal-lang"

  def install
    system "mv", "lucky-0.3.5", "lucky"
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
