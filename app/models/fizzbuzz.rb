require 'pry'
class Fizzbuzz
	def initialize(text)
		@text = text
	end

	def self.fizzbuzzed(text)
		p text

		fizzed = self.fizz(text.split(' '))

		buzzed = self.buzzword(fizzed)
		# self.fizzbuzzword(buzzed)
	end
	# find the phrase
	def self.fizz(text)
		p "in fizz"
		text.each_with_index do |word, index|
			Fizz.all.pluck("phrase").each do |phrase|
				text[index] = ["Fizz", word] if word == phrase || word == phrase.downcase	
			end
		end
		return text
	end

	def self.buzzword(text)
		p "buzzword"
		text.each_with_index do |word,index|
			Buzzword.all.pluck("word").each do |buzzword|
				text[index] = ["Buzzword", word] if word == buzzword || word == buzzword.downcase
			end
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