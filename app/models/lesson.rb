class Lesson < ApplicationRecord
  belongs_to :course, counter_cache: true
  belongs_to :chapter, counter_cache: true

  has_many :user_lessons, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, :content, :course, :chapter, presence: true
  validates :title, length: {maximum: 100}
  validates_uniqueness_of :title, scope: :course_id

  has_rich_text :content
  has_one_attached :video
  validates :video,
    content_type: ["video/mp4"],
    size: {less_than: 50.megabytes, message: "size should be under 50 megabytes"}

  extend FriendlyId
  friendly_id :title, use: :slugged

  include PublicActivity::Model
  tracked owner: proc { |controller, model| controller.current_user }

  include RankedModel
  ranks :row_order, with_same: [:course_id, :chapter_id]

  belongs_to :course
  ranks :course_order, with_same: [:course_id]

  def to_s
    title
  end

  def impressions_count
    # to be replaced with counter_culture gem (conter cache)
    user_lessons.map(&:impressions).sum
  end

  def prev
    chapter.lessons.where("row_order < ?", row_order).order(:row_order).last
  end

  def next
    chapter.lessons.where("row_order > ?", row_order).order(:row_order).first
  end

end
