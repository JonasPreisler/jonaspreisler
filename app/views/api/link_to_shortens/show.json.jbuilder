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
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "horizontal"
				json.elements do
					json.title "Læg i kurv"
					json.image_url "#{image_tag ('/kurv.png')}"
					json.subtitle "Læg i kurv"
					json.buttons do
						json.array! [*1] do
							json.type "web_url"
							json.url "http://jones.webshop8.dk/shop/showbasket.html?BasketLink=1&AddMultiple=1&ProductID=|#{@link_to_shorten.product_id}&Amount=|1&VariantGroups=|#{'Farve' if @link_to_shorten.color?}#{'%3BStørrelse' if @link_to_shorten.size?}&Variants=|#{@link_to_shorten.color}#{'%3B' if @link_to_shorten.size?}#{@link_to_shorten.size}?v=%20"
							json.title "Læg i kurv"
						end
					end
				end
			end
		end
	end
end