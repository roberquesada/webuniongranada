class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :event, index: true
      t.references :speaker, index: true
      t.timestamps null: false
    end
  end
end
