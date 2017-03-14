# frozen_string_literal: true
module RubyLangBot
  class Bot < SlackRubyBot::Bot
    match /bugs? ?#(?<num>\d*)/i do |client, data, match|
      client.say channel: data.channel, text: "https://bugs.ruby-lang.org/issues/#{match[:num]}"
    end
  end
end
