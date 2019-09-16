describe 'Forms' do
    it 'Login com sucesso' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'
        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text). eql? 'Olá, Tony Stark. Você acessou a área logada!'
    end
end