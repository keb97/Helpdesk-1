class TicketMailer < ActionMailer::Base
   default from: "leandrat@rocketmail.com", to: "lmtejedor@gmail.com", reply_to: ENV["POSTMARK_INBOUND_ADDRESS"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.new_ticket.subject
  #
  def new_ticket(ticket)
    @ticket = ticket

    mail(subject: "Ticket:#{@ticket.id}- created")
  end

end
