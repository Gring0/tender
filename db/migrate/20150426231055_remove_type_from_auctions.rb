class RemoveTypeFromAuctions < ActiveRecord::Migration
  def change
  	remove_column :auctions, :type
  end
end
