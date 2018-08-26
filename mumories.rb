require 'sinatra'

get '/' do
  @mumories = (1..61).to_a
  @mumory = @mumories.sample

  today = Date.today
  mums_birthday = Date.parse '2018-09-27'
  @days_since = (mums_birthday - today).to_i

  erb :index, locals: { mumory: @mumory }
end

get '/:mumory' do
  @mumory = params['mumory']

  today = Date.today
  mums_birthday = Date.parse '2018-09-27'
  @days_since = (mums_birthday - today).to_i

  erb :index, locals: { mumory: @mumory }
end