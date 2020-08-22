require 'mechanize'
require 'squib'

module Squib
  def gsheet(sheet_id, index=0)
    agent = Mechanize.new
    response = agent.get_file("https://docs.google.com/spreadsheets/d/e/#{sheet_id}/pub?gid=#{index}&output=csv")
    response = response.encode("ascii-8bit").force_encoding("utf-8")

    return Squib.csv data: response
  end
  module_function :gsheet
end

class String
  def slug
    downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end
