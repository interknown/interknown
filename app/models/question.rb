class Question < ActiveRecord::Base
  validates_presence_of :author, :question, :answer
  validates_uniqueness_of :question
end
