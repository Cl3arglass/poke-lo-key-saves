class PokeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :found, :likes
  belongs_to :user
end
