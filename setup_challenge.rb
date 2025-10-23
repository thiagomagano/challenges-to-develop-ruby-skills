#!/usr/bin/env ruby

require 'fileutils'
require 'optparse'

# --- Configuration ---
# You can change these to match your preferred template names
BASE_FILE_NAME = "base.rb"
BASE_TEST_FILE_NAME = "base_test.rb"
# ---------------------

def setup_challenge(index, challenge_name)
  # 1. Define all the names and paths
  folder_name = index < 10 ? "ch0#{index}" : "ch#{index}"

  # Clean up the challenge_name to be safe for filenames
  # Replaces spaces with underscores and makes lowercase
  safe_name = challenge_name.downcase.gsub(/[\s-]+/, '_')

  new_file_name = "#{index}_#{safe_name}.rb"
  new_test_file_name = "#{index}_#{safe_name}_test.rb"

  dest_folder_path = File.join(Dir.pwd, folder_name)
  dest_file_path = File.join(dest_folder_path, new_file_name)
  dest_test_path = File.join(dest_folder_path, new_test_file_name)

  # 2. Safety Check: See if base files exist
  unless File.exist?(BASE_FILE_NAME) && File.exist?(BASE_TEST_FILE_NAME)
    STDERR.puts "Error: Base files '#{BASE_FILE_NAME}' or '#{BASE_TEST_FILE_NAME}' not found."
    STDERR.puts "Please make sure they are in the same directory as this script."
    exit(1)
  end

  # 3. Safety Check: See if destination folder already exists
  if File.exist?(dest_folder_path)
    STDERR.puts "Error: Folder '#{folder_name}' already exists."
    STDERR.puts "Please remove it or choose a different index."
    exit(1)
  end

  # 4. Create the folder and copy files
  begin
    FileUtils.mkdir_p(dest_folder_path)
    puts "Created folder: #{folder_name}"

    # 5. Copy and rename the base files
    FileUtils.cp(BASE_FILE_NAME, dest_file_path)
    puts "  -> Created file: #{new_file_name}"

    FileUtils.cp(BASE_TEST_FILE_NAME, dest_test_path)
    puts "  -> Created file: #{new_test_file_name}"

    puts "\nChallenge setup complete! Happy coding!"

  rescue StandardError => e
    STDERR.puts "\nAn unexpected error occurred: #{e.message}"
    # Attempt to clean up if folder was partially created
    if File.exist?(dest_folder_path)
      FileUtils.rm_rf(dest_folder_path)
      STDERR.puts "Cleaned up created folder: #{folder_name}"
    end
    exit(1)
  end
end

# --- Main execution ---

# Simple argument parsing from ARGV
if ARGV.length != 2
  puts "Usage: ruby setup_challenge.rb <index> \"<challenge-name>\""
  puts "Example: ruby setup_challenge.rb 1 \"String Reverser\""
  exit(1)
end

# Check if index is an integer
unless ARGV[0].match?(/^\d+$/)
  STDERR.puts "Error: Index must be an integer."
  puts "Example: ruby setup_challenge.rb 1 \"String Reverser\""
  exit(1)
end

index = ARGV[0].to_i
name = ARGV[1]

setup_challenge(index, name)
