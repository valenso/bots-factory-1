require 'telegram/bot'

token = "998081124:AAHeQETY4IBjToum6iUSxam0R_-3QwA_BM0"

Telegram::Bot::Client.run(token) do |bot|
   bot.listen do |message|
     text = ["😂","😎","🥳"].sample
     bot.api.send_message(chat_id: message.chat.id, text: text)
   end
end