require 'spec_helper'

describe Article do
  let(:article) { Article.create(title: "Hello world", content: "I swear I can type") } 
  
  it { should have_and_belong_to_many(:tags) }
  it { should belong_to(:category) }

  context "allows for mass assignment of title and content" do
    it { should allow_mass_assignment_of(:title) }
    it { should allow_mass_assignment_of(:content) }
  end

  context "should have validations for title and content" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  # context "check all methods" do
  #   it ".format_title returns title without dashes" do
  #     Article.format_title("eva-hello-byebye").should eq("eva hello byebye")
  #   end

  #   it ".find_article_by_title returns article object" do
  #     Article.find_article_by_title(article.title).should eq(article)
  #   end


  #   it "#dashify_title returns title with dashes instead of spaces" do
  #     article.dashify_title.should eq("Hello-world")
  #   end

  # end

end
