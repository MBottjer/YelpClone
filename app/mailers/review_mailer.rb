class ReviewMailer < ActionMailer::Base
   default from: "me@sandbox9984.mailgun.org"
 
   # Subject can be set in your I18n file at config/locales/en.yml
   # with the following lookup:
   #
   #   en.review_mailer.notify_owner.subject
   #
   def notify_owner(owner_email, review)
     @review = review
     mail to: owner_email, subject: 'New review!'
   end
 end
