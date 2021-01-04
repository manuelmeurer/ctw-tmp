activate :directory_indexes
activate :autoprefixer
activate :sprockets

set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'

configure :development do
  activate :livereload

  set :debug_assets, true
end

configure :production do
  activate :gzip
  activate :asset_hash
  activate :minify_css
  activate :minify_javascript
  activate :imageoptim
end
