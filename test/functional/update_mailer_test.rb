require 'test_helper'

class UpdateMailerTest < ActionMailer::TestCase
  test "ticket_update" do
    mail = UpdateMailer.ticket_update
    assert_equal "Ticket update", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
