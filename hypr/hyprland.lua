-- Hyprland Lua entrypoint.
-- Keep this file as a loader and split the actual settings into modules.

local config_dir = debug.getinfo(1, "S").source:match("^@(.*/)")
local module_dir = config_dir .. "modules/"

local ctx = {}

local function load_module(name)
	local loaded = dofile(module_dir .. name .. ".lua")
	if type(loaded) == "function" then
		loaded(ctx)
	end
end

load_module("startup")
load_module("environment")
load_module("monitors")
load_module("programs")
load_module("appearance")
load_module("input")
load_module("bindings")
load_module("rules")
