# == Schema Information
#
# Table name: notations
#
#  id           :integer          not null, primary key
#  criterion_id :integer
#  subject_type :string
#  subject_id   :integer
#  score        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class NotationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
