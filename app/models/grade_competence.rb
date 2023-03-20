class GradeCompetence < ApplicationRecord
  belongs_to :level
  belongs_to :fundamental_competence
end
