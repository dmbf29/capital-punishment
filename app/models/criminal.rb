class Criminal < ApplicationRecord
  belongs_to :prison # criminal.prison
  has_many :convictions, dependent: :destroy
  has_many :crimes, through: :convictions
  validates :name, presence: true
end
