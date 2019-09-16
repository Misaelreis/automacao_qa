describe 'Alternando entre janelas', :windows do
    before(:each) do
        visit('/windows')
    end

    it 'nova janela' do
        novaJanela = window_opened_by {click_link 'Clique aqui'}
        within_window -> {page.title == 'Nova Janela'} do
            expect(page).to have_content 'Aqui temos uma nova janela \o/'
        end
        novaJanela.close
        expect(novaJanela.closed?).to be true
    end
end