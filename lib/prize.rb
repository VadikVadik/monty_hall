class Prize
  TYPE = 'No type'

  attr_reader :type

  def initialize(type = self.class::TYPE)
    @type = type
  end
end
