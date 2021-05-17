#!/usr/bin/env ruby

require 'fileutils'

root_dir = ARGV[0]
unless root_dir
  puts "No Rails project directory specified"
  puts "Usage: ./dockerise <Rails_Root_Dir>"
  exit 0
end

FileUtils.cp('Dockerfile', root_dir)
FileUtils.cp('docker-compose.yml', root_dir)
FileUtils.cp('entrypoint.sh', root_dir)

FileUtils.cp('database.yml', File.join(root_dir, 'config'))

puts "Completed! Project at #{root_dir} has been dockerised."

