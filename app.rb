require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @word_argument = params.fetch('word_argument')
  @target_word = params.fetch('target_word')
  @result = @target_word.anagram(@word_argument)
  erb(:result)
end
