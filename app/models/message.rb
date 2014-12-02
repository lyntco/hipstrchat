# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  user_id    :string(255)
#  room_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Message < ActiveRecord::Base
  belongs_to :room
  belongs_to :user

  validates :user_id, :text, :room_id, :presence => true
end
