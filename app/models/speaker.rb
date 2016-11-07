# == Schema Information
#
# Table name: speakers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Speaker < ActiveRecord::Base
  has_many :participations
  has_many :events, through: :participations
end
