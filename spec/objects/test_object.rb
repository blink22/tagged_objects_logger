class TestObject
  attr_accessor :id, :name

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
  end
end
