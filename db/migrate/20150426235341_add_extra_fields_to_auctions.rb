class AddExtraFieldsToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :notice_number, :string
    add_column :auctions, :object, :string
    add_column :auctions, :public_date, :date
    add_column :auctions, :end_date_time, :datetime
    add_column :auctions, :first_consideration_date, :date
    add_column :auctions, :realization_date, :date
    add_column :auctions, :second_consideration_date, :date
    add_column :auctions, :demand_quantity, :integer
    add_column :auctions, :demand_withdrawal_quantity, :integer
    add_column :auctions, :urz, :string
    add_column :auctions, :participants, :string
    add_column :auctions, :winner, :string
    add_column :auctions, :price, :float
    add_column :auctions, :result, :string
    add_column :auctions, :reason, :string
    add_column :auctions, :competition_regulator, :string
    add_column :auctions, :performer_name, :string
    add_column :auctions, :customer_category, :string
  end
end
