class QuizsController < ApplicationController
  
  
  
  
  def index
    @quizs = Question.page(params[:page]).per(2).order(:id)
  end
  
  def new
    @quiz = Question.new
  end

  def create
    if params[:question][:file] == nil
      file = []
    else
      file = params[:question][:file].read
    end
    @quiz = Question.new(title: params[:question][:title],
    question: params[:question][:question],
    img: file,
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
  
  def get_image
    image = Question.find(params[:id])
    send_data image.img, disposition: :inline, type: 'image/png'
  end
  
  def show
    @quiz = Question.find(params[:id])
  end
  
  def answer
    @quiz = Question.find(params[:id])
    @ans = params[:pans]
    if @ans == @quiz.answer
      flash[:notice] = "正解です"
    else
      flash[:notice] = "不正解です"
    end
  end
  
  def destroy
    quiz = Question.find(params[:id])
    quiz.destroy
    flash[:notice] = "ツイートを削除しました"
    redirect_to quizs_path
  end
  

  
end
