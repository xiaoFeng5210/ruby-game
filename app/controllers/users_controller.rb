class UsersController < ApplicationController
  def create
    user = User.new name: 'zhang', email: '111@qq.com'
    if user.save
      p '保存成功'
      render json: user
    else 
      p '保存失败'  
    end
  end

  def show
    p '您访问里show'
    user = User.find_by_id params[:id]
    if user
      render json: user
    else
      head 404
    end
  end
end
