class Comment < ActiveRecord::Base
  belongs_to :post

  validates_presence_of :body, :post
  validates_associated  :post

  with_options :allow_blank => true do |c|
    c.validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  end

  scope :unread, where({:read => false})

end
