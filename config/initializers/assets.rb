 Rails.application.config.assets.version = '1.0'
 Rails.application.config.assets.precompile += %w( vendor.css vendor.js )
 Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
 Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.eot glyphicons-halflings-regular.svg glyphicons-halflings-regular.ttf glyphicons-halflings-regular.woff)
