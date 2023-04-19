require 'rails_helper'

describe Api::TodoItemsController do
  describe 'GET index' do
    xit 'returns all todo items records'
  end
  
  describe 'POST #create' do 
    context 'with valid attributes' do
        let(:todo_list) { TodoList.create(name: "To do List Demo") }
        it 'creates a new todo item' do
            expect {
                post :create, params: { todo_item: {title: "demo", description: "Its a demo", completed: true}, todo_list_id: todo_list.id }, format: :json
            }.to change(TodoItem, :count).by(1)
        end
    end
  end
end