class UserMailer < ApplicationMailer
    def welcom_email
        @user = params[:user]
        @url = "http://example.com/login"
        mail(to: "m15105215616@163.com", subject: "你好，我是来自未来的你")
    end
end
