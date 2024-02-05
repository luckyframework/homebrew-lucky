# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/refs/tags/v1.1.0.zip"
  sha256 "3271ec34451670413f98cc075c9c0d463f5b45a2bfb8e120cc2e036402c684df"
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
