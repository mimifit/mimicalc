class User < ActiveRecord::Base
	attr_accessible :age, :sex, :weight
	validates :age, :presence => true, :numericality => {:greater_than => 0 }
	validates :sex, :presence => true
	validates :weight, :presence => true, :numericality => {:greater_than => 0, :only_integer => true}
end
