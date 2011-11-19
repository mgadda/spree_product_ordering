Rails.application.routes.draw do
  namespace :admin do
    match 'products/reorder' => 'products#reorder'
    match 'products/order_products' => 'products#order_products'
  end
end