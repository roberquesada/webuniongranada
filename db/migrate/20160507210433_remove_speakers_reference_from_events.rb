class RemoveSpeakersReferenceFromEvents < ActiveRecord::Migration
  def change
    remove_reference :events, :speakers
  end
end
