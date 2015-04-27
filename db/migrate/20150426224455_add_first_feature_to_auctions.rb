class AddFirstFeatureToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :ffeature, :string
  end
end
