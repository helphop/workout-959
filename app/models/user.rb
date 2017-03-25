class User < ApplicationRecord

	acts_as_authentic

	validates :first_name, 
  			presence: true,
  			length: {minimum: 2}

  validates :last_name, 
  			presence: true,
  			length: {minimum: 2}
end
