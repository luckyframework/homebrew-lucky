# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/archive/refs/tags/v1.3.0.zip"
  sha256 "cc9e02da676fa1aec601862fb1e6b65b8a44d2f68df2ecebdce4a5a2a76ef8c7"
  head "https://github.com/luckyframework/lucky_cli.git", branch: "main"
  version "1.3.0"

  depends_on "crystal" => :build
  depends_on "git" => :build

  def install
    system "shards", "build", "lucky", "--without-development", "--no-debug", "--release"
    bin.install "./bin/lucky"
  end

  test do
    assert_equal "1.3.0", shell_output("#{bin}/lucky --version").strip
  end
end
