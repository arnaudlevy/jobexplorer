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
end
