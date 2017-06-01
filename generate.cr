def run_command(command)
  Process.run command,
    shell: true,
    output: true,
    error: true
end

puts "Installing shards"
run_command "shards install"

puts "Building lucky cli"
run_command "crystal build --release lib/lucky_cli/src/lucky.cr"

puts "Done building"
