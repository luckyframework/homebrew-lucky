require "colorize"
require "./lib/lucky_cli/src/lucky_cli/version"

version = LuckyCli::VERSION

def run_command(command)
  result = IO::Memory.new
  Process.run command,
    shell: true,
    output: result,
    error: true
  result
end

puts "Installing shards"
run_command "shards install"

puts "Building lucky cli"
run_command "crystal build --release lib/lucky_cli/src/lucky.cr"
run_command "mv lucky built_binaries/lucky-#{version}"

puts "Done building"

puts "Here is the SHA for the lucky binary:"
result = run_command "shasum -a 256 built_binaries/lucky-#{version}"

puts result.to_s.split("  ").first.colorize(:green)
