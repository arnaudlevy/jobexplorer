# == Schema Information
#
# Table name: criterions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Criterion < ApplicationRecord
  has_many :notations

  def notation_for?(subject)
    !notation_for(subject).nil?
  end

  def notation_for(subject)
    notation = notations.where(subject: subject).first
  end

  def note_for(subject)
    notation_for(subject).score unless notation_for(subject).nil?
  end

  def to_s
    "#{name}"
  end
end
