#!/usr/bin/env ruby
# Jesher Minelli <jesherdevsk8@gmail.com> - ter 16 ago 2022

require 'zip'

file_path   = "/home/jesher/Downloads/Desktop.zip"
destination = "/tmp/extract_zip"

def extract_zip(file, destination)
  FileUtils.mkdir_p(destination)

  Zip::File.open(file) do |zip_file|
    zip_file.each do |f|
      fpath = File.join(destination, f.name)
      zip_file.extract(f, fpath) unless File.exist?(fpath)
    end
  end
end

# Usage
#extract_zip(file_path, destination)
