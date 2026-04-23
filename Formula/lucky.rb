# `brew install luckyframework/homebrew-lucky/lucky`
class Lucky < Formula
  desc "A Crystal command-line tool for generating new Lucky Web Applications"
  homepage "https://github.com/luckyframework/lucky_cli"
  license "MIT"
  url "https://github.com/luckyframework/lucky_cli/archive/refs/tags/v1.5.0.zip"
  sha256 "b970d6a6a8a515ebe1a77ad732b7171531b31b2ac80e2f07cd3bcecb8e1c7612"
  head "https://github.com/luckyframework/lucky_cli.git", branch: "main"
  version "1.5.0"

  depends_on "crystal" => :build
  depends_on "git" => :build

  def install
    system "shards", "build", "lucky", "--without-development", "--no-debug", "--release"
    bin.install "./bin/lucky"
  end

  test do
    assert_equal "1.5.0", shell_output("#{bin}/lucky --version").strip
  end
end
