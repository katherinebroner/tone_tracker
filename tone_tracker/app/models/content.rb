class Content < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :user
  has_many :emotions
  has_many :languages
  has_many :tendencies

end
