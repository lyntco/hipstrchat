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

require 'rails_helper'

RSpec.describe Room, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
