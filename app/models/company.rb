# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  score      :decimal(5, 2)
#

class Company < ApplicationRecord
  has_many :offers, dependent: :nullify

  include Notable

  after_touch :update_offers

  def to_s
    "#{name}"
  end

  def update_offers
    offers.each &:touch
  end
end
