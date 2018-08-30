json.set_attributes do
	json.link "http://jones.webshop8.dk/shop/showbasket.html?BasketLink=1&AddMultiple=1&ProductID=|#{@link_to_shorten.product_id}&Amount=|1&VariantGroups=|Farve%3BStørrelse&Variants=|#{@link_to_shorten.color}%3B#{@link_to_shorten.size}"
end