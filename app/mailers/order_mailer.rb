class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDstore] thanks for your shopping,
    here is the detail#{order.token}")
  end
end
