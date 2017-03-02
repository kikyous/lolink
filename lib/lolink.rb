require 'http'
require 'open-uri'
require 'nokogiri'

class Lolink
  def initialize
    @doc = Nokogiri::HTML(open("http://lol.qq.com/download.shtml"))
  end

  def patch_links
    link = @doc.search('.downlst.fl a#xzq').first.attr('href')

    update = link.match(/(V.+-V.+)_PATCH/)[1]

    version = update.split('-').last

    files = ["LOL_#{update}_PATCH.exe"]

    1.upto(4) do |i|
      files << "LOL_#{version}_PATCH.7z.#{'%.3d' % i}"
    end

    links = []

    files.map do |file|
      link = "http://down.qq.com/lol/patch/#{file}"
      links << link if HTTP.follow.head(link).code != 404
    end
    links
  end

  def self.aria2(links)
    system "aria2c -Z #{links.join(' ')}"
  end
end
