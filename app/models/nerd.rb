class Nerd < ActiveRecord::Base
  attr_accessible :answer, :nameA, :nameB, :question
  validates :question, presence: :true
end
