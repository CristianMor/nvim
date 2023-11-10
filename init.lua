--[[
 INIT.LUA
 ]]
--

-- CORE
require("base")
require("highlights")
require("maps")

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
	require("macos")
end

if is_win then
	require("windows")
end

-- PLUGINS
require("plugins")

--[[
 INIT.LUA
--

-- CORE
require("cr1xsh0.core.options")
require("cr1xsh0.core.keymaps")
require("cr1xsh0.core.colorscheme")

-- PLUGINS
require("cr1xsh0.plugins-setup")
require("cr1xsh0.plugins.comment")
require("cr1xsh0.plugins.nvim-tree")
require("cr1xsh0.plugins.feline")
require("cr1xsh0.plugins.telescope")
require("cr1xsh0.plugins.nvim-cmp")
require("cr1xsh0.plugins.gitsigns")
require("cr1xsh0.plugins.lsp.mason")
require("cr1xsh0.plugins.lsp.lspsaga")
require("cr1xsh0.plugins.lsp.handlers")
require("cr1xsh0.plugins.lsp.null-ls")
require("cr1xsh0.plugins.auto-pairs")
require("cr1xsh0.plugins.treesitter")
 ]]
--
