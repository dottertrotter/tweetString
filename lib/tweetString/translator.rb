class TweetString::Translator

	def initialize(txt)
		@txt = txt
	end

	def translate
		if @@words.has_key?(@txt) 
			return @@words[@txt] 
		else
			return @txt
		end
	end

	def self.addWords(new_words_map)
		@@words.merge!(new_words_map)
	end

	@@words = {
		"lol" => "laugh out loud",
		"bff" => "best friend for life"
	}

end