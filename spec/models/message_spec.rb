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

require 'rails_helper'

RSpec.describe Message, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
