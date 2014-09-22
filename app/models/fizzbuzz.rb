class Fizzbuzz
	def initialize(text)
		@text = text
	end

	def self.fizzbuzzed(text)
		p text
		fizzed = self.fizz(text)
		buzzed = self.buzzword(fizzed)
		self.fizzbuzzword(buzzed)
	end

	def self.fizz(text)
		p "in fizz"
		Fizz.all.pluck("phrase").each do |phrase|
			p phrase
			text.gsub! phrase, "Fizz "
		end
		return text
	end

	def self.buzzword(text)
		p "buzzword"
		Buzzword.all.pluck("word").each do |word|
			p word
			text.gsub! word, 'Buzzword'
			text.gsub! word.downcase, 'Buzzword'
		end
		return text
	end

	def self.fizzbuzzword(text)
		text.gsub! 'Fizz Buzzword', 'FizzBuzzword'
		return text
	end

	def fizz_count
	end

	def buzz_count
	end
end