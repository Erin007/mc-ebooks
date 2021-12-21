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
  has_many :checkouts

  def self.search(q)
    where(["title LIKE ?", "%#{q}%"])
  end

  def checkedout_by_user?(user_id)
    return false unless user_id
    checkouts = Checkout.where(book_id: id, checkin_date: nil, user_id: user_id)
    checkouts.length != 0
  end

  def available?
    checkouts = Checkout.where(book_id: id, checkin_date: nil)
    checkouts.length == 0
  end
end
