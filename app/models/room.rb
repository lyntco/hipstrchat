# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  topic      :string(255)
#  private    :boolean          default(FALSE)
#  active     :boolean          default(TRUE)
#  created_at :datetime
#  updated_at :datetime
#

class Room < ActiveRecord::Base
end
