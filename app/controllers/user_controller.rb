#  --  coding:utf-8  --  #

class UserController < ApplicationController

  def index  #TOP画面
  end

  def register  #ユーザー登録画面
  end

  def create  #ユーザーのデータを受け取って登録する
    if !params[:name].empty?#名前が入力されていたら
      name = params[:name]
      p name
      user = User.new
      user.name = name
      user.save
      @f_cre = true
    else
      @f_cre = false
    end
  end

  def show
    @boards = Board.get_all
    @deck_max_num = User.hoge(1)
#    @users = User.find(params[:id])
  end

  def to_experiment
    @method_true = Board.method_test_true(false)
    @array_plusequal = Board.array_plusequal
    # bitの初期化
    unless session[:bit].nil?
    else
      @bit = User.bit_init
    end
    p "to_experiment => @bit="+@bit.bit.to_s
  end

  def bit_toggle
    @bit = session[:bit]
    @bit.toggle
    session[:bit] = @bit
    redirect_to :controller => 'use', :action => 'to_experiment'
  end

end
