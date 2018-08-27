require 'sinatra'

get '/' do
  # @mumories = (1..61).to_a
  # @mumory = @mumories.sample

  today = Date.today
  mums_birthday = Date.parse '2018-08-27'
  @mumory = (mums_birthday - today).to_i + 1

  erb :index
end

get '/:mumory' do
  @mumory = params['mumory']

  erb :index, locals: { mumory: @mumory }
end