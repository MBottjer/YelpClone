class Review < ActiveRecord::Base
  belongs_to :restaurant

  after_save :send_owner_email

  def send_owner_email
    return if restaurant.owner_email.empty?
    mail = ReviewMailer.notify_owner(restaurant.owner_email, self)
    mail.deliver
  end
end
