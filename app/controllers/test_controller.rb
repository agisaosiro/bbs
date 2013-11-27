#  --  coding:utf-8  --  #

class TestController < ApplicationController

  def index  #TOP画面
  end

  def register  #ユーザー登録画面
  end

  def create  #ユーザーのデータを受け取って登録する
    if params[:name]
      name = params[:name]
      p name
      test = Test.new
      test.name = name
      test.save
    end
  end

  def show
    @deck_max_num = Test.hoge(1)
#    @users = Test.find(params[:id])
  end
end
