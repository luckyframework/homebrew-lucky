# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/archive/refs/tags/v1.1.1.zip"
  sha256 "a5a1f67f94081794467a28e2838fa47fce0fd6abdde482627a8c67f302ba77a3"
  head "https://github.com/luckyframework/lucky_cli.git", branch: "main"
  version "1.1.1"

  depends_on "crystal" => :build
  depends_on "git" => :build

  def install
    system "shards", "build", "lucky", "--without-development", "--no-debug", "--release"
    bin.install "./bin/lucky"
  end

  test do
    assert_equal "1.1.1", shell_output("#{bin}/lucky --version").strip
  end
end
