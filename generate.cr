require "colorize"
require "ecr/macros"
require "./lib/lucky_cli/src/lucky_cli/version"

class LuckyRelease
  def self.generate
    new.generate
  end

  def generate
    puts "Installing shards"
    run_command "shards install"
    run_command "shards update"

    puts "Building lucky cli"
    run_command "crystal build --release lib/lucky_cli/src/lucky.cr"
    run_command "mv lucky built_binaries/lucky-#{version}"

    puts "Writing new formula"
    generate_new_formula(binary_sha)

    puts "All done!".colorize(:green)
  end

  private def generate_new_formula(sha)
    formula = String.build do |formula|
      ECR.embed "./Formula/lucky.rb.ecr", formula
    end

    File.write("./Formula/lucky.rb", formula)
  end

  private def url
    "https://github.com/luckyframework/homebrew-lucky/raw/master/built_binaries/lucky-#{version}"
  end

  private def binary_sha
    extract_sha run_command("shasum -a 256 built_binaries/lucky-#{version}")
  end

  private def version
    LuckyCli::VERSION
  end

  private def run_command(command)
    result = IO::Memory.new
    Process.run command,
      shell: true,
      output: result,
      error: true
    result.to_s
  end

  private def extract_sha(result)
    result.split("  ").first
  end
end

LuckyRelease.generate
