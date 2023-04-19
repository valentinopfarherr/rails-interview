module Api
    class TodoItemsController < ApplicationController
      before_action :set_todo_list
      # GET api/todo_lists/:todo_list_id/todo_items
      def index
        @todo_items = TodoItem.where(todo_list_id: params[:todo_list_id]) 
      end

      # POST /api/todo_lists/:todo_list_id/todo_items
      def create
        @todo_item = @todo_list.todo_items.create(todo_item_params)
      end

      private

      def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
      end

      def todo_item_params
        params.require(:todo_item).permit(:title, :description, :completed)
      end
    end
  end
   