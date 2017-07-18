namespace :export do
  desc 'Prints shop_categories.all in a seeds.rb way.'
  task :seeds_format => :environment do
    ShopCategory.order(:id).all.each do |category|
      puts "ShopCategory.create(#{category.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    ShopItem.order(:id).all.each do |item|
      puts "ShopItem.create(#{item.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end