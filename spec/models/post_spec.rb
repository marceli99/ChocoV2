require 'rails_helper'

RSpec.describe Post, type: :model do
  context "validation" do
    before(:each) do
      @post = Post.new(title: nil, content: 'Lorem ipsum').save
      @post2 = Post.new(title: 'Title #2', content: nil).save
      @post3 = Post.new(title: 'Title #3',content: 'Lorem ipsum')
    end
    it "should have title" do
      expect(@post).to eq(false)
    end
    it "should have content" do
      expect(@post2).to eq(false)
    end
    it "title should have less than 50 characters" do
      expect(@post3.title.length).to be <= 50
    end
  end
end
