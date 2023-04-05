local colour = require 'hveitivangr.colour'
local hl = {}

hl.editor = {
	LineNr = {fg = colour.shadow},
	CursorLine = {bg = colour.jet},
  CursorLineNr = {fg = colour.eggshell, bold = true},

	VertSplit = {fg = colour.umber},
	Visual    = {fg = colour.umber, bg = colour.eggshell},

	-- cursor
	Cursor = {reverse = true},
	CursorIM = 'Cursor',
	CursorColumn = {bg = colour.jet},
	SignColumn = 'CursorColumn',

	-- status line
	StatusLine = {fg = colour.eggshell, bg = colour.jet},
	StatusLineNC = {fg = colour.jet, bg = colour.jet},
	StatusLineTerm = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	-- searching
	IncSearch = {reverse = true},
	MatchParen = {fg = colour.lavender, bold = true, underline = true},
	Search = {bg = colour.umber, underline = true},

	-- diffs
	DiffAdd = {fg = colour.celadon},
	DiffChange = {fg = colour.jasmine},
	DiffDelete = {fg = colour.terracotta},
	DiffText = {fg = colour.umber},

	-- pmenu
	Pmenu = {fg = colour.eggshell, bg = colour.umber},
	PmenuSel = {fg = colour.umber, bg = colour.eggshell},
	-- PmenuSbar = PmenuSel,
	-- PmenuThumb = {bg = colour.jasmine},

	-- diagnostics
	Error = {fg = colour.terracotta},
	ErrorMsg = 'Error',
}

hl.textanalysis = {
	-- text analysis
  Normal = {fg = colour.white},
	Comment = {fg = colour.web, italic = true},
	NonText = {fg = colour.umber},
	EndOfBuffer = 'NonText',
	Whitespace = 'NonText',

	-- literals
	Constant = {fg = colour.sky},
	Boolean = 'Constant',
	Number = 'Constant',
	Float = 'Number',
	Character = {fg = colour.tea},
	String = {fg = colour.celadon},

	-- identifiers
	Identifier = {fg = colour.powder, italic = true},
	Function = {fg = colour.jasmine},

	-- syntax
	Statement = {fg = colour.sunray},
	Conditional = {fg = colour.sunray, italic = true},
	Repeat = {fg = colour.sunray, italic = true},
	Label = {fg = colour.sunray, bold = true},
	Operator = {fg = colour.blond},
	Keyword = {fg = colour.sunray},
	Exception = {fg = colour.lavender, bold = true},
	Noise = 'Delimiter',

	-- metatextual info
	PreProc = {fg = colour.blond, italic = true},
	Include = {fg = colour.frost, nocombine = true},
	-- Define = {fg = '#ff0000', nocombine = true},
	Macro = {fg = colour.blond, italic = true},
	-- PreCondit = {fg = '#ff0000', italic = true},

	-- semantics
	Type = {fg = colour.powder, italic = true},
	StorageClass = {fg = colour.sunray, italic = true},
	Structure = {fg = colour.powder, italic = true},
	Typedef = {fg = colour.powder, italic = true},

	-- edge cases
	Special = {fg = colour.powder, italic = true},
	SpecialChar = {fg = colour.celadon, italic = true},
	SpecialKey = 'Character',
	Tag = 'Underlined',
	Delimiter = {fg = colour.white},
	SpecialComment = {fg = colour.tea, italic = true, nocombine = true},
	Debug = 'WarningMsg',
  
}

hl.plugins = {
  -- treesitter
	["@parameter"] = 'Normal',
	["@variable"] = 'Normal',
	["@field"] = 'Normal',
	["@variable.builtin"] = 'Structure',
	["@include"] = 'Keyword',
	["@storageclass"] = 'StorageClass',
	["@type.qualifier"] = 'StorageClass',
	["@type.qualifier"] = 'StorageClass',
	["@exception"] = {fg = colour.terracotta, italic = true},
	["@namespace"] = {fg = colour.lavender},
	["@constructor"] = 'Delimeter',
	["@function.call"] = 'Function',
	["@function.builtin"] = 'Function',

	-- lsp
	LspInfoFiletype = {fg = colour.sky},
	LspInfoList = {fg = colour.jasmine},
	LspInfoTitle = {fg = colour.sky, bold = true},

	DiagnosticError = {fg = colour.terracotta},
	DiagnosticHint = {fg = colour.sky},
	DiagnosticInfo = {fg = colour.celadon},
	DiagnosticWarn = {fg = colour.jasmine},
	DiagnosticFloatingError = 'DiagnosticError',
	DiagnosticFloatingHint = 'DiagnosticHint',
	DiagnosticFloatingInfo = 'DiagnosticInfo',
	DiagnosticFloatingWarn = 'DiagnosticWarn',
	DiagnosticSignError = 'DiagnosticError',
	DiagnosticSignHint = 'DiagnosticHint',
	DiagnosticSignInfo = 'DiagnosticInfo',
	DiagnosticSignWarn = 'DiagnosticWarn',
	DiagnosticUnderlineError = {underline = true},
	DiagnosticUnderlineHint = {underline = true},
	DiagnosticUnderlineInfo = {underline = true},
	DiagnosticUnderlineWarn = {underline = true},
	DiagnosticVirtualTextError = 'DiagnosticError',
	DiagnosticVirtualTextHint = 'DiagnosticHint',
	DiagnosticVirtualTextInfo = 'DiagnosticInfo',
	DiagnosticVirtualTextWarn = 'DiagnosticWarn',
}

hl.languages = {
  -- lua
	luaFunc = 'Function',
  luaTable = 'Delimiter',

	-- markdown
	markdownH1 = {fg = colour.celadon, bold = true},
	markdownH2 = {fg = colour.celadon, bold = true, italic = true},
	markdownH3 = {fg = colour.tea, bold = true},
	markdownH4 = {fg = colour.tea, bold = true, italic = true},
	markdownError = 'Error',
}

return hl
