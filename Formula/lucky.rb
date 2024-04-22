# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/archive/refs/tags/v1.2.0.zip"
  sha256 "6ae6e9b66e5928392575995bbf93b870b1dd9b15f8467323bb33e0bd98e8233c"
  head "https://github.com/luckyframework/lucky_cli.git", branch: "main"
  version "1.2.0"

  depends_on "crystal" => :build
  depends_on "git" => :build

  def install
    system "shards", "build", "lucky", "--without-development", "--no-debug", "--release"
    bin.install "./bin/lucky"
  end

  test do
    assert_equal "1.2.0", shell_output("#{bin}/lucky --version").strip
  end
end
