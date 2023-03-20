class ConceptTopic < ApplicationRecord
  belongs_to :level
  belongs_to :grade
  belongs_to :subject
end
