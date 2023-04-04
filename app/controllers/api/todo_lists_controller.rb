module Api
  class TodoListsController < ApplicationController
    # GET /api/todolists
    def index
      @todo_lists = TodoList.all
    end
  end
end
