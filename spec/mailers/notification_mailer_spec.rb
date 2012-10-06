require "spec_helper"

describe NotificationMailer do
  describe "todo_notification" do
    let(:mail) { NotificationMailer.todo_notification }

    it "renders the headers" do
      mail.subject.should eq("Todo notification")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
