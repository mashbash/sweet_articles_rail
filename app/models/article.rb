class Article < ActiveRecord::Base
  attr_accessible :title, :content, :url, :category, :tag

  has_and_belongs_to_many :tags
  belongs_to :category

  validates :title, :content, :presence => true
  before_create :create_url

  # def dashify_title
  #   self.title.gsub(/(\s)/, "-")
  # end

  # def self.find_article_by_title(title)
  #   self.find_by_title(self.format_title(title))
  # end

  # def self.format_title(title)
  #   title.gsub(/(-)/, " ")
  # end

  private
  def create_url
    self.url = self.title.parameterize
  end

end
