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
#

class Offer < ApplicationRecord
  belongs_to :company
  belongs_to :job
  has_many :notations, as: :subject
end
