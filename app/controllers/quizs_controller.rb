class QuizsController < ApplicationController
  def index
    @quizs = Question.all
  end
  
  def new
    @quiz = Question.new
  end

  def create
    @quiz = Question.new(title: params[:question][:title],
    question: params[:question][:question],
    #img: params[:question][:img],
    answer: params[:question][:answer],
    comment: params[:question][:comment]
    )
    if @quiz.save
      flash[:notice] = "投稿しました"
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def show
    @quiz = Question.find(params[:id])
  end
  
  def answer
    flash[:notice] = "正解です"
  end
  
  def destroy
    quiz = Question.find(params[:id])
    quiz.destroy
    flash[:notice] = "ツイートを削除しました"
    redirect_to quizs_path
  end
  
end
