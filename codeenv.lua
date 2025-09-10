-- This pandoc Lua filter to converts the custom LaTeX 'code' environment into an HTML <pre> tag.
function Div(element)
	if element.classes:includes("code") then
		local chunks = {}
		for _, inner in ipairs(element.content) do
			if inner.t == "Para" then
				local text = {}
				for _, part in ipairs(inner.content) do
					if part.t == "SoftBreak" or part.t == "LineBreak" then
						text[#text+1] = "\n"
					else
						text[#text+1] = pandoc.utils.stringify(part)
					end
				end
				chunks[#chunks+1] = table.concat(text)
			end
		end
		return pandoc.CodeBlock(table.concat(chunks, "\n"), {})
	end
end
