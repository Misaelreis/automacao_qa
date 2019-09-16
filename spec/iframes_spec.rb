describe 'Iframes' do

    describe 'Bom', :nice do

        before(:each) do
            visit('/nice_iframe')
        end

        it 'adicionar ao carrinho' do
            within_frame('burgerId') do 
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                sleep 2
                expect(find('#cart')).to have_content 'R$ 4,50'
            end
        end
    end

    describe 'Ruim', :bad do

        before(:each) do
            visit('/bad_iframe')
        end

        it 'carrinho deve esta vazio' do
            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)
            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
            end
        end

    end
end