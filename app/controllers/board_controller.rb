#  --  coding:utf-8  --  #

class BoardController < ApplicationController

  def confirm#確認画面
      @para = params[:para].to_i
    if @para == 1#更新
    elsif @para == 2#削除
    else#
    end
  end

  def input
  end

  def transmit
    p 'success'
    if !params[:content].empty?#コメントが空でなかったら
      if params[:user_id]#ユーザーがいれば
        name = params[:user_id].to_i
        content = params[:content]
        p name
        p content
        board = Board.new
        board.user_id = name
        board.content = content
        board.save
        @f_tra = 1
      else
        @f_tra = false
      end
    else
      @f_tra = -1
    end
  end

  def edit
    if params[:id]
      @id = params[:id].to_i
    end
  end

  def update
    p params[:id]
    p params[:content_edit]
    if !params[:content_edit].empty?#コメントが空でなかったら
        id = params[:id]
        content = params[:content_edit].to_s
        p id
        p content
        board = Board.find(id)
        board.content = content #この書き方でも可能だが、
        board.save               #更新日時が変更されるか不明
        #board.update_attribute("content", content)
        @f_upd = true
    else
      @f_upd = false
    end
  end

  def delete
    if params[:id]
      content_id = params[:id].to_i
      Board.delete(content_id)
    end
  end

end
