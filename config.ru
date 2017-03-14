# frozen_string_literal: true
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'ruby_lang_bot'
require 'ruby_lang_bot/web'

Thread.abort_on_exception = true

Thread.new do
  begin
    RubyLangBot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run RubyLangBot::Web
