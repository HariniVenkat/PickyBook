# This migration comes from spree_paytm (originally 20170113062328)
class CreateSpreePaytmCheckouts < ActiveRecord::Migration
  def change
    create_table :spree_paytm_checkouts do |t|
      t.string :checksum
      t.string :txn_id
      t.string :order_id
    end
  end
end
