#!/usr/bin/env ruby

require 'fileutils'

root_dir = ARGV[0]
unless root_dir
  puts "No Rails project directory specified"
  puts "Usage: ./undockerise <Rails_Root_Dir>"
  exit 0
end

FileUtils.rm_rf(File.join(root_dir, 'Dockerfile'))
FileUtils.rm_rf(File.join(root_dir, 'docker-compose.yml'))
FileUtils.rm_rf(File.join(root_dir, 'entrypoint.sh'))

FileUtils.cp('database-reset.yml', File.join(root_dir, 'config'))
FileUtils.mv(File.join(root_dir, 'config', 'database-reset.yml'),
             File.join(root_dir, 'config', 'database.yml'))

puts "Completed! Project at #{root_dir} has been undockerised."

