describe Golondrina do
  let (:pepita) { Golondrina.new(60) }

  context 'al volar' do
    it 'reduce su energia' do
      pepita.volar(10)
 
      expect(pepita).to have_energia(30)
    end

    it 'se cansa' do
      expect {
        pepita.volar(21)
      }.to raise_error GolondrinaCansadaError, "Puede volar hasta 20km"
    end
  end

  context 'al comer' do
    it 'aumenta su energia' do
      pepita.comer(10)

      expect(pepita).to have_energia(80)
    end

    it 'alcanza su energia maxima' do
      pepita.comer(21)

      expect(pepita).to have_energia(100)
    end
  end
end
