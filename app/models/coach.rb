class Coach < ApplicationRecord
  belongs_to :mens_team
  has_many :players
  validates :coach_name, presence: true
  validates :mens_team_id, presence: true

end
