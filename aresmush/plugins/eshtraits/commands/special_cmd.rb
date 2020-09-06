module AresMUSH
    module ESHTraits
        class SpecialCmd
            include CommandHandler

            attr_accessor :name, :special

            def parse_args
                self.name = cmd.args || enactor_name
            end

            def handle 
                ClassTargetFinder.with_a_character(self.name, client, enactor) do |model|
                    template = BorderedDisplayTemplate.new model.special, "#{model.name}'s Special Abilities"
                    client.emit template.render
                end
            end
        end
    end
end