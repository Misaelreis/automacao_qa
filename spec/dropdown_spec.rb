describe 'Caixa de opções', :dropdown do
    it 'item específico simples com id' do
        visit ('/dropdown')
        select('Loki', from: 'dropdown')
    end

    it 'item específico com o find' do
        visit ('/dropdown')
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
    end

    it 'qualquer item', :sample do
        #sample usado para selecionar qualquer opção
        visit ('/dropdown')
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end
end