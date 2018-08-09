class Book < ApplicationRecord
  belongs_to :book_category
  belongs_to :shelf
end
