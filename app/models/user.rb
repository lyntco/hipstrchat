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

class User < ActiveRecord::Base
end
