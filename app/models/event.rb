# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  category    :integer
#  date        :datetime
#

class Event < ActiveRecord::Base
  enum category: [:workshop, :charla]

  default_scope { order('date DESC') }
  scope :paginate, -> (page) { limit(10).offset(page * 10) }

  has_many :participations
  has_many :speakers, through: :participations
  accepts_nested_attributes_for :participations
  def to_param
    slug
  end

end
