class Api::TicketsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create

    if Ticket.update_from_postmark(Postmark::Mitt.new(request.body.read))
      render text: "Response received", status: :created
    else
      render text: "Unauthorized", status: :Unauthorized
    end
  end
end
