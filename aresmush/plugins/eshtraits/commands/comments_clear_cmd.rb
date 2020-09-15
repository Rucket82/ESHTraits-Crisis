module AresMUSH
    module ESHTraits
        class ClearCommentsCmd
            include CommandHandler

            attr_accessor :name, :comments

            def parse_args
                self.name = cmd.args || enactor_name
            end

            def required_args
                [ self.name ]
            end

            def handle 
                ClassTargetFinder.with_a_character(self.name, client, enactor) do |model|
                    if (enactor.name == model.name && !Chargen.check_chargen_locked(enactor))
                        model.update(comments: nil)
                        client.emit_success t('eshtraits.comments_cleared')
                    elsif (Chargen.can_approve?(enactor))
                        model.update(comments: nil)
                        client.emit_success t('eshtraits.comments_cleared')
                    else
                        client.emit_failure t('dispatcher.not_allowed')
                    end
                end
            end
        end
    end
end