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
