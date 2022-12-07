class Book < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    belongs_to :author
end
