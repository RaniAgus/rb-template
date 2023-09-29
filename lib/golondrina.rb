class Golondrina
  attr_reader :energia
  
  def initialize(energia = 100)
    @energia = energia
  end

  def volar(km)
    raise GolondrinaCansadaError.new "Puede volar hasta #{@energia / 3}km" unless @energia >= 3 * km
    @energia -= 3 * km
  end

  def comer(g)
    @energia += [2 * g, 100 - @energia].min
  end
end

class GolondrinaCansadaError < StandardError; end
