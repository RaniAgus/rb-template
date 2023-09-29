class Golondrina
  attr_reader :energia
  
  def initialize(energia = 100)
    @energia = energia
  end

  def volar(km)
    @energia -= 3 * km
  end

  def comer(g)
    @energia += 2 * g
  end
end
