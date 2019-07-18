# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def iterate(h, project, todo)
    h.each do |k,v|
        value = v || k

        if value.is_a?(Hash) || value.is_a?(Array)
#           puts "evaluating: #{value} recursively..."
#           puts
            iterate(value, project, todo)
        else
            case k
            when "title"
                project = Project.create title: v
            when "text"
                todo = Todo.create text: v
            when "isCompleted"
                todo.update isCompleted: v 
                project.todos << todo
            end
#             result.store(k, v)
#             puts "key: #{k} value: #{v}" 
#             puts
        end
    end
end

seed_file = Rails.root.join('db', 'seeds', 'projects.yml')
config = YAML::load_file(seed_file)
project = Project.create
todo = Todo.create
iterate(config, project, todo)
Todo.first.delete
Project.first.delete

