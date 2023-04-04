module Api
  class TodoListsController < ApplicationController
    # GET /api/todo_lists
    def index
      @todo_lists = TodoList.all
    end
  end
end
