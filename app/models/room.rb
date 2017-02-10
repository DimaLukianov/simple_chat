class Room < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :messages
  has_and_belongs_to_many :users

  def members
    [owner] + users
  end
end
