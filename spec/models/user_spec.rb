# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  email                 :string(255)
#  name                  :string(255)
#  nickname              :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
