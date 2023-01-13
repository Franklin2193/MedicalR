class Summary < ApplicationRecord
  has_many :summaries, dependent: :destroy
end
