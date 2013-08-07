class UpdateMailer < ActionMailer::Base
  default from: "helpdesk@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.update_mailer.ticket_update.subject
  #
  def ticket_update(ticket)
    @ticket = ticket

     mail to: "/email_processor", subject: "Update #{ticket.id}"
  end
end
