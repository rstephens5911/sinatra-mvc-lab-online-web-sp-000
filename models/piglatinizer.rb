class PigLatinizer
	attr_accessor :text

	VOWELS = ["a", "e", "i", "o", "u"]

	def to_pig_latin(text)
		self.text = text.split.map { |word| piglatinize(word) }.join(" ")
	end

	def piglatinize(word)
		normal_word = word.split(//)
		while !(VOWELS.include?(normal_word.first.downcase))
			normal_word << normal_word.shift
		end

		if VOWELS.include?(word[0].downcase)
			normal_word << "way"
		else
			normal_word << "ay"
		end

		normal_word.join("")
	end

end
