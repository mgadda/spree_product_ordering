Admin::ProductsController.class_eval do

  def reorder
    @products = Product.active.find(:all, :order => 'position')
  end

  def order_products
    params[:product].each_with_index do |id, index|
      Product.update_all(['position=?', index+1], ['id=?', id])
    end

    head :ok
  end
end
