# models/ingredient.rb

require 'sequel'
require 'sqlite3'

# DB = Sequel.sqlite('inventory.db')
DB = Sequel.sqlite('/Users/siddhartha/work/ruby/inventory/inventory.db')

# DB.create_table :ingredients do
#   primary_key :id
#   varchar :name
#   integer :quantity
#   boolean :get_soon
# end

class Ingredient < Sequel::Model
end
