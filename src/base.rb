require 'mechanize'
require 'squib'

module Squib
  def gsheet(sheet_id)
    agent = Mechanize.new
    response = agent.get_file("https://docs.google.com/spreadsheets/d/e/#{sheet_id}/pub?gid=979141889&single=true&output=csv")

    return Squib.csv data: response
  end
  module_function :gsheet
end

class String
  def slug
    downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end
