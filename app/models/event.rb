class Event < ActiveRecord::Base
  enum category: [:workshop, :charla]
  def to_param
    slug
  end
end
