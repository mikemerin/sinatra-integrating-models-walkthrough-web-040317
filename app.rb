require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    @text = TextAnalyzer.new(params[:user_text])
    @most_letter = @text.most_used_letter[0]
    @most_count = @text.most_used_letter[1]
    erb :results
  end

end
