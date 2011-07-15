class User < ActiveRecord::Base
	attr_accessible :age, :sex, :weight, :height
	validates :age, :presence => true, :numericality => {:greater_than => 0, :message=>'aa' }
	validates :sex, :presence => true
	validates :weight, :presence => true, :numericality => {:greater_than => 0 }
	validates :height, :presence => true, :numericality => {:greater_than => 0 }
	validates_inclusion_of :sex, :in => %w(M F), :message => 'sexul trebuie sa fie M of F'	

	def get_errors
		err = Array.new
		err << "Varsta trebuie sa fie un numar pozitiv" if errors[:age].any?
		err << "Greutatea trebuie sa fie un numar pozitiv" if errors[:weight].any?
		err << "Inaltimea trebuie sa fie un numar pozitiv" if errors[:height].any?
		if err.empty?
			nil
		else
			err
		end
	end
	
	def get_bmr
		if sex.upcase.eql?('F')
			return (665 + 9.6 * weight + 1.8 * height - 4.7 * age).floor
		end
		if sex.upcase.eql?('M')
			return (66 + 13.7 * weight + 5 * height - 6.8 * age).floor
		end
		nil
	end
end
