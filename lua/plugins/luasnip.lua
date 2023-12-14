return {
	"L3MON4D3/LuaSnip",

	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node

		-- My snippets

		-- System.out.printf("") for java
		ls.add_snippets("java", {
			s("soutf", {
				t('System.out.printf("'),
				i(1),
				t('");'),
			}),
		})

		-- console.log() for javascript
		ls.add_snippets("javascript", {
			s("clog", {
				t("console.log("),
				i(1),
				t(");"),
			}),
		})
	end,
}
