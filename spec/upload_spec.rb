describe 'upload', :upload do
    
    before(:each) do
        @imagem = Dir.pwd + '/spec/fixture/rspec.png'
        visit('/upload')
    end

    it 'upload com imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        div = find('#uploaded-file')
        expect(div.text). eql? 'rspec.png'
        # outro exemplo
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/rspec.png'

    end

    after(:each) do
        sleep 1
    end
end