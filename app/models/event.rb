class Event < ActiveRecord::Base
  default_scope { order('date DESC') }
  enum category: [:workshop, :charla]
  def to_param
    slug
  end
end
