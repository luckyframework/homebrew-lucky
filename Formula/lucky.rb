class Lucky < Formula
  desc "Task runner for Crystal"
  homepage "http://github.com/luckyframework/tasks"
  url "https://github.com/luckyframework/tasks/releases/download/v0.1.0/lucky"
  # sha256 "cba961c3fa3c7c58a0b7dcd8ae063b65ebf0cc4437e104bfc368133e8c066d4f"
  version "0.1.0"
  depends_on "crystal-lang"

  def install
    bin.install "lucky"
  end

  test do
    system "{bin}/lucky", "--help"
  end
end
