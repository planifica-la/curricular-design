class CreateProjectProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :project_problems do |t|
      t.string :problem
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
