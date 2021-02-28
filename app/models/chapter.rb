class Chapter < ApplicationRecord
  belongs_to :course, counter_cache: true
  has_many :lessons, dependent: :destroy, inverse_of: :chapter

  validates :title, :course, presence: true
  validates :title, length: {maximum: 100}
  validates_uniqueness_of :title, scope: :course_id

  extend FriendlyId
  friendly_id :title, use: :slugged

  include RankedModel
  ranks :row_order, with_same: :course_id

  def progress(user)
    unless lessons_count == 0
      user_lessons.where(user: user).count / lessons_count.to_f * 100
    end
  end

  def to_s
    title
  end

end
