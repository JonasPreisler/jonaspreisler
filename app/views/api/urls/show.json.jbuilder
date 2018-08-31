json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "horizontal"
				json.elements do
					json.array! [*1] do
						json.title "Læg i kurv"
						json.image_url "https://www.jonaspreisler.com/kurv.png"
						json.subtitle "Læg i kurv"
						json.buttons do
							json.array! [*1] do
								json.type "web_url"
								json.url "#{@url.short_url}"
								json.title "Læg i kurv"
							end
						end
					end
				end
			end
		end
	end
end