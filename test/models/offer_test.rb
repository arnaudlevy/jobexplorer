# == Schema Information
#
# Table name: offers
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :text
#  company_id :integer
#  job_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  score      :decimal(5, 2)
#

require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
