class TodosController < ApplicationController
  get '/' do
    @todos = Todo.all
    erb :'todos/index'
  end

  post '/' do
    @todo = Todo.create(params)
    redirect '/'
  end

  delete '/:id' do
    id = params[:id]
    Todo.:(id)
    redirect '/'
  end
  
end