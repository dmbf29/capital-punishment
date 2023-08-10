class Conviction < ApplicationRecord
  belongs_to :criminal
  belongs_to :crime
  validates :crime, uniqueness: { scope: :criminal }
end
