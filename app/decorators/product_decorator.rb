if Product.table_exists?
  Product.class_eval do
    acts_as_list
    default_scope :order => "product_position"
    scope :ordered, :order => 'product_position'
  end
end