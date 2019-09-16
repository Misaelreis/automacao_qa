describe 'Ids dinâmicos', :id do 
    before(:each) do
        visit('/access')
    end

    #$ termina com
    #^ começa com
    #* contém

    it 'cadastro' do 
        find('input[id$=UsernameInput]').set 'Tester'
        find('input[id*=PasswordInput]').set 'Tester'
        find('a[id*=GetStartedButton]').click
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end
end
