class Criminal < ApplicationRecord
  belongs_to :prison # criminal.prison
  validates :name, presence: true
end
