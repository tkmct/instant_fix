class UserMailer < ApplicationMailer
  default from: 'info@ladyfirst.com'

  def good_mail(solution)
    @user = solution.user
    @solution = solution
    mail(to: @user.email, subject: "Instant Fix あなたの投稿にいいねがつきました！")
  end
end
