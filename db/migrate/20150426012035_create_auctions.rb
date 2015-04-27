class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :customer
      t.string :subject
      t.string :type

      t.timestamps
    end
  end
end
