require 'open-uri'
require_relative 'url'

module Download
  extend self

  def bulk(links, folder)
    links.each do |link|
      single(link, folder)
    end
  end

  def single(link, folder)
    unless Url.valid?(link)
      puts "invalid url '#{link}'. skip."
      return
    end

    file_name = link.split(/\//).last

    puts "downloading from #{link} into #{folder}#{file_name}"
    open("#{folder}/#{file_name}", 'wb') do |file|
      file << open(link).read
    end
  end

end

