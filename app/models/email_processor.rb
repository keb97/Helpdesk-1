class EmailProcessor
  def self.process(email, ticket)
  	@ticket = ticket
    @ticket.update!(ticket_id, answer: message.body.decoded)
  end
end