module Emoji
  CHARACTERS = {
    bar_chart: "\u{1F4CA}",
    trophy: "\u{1F3C6}"
  }

  def self.[](character_name)
    CHARACTERS.fetch(character_name)
  end
end
