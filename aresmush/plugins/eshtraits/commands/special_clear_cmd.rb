module AresMUSH
    module ESHTraits
        class ClearSpecialCmd
            include CommandHandler

            attr_accessor :name, :special

            def parse_args
                self.name = cmd.args || enactor_name
            end

            def required_args
                [ self.name ]
            end

            def handle 
                ClassTargetFinder.with_a_character(self.name, client, enactor) do |model|
                    if (enactor.name == model.name && !Chargen.check_chargen_locked(enactor))
                        model.update(special: nil)
                        client.emit_success t('eshtraits.special_cleared')
                    elsif (Chargen.can_approve?(enactor))
                        model.update(special: nil)
                        client.emit_success t('eshtraits.special_cleared')
                    else
                        client.emit_failure t('dispatcher.not_allowed')
                    end
                end
            end
        end
    end
end