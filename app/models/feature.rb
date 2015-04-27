# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  level      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Feature < ActiveRecord::Base
  validates :title, uniqueness: true
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |feature|
        csv << feature.attributes.values_at(*column_names)
      end
    end
  end
end
