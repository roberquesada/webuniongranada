class Event < ActiveRecord::Base
  default_scope { order('date DESC') }
  scope :paginate, -> (page) { limit(10).offset(page * 10) }
  enum category: [:workshop, :charla]

  def to_param
    slug
  end

end
