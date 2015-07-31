class Article < ActiveRecord::Base
  has_many :tags, :dependent => :delete_all
  validates :titre, presence: {presence: true, message: "est obligatoire"},
                    length: { minimum: 5, message: "est trop court ( 5 caractères au minimum)" }
  validates :contenu, presence: {presence: true, message: "est obligatoire"},
                    length: { minimum: 10, message: "est trop court ( 10 caractères au minimum)" }

  def self.search(query)
    includes(:tags).where("titre like :key or contenu like :key or tags.content like :key", 
    	{key: "%#{query}%"}).references(:tags)
  end

end
