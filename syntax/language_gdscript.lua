-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
	name = "GD Script",
	files = { "%.gd$" },

	-- Character to append when pressing the shortcut key for adding comments
	comment = "#",
	patterns = {
		{ pattern = "#.-\n",                      type = "comment"  }, -- Single Line Comment
		{ pattern = { "\"\"\"", "%\"\"\"" },      type = "comment"  }, -- Multiline Comments
		{ pattern = { "%s\"\"\"", "%s?\"\"\"" },  type = "string"   }, -- Multiline String
		{ pattern = { '"', '"', '\\' },           type = "string"   }, -- Normal Strings
		{ pattern = "0x[0-9a-z]",                 type = "number"   }, -- HexaDecimal
		{ pattern = "0b[0-1]",                    type = "number"   }, -- Binary
		{ pattern = "-?%d+[%d%.eE]*f?",           type = "number"   },

		-- Operators + - = / % *
		{ pattern = "[%+ %- = / %* %%]",          type = "operator" },

		-- Conditionals "!" "||" "&&"
		-- Comparison "==" "!=" "<" ">" "=<" ">="
		-- Bit shifting "<<" ">>"
		-- Bitwise AND "&"
		-- Bitwise XOR "^"
		-- Bitwise OR "|"
		-- Bitwise NOT "~"
		{ pattern = "[%^%%<>!~|&]",               type = "operator" },

		-- Type Inferfence Operator
		{ pattern = ":=",                         type = "operator" },

		-- Function Names With a-z, A-Z & _ In them
		{ pattern = "[%a_][%w_]*%f[(]",           type = "function" },

		-- Variable/Symbol Names With a-z, A-Z & _ In them
		{ pattern = "[%a_][%w_]*",                type = "symbol"   },
	},
	symbols = {
		-- Keywords
		["is"]          = "keyword",
		["as"]          = "keyword",
		["in"]          = "keyword",
		["not"]         = "keyword",
		["and"]         = "keyword",
		["if"]          = "keyword",
		["else"]        = "keyword",
		["elif"]        = "keyword",
		["for"]         = "keyword",
		["while"]       = "keyword",
		["match"]       = "keyword",
		["break"]       = "keyword",
		["continue"]    = "keyword",
		["pass"]        = "keyword",
		["return"]      = "keyword",
		["class"]       = "keyword",
		["extends"]     = "keyword",
		["is"]          = "keyword",
		["as"]          = "keyword",
		["self"]        = "keyword",
		["tool"]        = "keyword",
		["signal"]      = "keyword",
		["func"]        = "keyword",
		["static"]      = "keyword",
		["const"]       = "keyword",
		["enum"]        = "keyword",
		["var"]         = "keyword",
		["onready"]     = "keyword",
		["export"]      = "keyword",
		["setget"]      = "keyword",
		["breakpoint"]  = "keyword",
		["preload"]     = "keyword",
		["yield"]       = "keyword",
		["assert"]      = "keyword",
		["remote"]      = "keyword",
		["master"]      = "keyword",
		["puppet"]      = "keyword",
		["remotesync"]  = "keyword",
		["mastersync"]  = "keyword",
		["puppetsync"]  = "keyword",
		["class_name"]  = "keyword2",

		-- Constants
		["TAU"]         = "keyword2",
		["INF"]         = "keyword2",
		["NAN"]         = "keyword2",
		["PI"]          = "keyword2",

		-- Types
		["null"]        = "keyword2",
		["bool"]        = "keyword2",
		["int"]         = "keyword2",
		["float"]       = "keyword2",
		["String"]      = "keyword2",
	},
}
