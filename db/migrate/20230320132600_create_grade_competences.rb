class CreateGradeCompetences < ActiveRecord::Migration[7.0]
  def change
    create_table :grade_competences do |t|
      t.text :name
      t.references :level, null: false, foreign_key: true
      t.integer :grade
      t.references :fundamental_competence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
