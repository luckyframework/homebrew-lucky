# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/archive/refs/tags/v1.1.0.zip"
  sha256 "39b4528feef22983e96c748591cc8102c6a5f315ce4c1f56e4c60b8e21af108e"
  head "https://github.com/luckyframework/lucky_cli.git", branch: "main"
  version "1.1.0"

  depends_on "crystal" => :build
  depends_on "git" => :build

  def install
    system "shards", "build", "lucky", "--without-development", "--no-debug", "--release"
    bin.install "./bin/lucky"
  end

  test do
    assert_equal "1.1.0", shell_output("#{bin}/lucky --version").strip
  end
end
