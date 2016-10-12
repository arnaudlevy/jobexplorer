# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Job < ApplicationRecord
  has_many :notations, as: :subject, dependent: :destroy
  has_many :offers, dependent: :nullify
  
  def to_s
    "#{name}"
  end
end
