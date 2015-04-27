class AddSecondFeatureToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :sfeature, :string
  end
end
