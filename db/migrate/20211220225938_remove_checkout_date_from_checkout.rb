class RemoveCheckoutDateFromCheckout < ActiveRecord::Migration[5.2]
  def change
    remove_column :checkouts, :checkout_date, :date
  end
end
