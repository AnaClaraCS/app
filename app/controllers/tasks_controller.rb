class TasksController < ApplicationController

    def index
      @tasks = Task.all
      @task = Task.new
    end

    def show
      @task = Task.find(params[:id])
    end

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(task_params)
      if @task.save
        flash[:success] = "Object successfully created"
        redirect_to root_path
      else
        flash[:error] = "Something went wrong"
        render 'new'
      end
    end

    def edit
      @task = Task.find(params[:id])
    end

    def update
      @task = Task.find(params[:id])
      if @task.update_attributes(task_params)
        flash[:success] = "Object was successfully updated"
        redirect_to root_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
    end

    def destroy
      @task = Task.find(params[:id])
      if @task.destroy
        flash[:success] = 'Object was successfully deleted.'
        redirect_to tasks_url
      else
        flash[:error] = 'Something went wrong'
        redirect_to tasks_url
      end
    end

    def toggle_done
      @task = Task.find(params[:id])
      @task.update(done: !@task.done)
      redirect_to tasks_path, notice: 'Status da tarefa atualizado com sucesso.'
    end


    private
    def task_params
      params.require(:task).permit(:title, :done)
    end

end
