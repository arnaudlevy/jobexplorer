module Notable
  extend ActiveSupport::Concern

  included do
    after_touch :update_note
    has_many :notations, as: :subject, dependent: :destroy
    default_scope { order('score desc nulls last') }
  end

  def update_note
    self.update_column :score, computed_score
  end

  def computed_score
    notations.sum(:score)
  end
end