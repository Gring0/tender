class AddNmcToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :nmc, :float
  end
end
