describe 'Dynamic control', :dc do
    before(:each) do
        visit('/dynamic_controls')
    end

    it 'quando habilita o campo' do
        # Quando tem a propriedade desable true o campo esta desabilitado.
        res = page.has_field? 'movie', disabled: true
        puts res
        click_button 'Habilita'
        res = page.has_field? 'movie', disabled: false
        puts res
    end
end