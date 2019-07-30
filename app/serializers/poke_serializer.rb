class PokeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :found
  belongs_to :user
end
