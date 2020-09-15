module AresMUSH
    module ESHTraits
        class CommentsCmd
            include CommandHandler

            attr_accessor :name, :comments

            def parse_args
                self.name = cmd.args || enactor_name
            end

            def handle 
                ClassTargetFinder.with_a_character(self.name, client, enactor) do |model|
                    template = BorderedDisplayTemplate.new model.comments, "#{model.name}'s Comments"
                    client.emit template.render
                end
            end
        end
    end
end