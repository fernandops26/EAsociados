# config/initializers/kaminari.rb
Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari
  config.default_per_page = 5 
end
