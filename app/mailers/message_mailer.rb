class MessageMailer < ApplicationMailer
  default from: "krec.kiran@gmail.com"
  default to: "krec.kiran@gmail.com"

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.name}"
  end
end
