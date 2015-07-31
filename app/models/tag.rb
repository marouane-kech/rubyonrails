class Tag < ActiveRecord::Base
  belongs_to :article
  validates :content, presence: true
end
