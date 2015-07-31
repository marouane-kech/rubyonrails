class Article < ActiveRecord::Base
  has_many :tags
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :content, presence: true,
                    length: { minimum: 10 }

  def self.search(query)
    includes(:tags).where("title like :key or articles.content like :key or tags.content like :key", 
    	{key: "%#{query}%"}).references(:tags)
  end

end
