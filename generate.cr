require "colorize"
require "ecr/macros"
require "./lib/lucky_cli/src/lucky_cli/version"

class LuckyRelease
  def self.generate
    new.generate
  end

  def generate
    puts "Building lucky cli"
    run_command "crystal build --release lib/lucky_cli/src/lucky.cr"
    run_command "mv lucky built_binaries/#{binary_name}"

    puts "Writing new formula"
    generate_new_formula

    puts "All done!".colorize(:green)
  end

  private def generate_new_formula
    formula = String.build do |formula|
      ECR.embed "./Formula/lucky.rb.ecr", formula
    end

    File.write("./Formula/lucky.rb", formula)
  end

  private def binary_name
    "lucky-#{version}"
  end

  private def url
    "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/#{binary_name}"
  end

  private def binary_sha
    extract_sha get_result_from("shasum -a 256 built_binaries/#{binary_name}")
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
