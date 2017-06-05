class ProblemController < ApplicationController
  def index
  end
  def makingProblem
    text = params[:textarea]
    result = ProblemHelper.input(text)
    render json: result
  end
  def select
    
    #@tagged2DArray = JSON.parse(tagged_2D_array)

    #@caseList = JSON.parse(params[:case_list])
    #@problemList = JSON.parse(params[:problem_list])
    @tagged2DArray = JSON.parse(params[:tagged_2D_array])
  end
  def print
  end
end
