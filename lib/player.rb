class Player
  attr_accessor :status, :choise
  attr_reader :name

  def initialize(name)
    @name = name
    @status = 0
    @choise = nil
  end

  def vin?
    status == 1
  end
end
