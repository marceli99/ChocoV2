class Post < ApplicationRecord
  validates :title, :presence => true, :length => {:maximum => 50}, :allow_nil => false
  validates :content, :presence => true, :allow_nil => false
end
