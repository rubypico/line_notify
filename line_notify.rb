def line_notify(message, token)
  Browser.post(
    "https://notify-api.line.me/api/notify",
    header: { "Authorization" => "Bearer #{token}" },
    body: { message: message }
  )
end

def line_shell(token)
  loop do
    message = prompt
    puts line_notify(message, token)
  end
end
