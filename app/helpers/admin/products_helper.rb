module Admin::ProductsHelper
  def render_product_status(product)
    if product.is_shelved
      content_tag(:span, "", :class => "fa fa-arrow-circle-up")
    else
      content_tag(:span, "", :class => "fa fa-arrow-circle-down")
    end
  end

end
