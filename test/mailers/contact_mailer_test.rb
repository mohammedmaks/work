require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail =ContactMailer.contact_email("lm01081@surrey.ac.uk", "Liman", "1234567890", @message = "Hello")

    assert_equal ['ussu@surrey.ac.uk'], mail.to
    assert_equal ['lm01081@surrey.ac.uk'], mail.from

  end
end
