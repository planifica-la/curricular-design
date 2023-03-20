class CreateConceptTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :concept_topics do |t|
      t.references :level, null: false, foreign_key: true
      t.integer :grade, null: false
      t.references :subject, null: false, foreign_key: true
      t.string :topic

      t.timestamps
    end
  end
end
