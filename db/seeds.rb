# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
buzzwords = ['Responsible',
						'Strategic',
						'Creative',
						'Effective',
						'Patient',
						'Expert',
						'Organizational',
						'Driven',
						'Innovative',
						'Analytical']

fizz = [ "I am ", "I "]

buzzwords.each do |word|
	Buzzword.create(word:word)
end

fizz.each do |phrase|
	Fizz.create(phrase:phrase)
end