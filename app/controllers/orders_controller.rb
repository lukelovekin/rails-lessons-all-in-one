class OrdersController < ApplicationController
  def new

    @book = Book.find(params[:book_id])


    #shouldnt have to use sk like i have below
    Stripe.api_key = "sk_test_8NDmLFeDGQUO82smYtX2ykiP00plr452RV"
@session = Stripe::Checkout::Session.create(
payment_method_types: ['card'],
line_items: [{
name: @book.title,
description: "by #{@book.author.full_name}",
# images: [@book.picture],
amount: (@book.price * 100).to_i,
currency: 'aud',
quantity: 1,
}],
success_url: 'http://localhost:3000/orders/complete',
cancel_url: 'http://localhost:3000/orders/cancel',
)
puts @session
  end
end
