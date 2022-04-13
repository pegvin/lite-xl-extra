-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
	name = "Julia",
	files = { "%.jl$" },

	-- Character to append when pressing the shortcut key for adding comments
	comment = "#",
	patterns = {
		{ pattern = { "#=\n?", "%s?=#" },         type = "comment"  }, -- Multiline Comments
		{ pattern = "#.-\n",                      type = "comment"  }, -- Single Line Comment
		{ pattern = { "%s\"\"\"", "%s?\"\"\"" },  type = "string"   }, -- Multiline String
		{ pattern = { '"', '"', '\\' },           type = "string"   }, -- Normal Strings
		{ pattern = "-?%d+[%d%.eE]*f?",           type = "number"   }, -- Numbers

		-- Operators + - = / % *
		{ pattern = "[%+ %- = / %* %%]",          type = "operator" },

		-- Conditionals "!" "||" "&&"
		-- Comparison "==" "!=" "<" ">" "=<" ">="
		-- Bit shifting "<<" ">>"
		-- Logical Right Shifting ">>>"
		-- Bitwise AND "&"
		-- Bitwise XOR "⊻"
		-- Bitwise OR "|"
		-- Bitwise NOT "~"
		{ pattern = "[%⊻%%<>!~|&]",               type = "operator" },

		-- Type Inferfence Operator
		{ pattern = ":=",                         type = "operator" },

		-- Function Names With a-z, A-Z & _ In them
		{ pattern = "[%a_][%w_]*%f[(]",           type = "function" },

		-- Variable/Symbol Names With a-z, A-Z & _ In them
		{ pattern = "[%a_][%w_]*",                type = "symbol"   },

		-- Macros
		{ pattern = "@%a+",                       type = "keyword2" },
	},
	symbols = {
		-- Keywords
		["begin"]      = "keyword",
		["while"]      = "keyword",
		["if"]         = "keyword",
		["for"]        = "keyword",
		["try"]        = "keyword",
		["return"]     = "keyword",
		["break"]      = "keyword",
		["continue"]   = "keyword",
		["function"]   = "keyword",
		["macro"]      = "keyword",
		["quote"]      = "keyword",
		["let"]        = "keyword",
		["local"]      = "keyword",
		["global"]     = "keyword",
		["const"]      = "keyword",
		["do"]         = "keyword",
		["struct"]     = "keyword",
		["module"]     = "keyword",
		["baremodule"] = "keyword",
		["using"]      = "keyword",
		["import"]     = "keyword",
		["export"]     = "keyword",
		["end"]        = "keyword",
		["else"]       = "keyword",
		["elseif"]     = "keyword",
		["catch"]      = "keyword",
		["finally"]    = "keyword",
		["abstract"]   = "keyword",
		["mutable"]    = "keyword",
		["primitive"]  = "keyword",
		["type"]       = "keyword",
		["true"]       = "keyword2",
		["false"]      = "keyword2"
	},
}
