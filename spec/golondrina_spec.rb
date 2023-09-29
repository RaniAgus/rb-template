describe 'golondrina' do
  let (:pepita) { Golondrina.new }

  it 'al volar se reduce su energia' do
    pepita.volar(10)
 
    expect(pepita.energia).to eq(70)
  end

  it 'al comer aumenta su energia' do
    pepita.comer(10)

    expect(pepita.energia).to eq(120)
  end
end
