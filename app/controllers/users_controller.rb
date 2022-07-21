class UsersController < ApplicationController
  def create
    user = User.new name: 'zhang' email: '111@qq.com'
    
  end

  def show
    p '您访问里show'

  end
end
