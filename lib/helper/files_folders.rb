require 'fileutils'

module FilesFolders
  extend self

  def create_if_not_exists(folder)
    FileUtils.mkdir_p(File.absolute_path(folder))
  end

  def read_unique_non_empty_lines(file)
    puts "reading lines of file #{file}"
    File.readlines(file)
        .map { |line| line.strip }
        .filter { |line| !line.empty? }
        .uniq
  end
end
