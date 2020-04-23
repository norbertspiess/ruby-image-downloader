require_relative 'helper/files_folders'
require_relative 'helper/download'


file_path = ARGV[0]
unless file_path
  raise ArgumentError, "Missing argument 1: path to file"
end

download_folder = "downloads/"
FilesFolders.create_if_not_exists download_folder

links = FilesFolders.read_unique_non_empty_lines file_path

Download.bulk(links, download_folder)
