describe 'Login2', :rand do

    before(:each) do
        visit('/login2')
    end

    it 'Com data de nascimento' do
        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        formLogin = find('#login')

        case formLogin.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end
        
       click_button 'Login'
       expect(find('#flash').visible?).to be true
       expect(find('#flash').text). eql? 'Olá, Tony Stark. Você acessou a área logada!'
    end
end