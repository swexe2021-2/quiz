class QuizsController < ApplicationController
  def index
    @quizs = Question.all
  end
  
  def new
    @quiz = Question.new
  end

  def create
    @quiz = Question.new(title: params[:quiz][:title],
    question: params[:quiz][:question],
    #img: params[:quiz][:img],
    answer: params[:quiz][:answer],
    comment: params[:quiz][:comment]
    )
    if @quiz.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def show
    @quiz = Question.find(params[:id])
  end
  
  def delete
    quiz = Question.find(params[:id])
    quiz.destroy
    redirect_to '/'
  end
  
end
