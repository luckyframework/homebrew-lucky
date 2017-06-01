class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/cli"
  url "https://github.com/luckyframework/cli/releases/download/v0.1.0/lucky"
  sha256 "0bd585ad02a3705b500bfb424395fb6e2332485e2d3207dabbbd7e0ace57e4c1"
  version "0.1.0"
  depends_on "crystal-lang"

  def install
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
