require "colorize"
require_relative "../lib/check.rb"

check = Check.new


lines = File.readlines("README.md")

lines.each_with_index do |line, index|
    index += 1
    if line =~ /^#/
        if check.check_head_length(line)
            puts "#{index}: [OK] Heading length is good".green
        else
            puts "#{index}: [ERROR] Heading length is not good".red
        end
    end
end