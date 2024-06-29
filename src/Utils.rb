#!/usr/bin/env ruby

# Clear the screen
def clear_screen
  system 'clear' or system 'cls'
end

# Wait for a key press
def wait_key
  print 'Press any key to continue...'
  gets
end

# Wait for a key press and clear the screen
def wait_clear
  wait_key
  clear_screen
end

# Wait for a key press and exit
def wait_exit
  wait_key
  exit
end

# Throw an error message
def throw_error(msg)
  puts "Error: #{msg}"
  wait_exit
end

# Throw a warning message
def throw_warning(msg)
  puts "Warning: #{msg}"
  wait_key
end

# Throw an information message
def throw_info(msg)
  puts "Info: #{msg}"
  wait_key
end
