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

class Offer < ApplicationRecord
  belongs_to :company
  belongs_to :job

  include Notable

  def computed_score
    notations.sum(:score) + company.score.to_f + job.score.to_f
  end

  def to_s
    name.empty? ? "#{job} @ #{company}" : "#{name}"
  end
end
