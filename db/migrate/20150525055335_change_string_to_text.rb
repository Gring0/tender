class ChangeStringToText < ActiveRecord::Migration
  def change
  	change_column :auctions, :customer, :text, :limit => nil
  	change_column :auctions, :subject, :text, :limit => nil
  end
end
