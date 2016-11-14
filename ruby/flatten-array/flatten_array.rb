module FlattenArray

  VERSION = 1

  def self.flatten(array)
  	array.flatten - [nil]
  end
end