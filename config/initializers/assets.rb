# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( mootools.js )
Rails.application.config.assets.precompile += %w( bumpbox-2.0.1.js )

Rails.application.config.assets.precompile += %w( jquery.fancybox.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox-buttons.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox-thumbs.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox-media.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox.pack.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox.css )
Rails.application.config.assets.precompile += %w( jquery.fancybox-buttons.css )
Rails.application.config.assets.precompile += %w( jquery.fancybox-thumbs.css )
