# == Schema Information
#
# Table name: participations
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  speaker_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Participation < ActiveRecord::Base
  belongs_to :event
  belongs_to :speaker
end
