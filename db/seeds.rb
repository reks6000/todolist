# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def iterate(h, result)
    h.each do |k,v|
    value = v || k

    if value.is_a?(Hash) || value.is_a?(Array)
#       puts "evaluating: #{value} recursively..."
#       puts
        iterate(value, result)
    else
        result.store(k, v)
#         puts "key: #{k} value: #{v}" 
#         puts
    end
  end
end

seed_file = File.open("/home/timur/Документы/Sites/todolist/db/seeds/seed.yml")
seed_file = Rails.root.join('db', 'seeds', 'projects.yml')
# config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))
config = YAML::load_file(seed_file)
hash = Hash.new
iterate(config, hash)
hash.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

# hash = config.to_hash_recursive
# config.each_value do |key, value|
#     value.to_hash_recursive
#     value.each_value do |k, v|
#         puts "The hash key is #{k} and the value is #{v}."
#     end
# end

# config.each do |key, value|
#   puts "The hash key is #{key} and the value is #{value}."
# end
# puts
# 
# hash = Hash[config.map {|key, value| [key, value]}]
# hash = Hash[config.values.map {|key, value| [key, value]}]
# hash.each do |key, value|
#   puts "The hash key is #{key} and the value is #{value}."
# end

# config = YAML::load_file(seed_file)

# hash.each do |key, value|
#     value each do 
#     @project = Project.create title: hash["title"]
#     @todo = Todo.create text: "Wife"
#     @project.todos << todo
# end

# Project.create!(config)

