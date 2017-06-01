require "colorize"
require "lib/lucky_cli/src/lucky_cli/"

def run_command(command)
  Process.run command,
    shell: true,
    output: true,
    error: true
end

puts "Installing shards"
run_command "shards install"

puts "Building lucky cli"
run_command "crystal build --cross-compile --release lib/lucky_cli/src/lucky.cr"

puts "Done building"

puts "Here is the SHA for the lucky binary:"
run_command("shasum -a 256 lucky").colorize(:green)
