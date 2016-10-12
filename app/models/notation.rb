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

class Notation < ApplicationRecord
  belongs_to :criterion
  belongs_to :subject, polymorphic: true

  after_save :delete_other_notations

  protected

  def delete_other_notations
    Notation
      .where(subject_id: subject_id, subject_type: subject_type, criterion_id: criterion_id)
      .where.not(id: id)
      .destroy_all
  end 
end
