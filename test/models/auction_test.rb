# == Schema Information
#
# Table name: auctions
#
#  id                         :integer          not null, primary key
#  customer                   :string(255)
#  subject                    :string(255)
#  created_at                 :datetime
#  updated_at                 :datetime
#  nmc                        :float
#  ffeature                   :string(255)
#  sfeature                   :string(255)
#  category                   :string(255)
#  notice_number              :string(255)
#  object                     :string(255)
#  public_date                :date
#  end_date_time              :datetime
#  first_consideration_date   :date
#  realization_date           :date
#  second_consideration_date  :date
#  demand_quantity            :integer
#  demand_withdrawal_quantity :integer
#  urz                        :string(255)
#  participants               :string(255)
#  winner                     :string(255)
#  price                      :float
#  result                     :string(255)
#  reason                     :string(255)
#  competition_regulator      :string(255)
#  performer_name             :string(255)
#  customer_category          :string(255)
#

require 'test_helper'

class AuctionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
