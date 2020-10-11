module AresMUSH
	module ESHTraits
		class SheetTemplate < ErbTemplateRenderer

		attr_accessor :char, :client

		def initialize(char, client)
			@char = char
			@client = client
			super File.dirname(__FILE__) + "/sheet.erb"
		end

		def approval_status
			Chargen.approval_status(@char)
		end

		def powers
			@char.powers
		end

		def skills
			@char.skills
		end

		def advantages
			@char.advantages
		end

		def flaws
			@char.flaws
		end

		def personality
			@char.personality
		end
		
		def special
			@char.special
		end

		def section_line(title)
			@client.screen_reader ? title : line_with_text(title)
		end

		end
	end
end