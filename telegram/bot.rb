#require File.expand_path('../config/environment', __dir__)

require 'telegram/bot'

token = "5203107867:AAEXwlAL-pmgK3sYFbV_6TucXpt_1OKxxX8"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
  #  p message
  #  return
   case message.text
   when '/start'
    bot.api.send_message(
      chat_id: message.chat.id,
      text: "Hello, #{message.from.first_name}"

   )
when '/hello'
    bot.api.send_message(
        chat_id: message.chat.id,
        text: "Hello, my friend"
    )
    end
  end
end
