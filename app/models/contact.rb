class Contact < ActiveRecord::Base
  attr_accessible :name, :phone, :email, :message

  validates :name, presence: true
  validates :email, presence: true,
                    email: true
  validates :message, presence: true

end
