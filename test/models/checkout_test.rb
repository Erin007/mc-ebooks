# == Schema Information
#
# Table name: checkouts
#
#  id            :integer          not null, primary key
#  checkin_date  :date
#  checkout_date :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  book_id       :integer
#  user_id       :integer
#
# Indexes
#
#  index_checkouts_on_book_id        (book_id)
#  index_checkouts_on_checkin_date   (checkin_date)
#  index_checkouts_on_checkout_date  (checkout_date)
#
require 'test_helper'

class CheckoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
