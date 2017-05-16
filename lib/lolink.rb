require 'http'
require 'open-uri'
require 'nokogiri'
require 'lolink/version'

class Lolink
  attr_accessor :versions
  def initialize(v=nil)
    @base_url = "http://down.qq.com/lol"
    if v
      self.versions = v
    else
      parse_version
    end
  end

  def version
    @version ||= @versions.split('-').last
  end

  def parse_version
    @doc = Nokogiri::HTML(open("http://lol.qq.com/download.shtml"))

    link = @doc.search('.downlst.fl a#xzq').first.attr('href')

    @versions = link.match(/(V.+-V.+)_PATCH/)[1]
  end

  def test_link
    i = 0
    links = []
    loop do
      i+=1
      link = yield('%.3d' % i)
      if HTTP.follow.head(link).code == 404
        break
      else
        links << link
      end
    end
    links
  end

  def version_number
    version.gsub /[^\d]/, ''
  end

  def full_links
    files = ["http://dlied1.qq.com/lol/full/#{version_number}/LOL_#{version}_FULL.exe"]

    files += test_link do |i|
      "http://dlied1.qq.com/lol/full/#{version_number}/LOL_#{version}_FULL.7z.#{i}"
    end
  end

  def patch_links
    files = ["#{@base_url}/patch/#{version_number}/LOL_#{versions}_PATCH.exe"]

    files += test_link do |i|
      "#{@base_url}/patch/#{version_number}/LOL_#{version}_PATCH.7z.#{i}"
    end
  end

  def self.aria2(links)
    system "aria2c -Z #{links.join(' ')}"
  end
end
