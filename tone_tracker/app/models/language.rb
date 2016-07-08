class Language < ActiveRecord::Base
  validates :name, :score, presence: true

  belongs_to :content
end
