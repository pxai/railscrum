class Board < ApplicationRecord
      has_many :stories
      validates :title, presence: true,
                    length: { minimum: 5 }
end
