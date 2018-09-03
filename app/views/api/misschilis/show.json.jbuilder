json.set_attributes do
	json.api_link "http://dd550490-9c35-4faf-9469-20f158240335@jones.webshop8.dk/admin/WEBAPI/v2/products/#{@misschili.product_id}"
end
json.messages do
	json.array! [*1] do
		json.text  "It worked!"
	end
end