describe 'Login com cadastro', :lc do

    before(:each) do
        visit('/access')
    end

    it 'com com sucesso' do

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text). eql? 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'cadastro com sucesso' do

        within('#signup') do
            find('input[name=username]').set 'Jorge'
            find('input[name=password]').set '123mi'
            click_link 'Criar Conta'
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end