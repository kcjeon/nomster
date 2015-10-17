class NotificationMailer < ActionMailer::Base
  default from: "no-reply@enomsterapp.com"

  def comment_added
  	mail(to: "cassie.eunha@gmail.com", subject: "A comment has been added to your place")
  end
end
