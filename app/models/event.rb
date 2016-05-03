class Event < ActiveRecord::Base
  enum type: [:taller, :charla]
  def to_param
    slug
  end
end
