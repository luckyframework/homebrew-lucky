require "colorize"
require "ecr/macros"
require "./lib/lucky_cli/src/lucky_cli/version"

class LuckyRelease
  def self.generate
    new.generate
  end

  def generate
    generate_tarball

    puts "Writing new formula"
    generate_new_formula

    puts "All done!".colorize(:green)
  end

  private def generate_tarball
    run_command "tar -czf #{tarball_path} lib"
  end

  private def generate_new_formula
    formula = String.build do |formula|
      ECR.embed "./Formula/lucky.rb.ecr", formula
    end

    File.write("./Formula/lucky.rb", formula)
  end

  def tarball_path
    "tarballs/lucky-#{version}.tar.gz"
  end

  private def url
    "https://raw.githubusercontent.com/luckyframework/homebrew-lucky/main/#{tarball_path}"
  end

  private def binary_sha
    extract_sha get_result_from("shasum -a 256 #{tarball_path}")
  end

  private def version
    LuckyCli::VERSION
  end

  private def run_command(command)
    Process.run command,
      shell: true,
      output: STDOUT,
      error: STDERR
  end

  private def get_result_from(command)
    result = IO::Memory.new
    Process.run command,
      shell: true,
      output: result,
      error: STDERR
    result.to_s
  end

  private def extract_sha(result)
    result.split(" ").first
  end
end

LuckyRelease.generate
