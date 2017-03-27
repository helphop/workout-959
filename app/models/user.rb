class User < ApplicationRecord

  acts_as_authentic do |c|
    c.require_password_confirmation = false
  end


  validates :first_name,
    presence: true,
    length: {minimum: 2}

  validates :last_name,
    presence: true,
    length: {minimum: 2}
end

