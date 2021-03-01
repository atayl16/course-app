class Feedback < ApplicationRecord
  include PublicActivity::Model
  tracked owner: proc { |controller, model| controller.current_user }

  belongs_to :user
  validates :content, presence: true

  def to_s
    content
    email
  end
end
