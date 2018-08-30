json.set_attributes do
	json.link "http://jones.webshop8.dk/shop/showbasket.html?BasketLink=1&AddMultiple=1&ProductID=|#{@link_to_shorten.product_id}&Amount=|1&VariantGroups=|#{'Farve' if @link_to_shorten.color?}#{'%3BStørrelse' if @link_to_shorten.size?}&Variants=|#{@link_to_shorten.color}#{'%3B' if @link_to_shorten.size?}#{@link_to_shorten.size}"
end
json.messages do
	json.array! [*1] do
		json.text "http://jones.webshop8.dk/shop/showbasket.html?BasketLink=1&AddMultiple=1&ProductID=|#{@link_to_shorten.product_id}&Amount=|1&VariantGroups=|#{'Farve' if @link_to_shorten.color?}#{'%3BStørrelse' if @link_to_shorten.size?}&Variants=|#{@link_to_shorten.color}#{'%3B' if @link_to_shorten.size?}#{@link_to_shorten.size}"
	end
end
json.messages do
	json.array! [*1] do
		json.text "http://jones.webshop8.dk/shop/showbasket.html?BasketLink=1&AddMultiple=1&ProductID=|#{@link_to_shorten.product_id}&Amount=|1&VariantGroups=|#{'Farve' if @link_to_shorten.color?}#{'%3BStørrelse' if @link_to_shorten.size?}&Variants=|#{@link_to_shorten.color}#{'%3B' if @link_to_shorten.size?}#{@link_to_shorten.size}"
	end
end