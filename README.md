# plugins-eshtraits
 ESH Traits Plugin for Ares

 This plugin creates a series of commands for setting Powers, Skills, Advantages, and Flaws on characters. It also contains instructions on integrating these into the web portal and character generation.

 Instructions:

 1. Copy the eshtraits directory from the aresmush/plugins directory in the repository into your aresmush/plugins directory on your server with the other plugins. This will add the plugin and its admin/user commands to the game.

 2. Before completing the following steps, please note that if you have other custom code for profile fields or character generation, you will need to manually edit these files in order to not overwrite any of those customizations. If you do not have any other customizations, you can use these files as-is.

 3. Go to the aresmush/plugins/profile directory on your server and edit the custom_char_fields.rb file to match the one included in the aresmush/plugins/profile/chargen directory in the repository. This will add the trait fields to the character objects.

 4. Go to the aresmush/plugins/chargen directory on your server and edit the custom_app_review.rb file to match the one included in the aresmush/plugins/profile/chargen directory in the repository. This will have the chargen system check to see if the traits are set before approval and give warning messages.

 5. Go to the ares-webportal/app/components directory on your server and edit the chargen-custom.js file to match the one included in the ares-webportal/app/components directory in the repository. This will add the traits to the web-portal chargen system.

 6. Go to the ares-webportal/app/templates/components directory on your server and edit the chargen-custom.hbs file to match the one included in the areas-webportal/app/templates/components directory in the repository. This will add the traits to the web-portal chargen system.

 7. Go to the ares-webportal/app/templates/components directory on your server and edit the chargen-custom-tabs.hbs file to match the one included in the ares-webportal/app/templates/components directory in the repository. This will add the traits to the web-portal chargen system.

 8. Go to the ares-webportal/app/templates/components directory on your server and edit the profile-custom.hbs file to match the one included in the ares-webportal/app/template/components directory in the repository. This will add the traits to the web-portal profile.

 9. Go to the ares-webportal/app/templates/components directory on your server and edit the profile-custom-tabs.hbs file to match the one included in the ares-webportal/app/template/components directory in the repository. This will add the traits to the web-portal profile.

 10. On the web portal, choose the Admin > Setup menu and edit chargen.yml to add eshtraits to the stages section. Do this by entering "eshtraits:" below the entry for "groups:" with "help: eshtraits" beneath it. That will add the traits to the client chargen system.
 
 11. At this point, you should be able to "plugin/install eshtraits" to load the plugin from the client and redeploy the web-portal and test the commands.

If you run into any issues getting it set up, feel free to reach out via Discord or through GitHub.