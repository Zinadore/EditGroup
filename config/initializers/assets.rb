# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( contact_us.js )
Rails.application.config.assets.precompile += %w( admin/custom.css )
Rails.application.config.assets.precompile += %w( admin/custom.js )
Rails.application.config.assets.precompile += %w( members-main.css )
Rails.application.config.assets.precompile += %w( modernizr.js )
Rails.application.config.assets.precompile += %w( members-main.js )
Rails.application.config.assets.precompile += %w( admin/dashboard.js )
Rails.application.config.assets.precompile += %w( admin.js )
Rails.application.config.assets.precompile += %w( admin/dashboard.css )
Rails.application.config.assets.precompile += %w( invitations.js )
Rails.application.config.assets.precompile += %w( frontend.js )
Rails.application.config.assets.precompile += %w( frontend.scss )
Rails.application.config.assets.precompile += %w( pagination.js )
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
