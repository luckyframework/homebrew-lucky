# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/archive/refs/tags/v1.4.1.zip"
  sha256 "5182ef001012142ff6623be25d09686c8da22a4088bdcc55795ba90d7489186d"
  head "https://github.com/luckyframework/lucky_cli.git", branch: "main"
  version "1.4.1"

  depends_on "crystal" => :build
  depends_on "git" => :build

  def install
    system "shards", "build", "lucky", "--without-development", "--no-debug", "--release"
    bin.install "./bin/lucky"
  end

  test do
    assert_equal "1.4.1", shell_output("#{bin}/lucky --version").strip
  end
end
