class Event < ActiveRecord::Base
  enum type: [:taller, :charla]
  enum category: [:workshop, :charla]
  def to_param
    slug
  end
end
