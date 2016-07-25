class Idea < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
end
