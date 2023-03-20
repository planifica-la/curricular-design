class CreateConcepts < ActiveRecord::Migration[7.0]
  def change
    create_table :concepts do |t|
      t.references :concept_topic, null: false, foreign_key: true
      t.text :concept

      t.timestamps
    end
  end
end
