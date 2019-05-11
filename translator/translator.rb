require 'net/http'

class Translator
  def initialize
    @key = 'trnsl.1.1.20190511T175708Z.6110aa01e90899a4.46f41a51aedbb6532a056307db945dbd8e5f440a'
    # load_languages
    get_inputs
  end
  
  private

  def get_inputs
    print "Input the text: "
    @text = gets.chomp.to_str
    print "Input text language: "
    @text_lang = gets.chomp.to_str
    print "Input destination language: "
    @dest_lang = gets.chomp.to_str
    translate
  end

  def translate 
    req = Net::HTTP::Post.new("/api/v1.5/tr.json/translate")
    req.set_form_data({ key: @key, text:@text, lang:"#{@text_lang}-#{@dest_lang}", format:"plain" })
     
    response = Net::HTTP.start('translate.yandex.net', use_ssl: true) do |http|
     http.request(req)
    end
    @result = response.body
    save
  end

  def save 
    name = Time.now
    File.open("#{name}.txt", 'a') do |line|
      line.puts(@result)
    end
  end
end

Translator.new