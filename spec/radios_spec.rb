describe 'Botões do radio', :radio do
    before(:each) do
        visit('/radios')
    end

    it 'seleção por ID' do
        choose('cap')
    end

    it 'seleção por find e css' do
        find('input[value=guardians]').click
    end

    after(:each) do
    end
end