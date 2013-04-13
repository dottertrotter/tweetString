class TweetString < String

	def expand
		@translated = ""

		self.split.each do |x|
			translator = Translator.new(x)
			@translated << " " << translator.translate
		end

		@translated
	end

end

require 'tweetString/translator'