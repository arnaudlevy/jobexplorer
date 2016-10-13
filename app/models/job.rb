# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  score      :decimal(5, 2)
#

class Job < ApplicationRecord
  has_many :notations, as: :subject, dependent: :destroy

  include Notable

  def to_s
    "#{name}"
  end
end
