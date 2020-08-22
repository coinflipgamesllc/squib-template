require_relative './base'

deck = Squib.gsheet ':insert google sheet id here:'
Squib::Deck.new(cards: deck['name'].size, layout: ['layout/layout.yml']) do
  # hint text: :cyan
  safe_zone fill_color: :purple

  build :print do
    cut_zone stroke_color: '#888'
    save_pdf trim: 37.5, sprue: 'layout/poker.yml'
    #save_sheet columns: 10, rows: 7, trim: 37.5, prefix: 'tts_'
  end
end
