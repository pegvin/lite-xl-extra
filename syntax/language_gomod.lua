-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
	name = "Go Module",
	files = { "go.mod" },

	-- Character to append when pressing the shortcut key for adding comments
	comment = "//",
	patterns = {
		{ pattern = "//.-\n",                     type = "comment"  }, -- Comments
		{ pattern = "[%a_][%w_]*",                type = "string"   }, -- Strings
		{ pattern = "[%d%.%d]",                   type = "number"   }, -- Numbers
	},
	symbols = {
		-- Keywords
		["go"]              = "keyword",
		["module"]          = "keyword",
		["require"]         = "keyword",
		["exclude"]         = "keyword",
		["replace"]         = "keyword",
		["retract"]         = "keyword",
	},
}
