describe 'Alert js', :alert do
    before(:each) do
        visit('/javascript_alerts')
    end

    it 'Alerta' do
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        puts msg
    end

    it 'Sim confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'Não confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'Prompt', :accept do
        accept_prompt(with: 'Tester') do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, Tester'
    end

    it 'No prompt', :naccept do
       click_button 'Prompt'
       dismiss_prompt(with: '')
       expect(page).to have_content 'Olá, null'
    end


end