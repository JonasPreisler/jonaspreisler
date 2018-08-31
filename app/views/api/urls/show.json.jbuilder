json.messages do
	json.array! [*1] do
		json.text "Your bitly link: #{@url.short_url}"
	end
end