-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	-- theme = "aquarium",
	-- theme = "ashes",
	-- theme = "ayu_dark",
	-- theme = "ayu_light",
	-- theme = "bearded-arc",
	-- theme = "blossom_light",
	-- theme = "catppuccin",
	-- theme = "chadracula-evondev",
	-- theme = "chadracula",
	-- theme = "chadtain",
	-- theme = "chocolate",
	-- theme = "dark_horizon",
	-- theme = "decay",
	-- theme = "doomchad",
	-- theme = "everblush",
	-- theme = "everforest",
	-- theme = "everforest_light",
	-- theme = "falcon",
	-- theme = "flex-light",
	-- theme = "flexoki-light",
	-- theme = "flexoki",
	-- theme = "gatekeeper",
	-- theme = "github_dark",
	-- theme = "github_light",
	-- theme = "gruvbox",
	-- theme = "gruvbox_light",
	-- theme = "gruvchad",
	-- theme = "jabuti",
	-- theme = "jellybeans",
	-- theme = "kanagawa",
	-- theme = "material-darker",
	-- theme = "material-lighter",
	-- theme = "melange",
	-- theme = "mito-laser",
	-- theme = "monekai",
	-- theme = "monochrome",
	-- theme = "mountain",
	-- theme = "nano-light",
	-- theme = "nightfox",
	-- theme = "nightlamp",
	-- theme = "nightowl",
	-- theme = "nord",
	-- theme = "oceanic-light",
	-- theme = "oceanic-next",
	-- theme = "one_light",
	-- theme = "onedark",
	-- theme = "onenord",
	-- theme = "onenord_light",
	-- theme = "oxocarbon",
	-- theme = "palenight",
	-- theme = "pastelDark",
	-- theme = "pastelbeans",
	-- theme = "penumbra_dark",
	-- theme = "poimandres",
	-- theme = "radium",
	-- theme = "rosepine-dawn",
	-- theme = "rosepine",
	-- theme = "rxyhn",
	theme = "solarized_dark",
	-- theme = "solarized_light",
	-- theme = "sweetpastel",
	-- theme = "tokyodark",
	-- theme = "tokyonight",
	-- theme = "tomorrow_night",
	-- theme = "tundra",
	-- theme = "vscode_dark",
	-- theme = "wombat",
	-- theme = "yoru",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

M.ui = {
  tabufline = {
    enabled = false,
  },
}

return M
