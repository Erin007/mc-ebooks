# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  author     :string
#  isbn       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_author  (author)
#  index_books_on_isbn    (isbn)
#  index_books_on_title   (title)
#
class Book < ApplicationRecord

  def self.search(q)
    where(["title LIKE ?", "%#{q}%"])
  end
end
