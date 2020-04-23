require 'open-uri'
require_relative 'url'

module Downloader
  extend self

  def bulk_download(links, folder)
    links.each do |link|
      single_download(link, folder)
    end
  end

  def single_download(link, folder)
    unless Url.valid?(link)
      puts "invalid url '#{link}'. skip."
      return
    end

    file_name = link.split(/\//).last

    puts "downloading from #{link} into #{folder}#{file_name}"
    begin
      open("#{folder}/#{file_name}", 'wb') do |file|
        file << open(link).read
      end
    rescue StandardError => e # what's the more specific error here?
      puts "invalid url '#{link}': #{e.to_s}"
    end
  end

end

