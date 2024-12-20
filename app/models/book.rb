class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors

  def as_json
    json = super
    json.merge!(authors: authors)
  end
end
