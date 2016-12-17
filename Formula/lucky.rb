class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/tasks"
  url "https://github.com/luckyframework/tasks/archive/v0.1.0.tar.gz"
  depends_on "crystal-lang"

  def install
    bin.install "lucky_cli"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
