-- colours

local orh = {}
orh.base = {
  [0] = '#f7f3ed',
  [1] = '#e8dfd5',
  [2] = '#a38f77',
  [3] = '#695c4f',
  [4] = '#5c5249',
  [5] = '#4a433d',
  [6] = '#36322f',
}
orh.blush = {
  [0] = '#e3d586',
  [1] = '#e0ab6e',
  [2] = '#de705f',
}
orh.sky = {
  [0] = '#a8b891',
  [1] = '#5b785c',
  [2] = '#b6d9de',
  [3] = '#7baec7',
  [4] = '#4e648a',
  [5] = '#b0718a',
}

-- terminal colours

function orh.terminal_color()
  vim.g.terminal_color_0  = orh.base[6]
  vim.g.terminal_color_1  = orh.sky[5]
  vim.g.terminal_color_2  = orh.sky[1]
  vim.g.terminal_color_3  = orh.blush[1]
  vim.g.terminal_color_4  = orh.sky[4]
  vim.g.terminal_color_5  = orh.base[4]
  vim.g.terminal_color_6  = orh.base[2]
  vim.g.terminal_color_7  = orh.base[1]
  vim.g.terminal_color_8  = orh.base[5]
  vim.g.terminal_color_9  = orh.blush[2]
  vim.g.terminal_color_10 = orh.sky[0]
  vim.g.terminal_color_11 = orh.blush[0]
  vim.g.terminal_color_12 = orh.sky[3]
  vim.g.terminal_color_13 = orh.base[3]
  vim.g.terminal_color_14 = orh.sky[2]
  vim.g.terminal_color_15 = orh.base[0]
end

local highlight_groups = {
	-- text analysis
  Normal = {fg = orh.base[0]},
	Comment = {fg = orh.base[3], style = 'italic'},
	NonText = {fg = orh.base[5]},
	EndOfBuffer = 'NonText',
	Whitespace  = 'NonText',

	-- literals
	Constant = {fg = orh.sky[2]},
	String = {fg = orh.sky[1]},
	Character = {fg = orh.sky[0]},
	Number  = {fg = orh.sky[3]},
	Boolean = {fg = orh.sky[3]},
	Float   = 'Number',

	-- identifiers
	Identifier = Normal,
	Function = {fg = orh.blush[0]},

	-- syntax
	Statement   = {fg = orh.blush[1]},
	Conditional = {fg = orh.blush[1], style = 'italic'},
	Repeat   = {fg = orh.blush[1], style = 'italic'},
	Label    = {fg = orh.blush[2], style = 'bold'},
	Operator = {fg = orh.blush[2], style = 'bold'},
	Keyword  = {fg = orh.blush[1]},
	Exception = {fg = orh.blush[2], style = 'bold'},
	Noise = 'Delimiter',

	-- metatextual info
	PreProc = {fg = orh.sky[0]},
	Include = {fg = orh.sky[0], style = 'nocombine'},
	Define = {fg = orh.blush[1], style = 'nocombine'},
	Macro  = {fg = orh.blush[1], style = 'italic'},
	PreCondit = {fg = orh.sky[0], style = 'italic'},

	-- semantics
	Type         = {fg = orh.sky[4]},
	StorageClass = {fg = orh.sky[4], style = 'bold'},
	Structure = {fg = orh.sky[4], style = 'bold'},
	Typedef = {fg = orh.sky[4], style = 'italic'},

	-- edge cases
	Special = {fg = orh.sky[5], style = 'bold'},
	SpecialChar = {fg = orh.sky[5], style = 'italic'},
	SpecialKey = 'Character',
	Tag = 'Underlined',
	Delimiter = {fg = orh.base[1]},
	SpecialComment = {fg = orh.base[4], style = {'bold', 'nocombine'}},
	Debug = 'WarningMsg',

	-- help
	Underlined = {fg = orh.sky[3], style = 'underline'},
	Ignore = {fg = orh.base[3]},
	Error = {fg = orh.base[0], bg = orh.blush[2], style = 'bold'},
	Todo = {fg = black, bg = orh.blush[0], style = 'bold'},
	Hint = {fg = black, bg = orh.sky[0], style = 'bold'},
	Info = {fg = black, bg = orh.sky[2], style = 'bold'},
	Warning = {fg = black, bg = orh.blush[1], style = 'bold'},

	--- editor ui
	-- status line
	StatusLine = {fg = orh.base[1], bg = orh.base[5]},
	StatusLineNC = function(self) return {fg = orh.base[2], bg = self.StatusLine.bg} end,
	StatusLineTerm = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	-- separators
	FloatBorder = {fg = orh.base[2]},
	TabLine = function(self) return {fg = orh.base[0], bg = self.StatusLine.bg} end,
	TabLineFill = function(self) return {fg = self.TabLine.bg, bg = orh.base[6]} end,
	TabLineSel = function(self) return {fg = self.TabLine.fg, bg = orh.base[6]} end,
	Title = {style = 'bold'},
	VertSplit = {fg = orh.base[1]},

	-- conditional line highlighting
	Conceal = 'NonText',
	CursorLine   = {bg = orh.base[4]},
	CursorLineNr = function(self) return {fg = orh.sky[5], bg = self.LineNr.bg} end,
	debugBreakpoint = 'ErrorMsg',
	debugPC = 'ColorColumn',
	LineNr  = {fg = orh.base[3]},
	QuickFixLine = function(self) return {bg = self.StatusLine.bg} end,
	Visual    = {style = 'inverse'},
	VisualNOS = {bg = orh.base[4]},

	-- popup menu
	Pmenu = {fg = orh.base[0], bg = orh.base[4]},
	PmenuSbar = {bg = orh.base[5]},
	PmenuSel  = {fg = orh.base[6], bg = orh.base[2]},
	PmenuThumb = {bg = orh.base[0]},
	WildMenu = 'PmenuSel',

	-- folds
	FoldColumn = {bg = orh.base[5], style = 'bold'},
	Folded = {fg = orh.base[6],  bg = orh.sky[5], style = 'italic'},

	-- diffs
	DiffAdd    = {fg = orh.base[6], bg = orh.sky[1]},
	DiffChange = {},
	DiffDelete = function(self) return {fg = self.DiffAdd.fg, bg = orh.blush[2]} end,
	DiffText   = function(self) return {fg = self.DiffAdd.fg, bg = orh.blush[0]} end,

	-- searching
	IncSearch  = {style = 'inverse'},
	MatchParen = {fg = orh.sky[0], style = {'bold', 'underline'}},
	Search = {style = {'underline', color = orh.base[0]}},

	-- spelling
	SpellBad   = {style = {'undercurl', color = orh.blush[2]}},
	SpellCap   = {style = {'undercurl', color = orh.blush[0]}},
	SpellLocal = {style = {'undercurl', color = orh.sky[0]}},
	SpellRare  = {style = {'undercurl', color = orh.blush[1]}},

	-- conditional column highlighting
	ColorColumn = {style = 'inverse'},
	SignColumn  = {},

	-- messages
	ErrorMsg = {fg = orh.blush[2], style = 'bold'},
	HintMsg  = {fg = orh.sky[0], style = 'italic'},
	InfoMsg  = {fg = orh.sky[2], style = 'italic'},
	ModeMsg  = {fg = orh.blush[0]},
	WarningMsg = {fg = orh.blush[1], style = 'bold'},
	Question   = {fg = orh.blush[1], style = 'underline'},

	--lsp / diagnostics
	DiagnosticError = 'Error',
	DiagnosticFloatingError = 'ErrorMsg',
	DiagnosticSignError = 'DiagnosticFloatingError',

	DiagnosticWarn = 'Warning',
	DiagnosticFloatingWarn = 'WarningMsg',
	DiagnosticSignWarn = 'DiagnosticFloatingWarn',

	DiagnosticHint = 'Hint',
	DiagnosticFloatingHint = 'HintMsg',
	DiagnosticSignHint = 'DiagnosticFloatingHint',

	DiagnosticInfo = 'Info',
	DiagnosticFloatingInfo = 'InfoMsg',
	DiagnosticSignInfo = 'DiagnosticFloatingInfo',

	DiagnosticUnderlineError = {style = {'undercurl', color = orh.blush[2]}},
	DiagnosticUnderlineHint  = {style = {'undercurl', color = orh.sky[0]}},
	DiagnosticUnderlineInfo  = {style = {'undercurl', color = orh.sky[2]}},
	DiagnosticUnderlineWarn = {style = {'undercurl', color = orh.blush[1]}},

	LspDiagnosticsDefaultError = 'DiagnosticError',
	LspDiagnosticsFloatingError = 'DiagnosticFloatingError',
	LspDiagnosticsSignError = 'DiagnosticSignError',

	LspDiagnosticsDefaultWarning = 'DiagnosticWarn',
	LspDiagnosticsFloatingWarning = 'DiagnosticFloatingWarn',
	LspDiagnosticsSignWarning = 'DiagnosticSignWarn',

	LspDiagnosticsDefaultHint = 'DiagnosticHint',
	LspDiagnosticsFloatingHint = 'DiagnosticFloatingHint',
	LspDiagnosticsSignHint = 'DiagnosticSignHint',

	LspDiagnosticsDefaultInformation = 'DiagnosticInfo',
	LspDiagnosticsFloatingInformation = 'DiagnosticFloatingInfo',
	LspDiagnosticsSignInformation = 'DiagnosticSignInfo',

	LspDiagnosticsUnderlineError = 'DiagnosticUnderlineError',
	LspDiagnosticsUnderlineHint  = 'DiagnosticUnderlineHint',
	LspDiagnosticsUnderlineInfo  = 'DiagnosticUnderlineInfo',
	LspDiagnosticsUnderlineWarning = 'DiagnosticUnderlineWarn',

	-- cursor
	Cursor   = {style = 'inverse'},
	CursorIM = 'Cursor',
	CursorColumn = {bg = orh.base[4]},

	-- misc
	Directory = {fg = orh.sky[0], style = 'bold'},
}

local highlight_languages = {
  -- git
	diffAdded = 'DiffAdd',
	diffRemoved = 'DiffDelete',
	gitcommitHeader = 'SpecialComment',
	gitcommitDiscardedFile = 'gitcommitSelectedFile',
	gitcommitOverFlow = 'Error',
	gitcommitSelectedFile = 'Directory',
	gitcommitSummary  = 'Title',
	gitcommitUntrackedFile = 'gitcommitSelectedFile',
	gitconfigAssignment = 'String',
	gitconfigEscape = 'SpecialChar',
	gitconfigNone  = 'Operator',
	gitconfigSection = 'Structure',
	gitconfigVariable = 'Label',
	-- gitreorh.baseBreak = 'Keyword',
	-- gitreorh.baseCommit = 'Tag',
	-- gitreorh.baseDrop = 'Exception',
	-- gitreorh.baseEdit = 'Define',
	-- gitreorh.baseExec = 'PreProc',
	-- gitreorh.baseFixup = 'gitreorh.baseSquash',
	-- gitreorh.baseMerge = 'PreProc',
	-- gitreorh.basePick  = 'Include',
	-- gitreorh.baseReset = 'gitreorh.baseLabel',
	-- gitreorh.baseReword  = 'gitreorh.basePick',
	-- gitreorh.baseSquash  = 'Macro',
	-- gitreorh.baseSummary = 'Title',

	-- html
	htmlArg    = 'Label',
	htmlBold   = {fg = orh.base[0], style = 'bold'},
	htmlTitle  = 'htmlBold',
	htmlEndTag = 'htmlTag',
	htmlH1 = 'markdownH1',
	htmlH2 = 'markdownH2',
	htmlH3 = 'markdownH3',
	htmlH4 = 'markdownH4',
	htmlH5 = 'markdownH5',
	htmlH6 = 'markdownH6',
	htmlItalic  = {style = 'italic'},
	htmlSpecialTagName = 'Keyword',
	htmlTag  = 'Special',
	htmlTagN = 'Typedef',
	htmlTagName = 'Type',

  -- lua
	luaBraces   = 'Structure',
	luaBrackets = 'Delimiter',
	luaBuiltin  = 'Keyword',
	luaComma    = 'Delimiter',
	luaFuncArgName = 'Identifier',
	luaFuncCall = 'Function',
	luaFuncId   = 'luaNoise',
	luaFuncKeyword = 'Type',
	luaFuncName   = 'Function',
	luaFuncParens = 'Delimiter',
	luaFuncTable  = 'Structure',
	luaIn     = 'luaRepeat',
	luaLocal  = 'Type',
	luaNoise  = 'Delimiter',
	luaParens = 'Delimiter',
	luaSpecialTable = 'Structure',
	luaSpecialValue = 'Function',
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return {bg = delimiter.bg, fg = delimiter.fg, style = 'italic'}
	end,

  -- markdown
	markdownCode = 'mkdCode',
	markdownCodeDelimiter = 'mkdCodeDelimiter',
	markdownH1 = {fg = orh.blush[2], style = 'bold'},
	markdownH2 = {fg = orh.blush[1], style = 'bold'},
	markdownH3 = {fg = orh.blush[0], style = 'bold'},
	markdownH4 = {fg = orh.sky[0], style = 'bold'},
	markdownH5 = {fg = orh.sky[2], style = 'bold'},
	markdownH6 = {fg = orh.sky[4], style = 'bold'},
	markdownLinkDelimiter = 'mkdDelimiter',
	markdownLinkText = 'mkdLink',
	markdownLinkTextDelimiter = 'markdownLinkDelimiter',
	markdownUrl = 'mkdURL',
	mkdBold = 'Ignore',
	mkdBoldItalic = 'mkdBold',
	mkdCode = 'Keyword',
	mkdCodeDelimiter = 'mkdBold',
	mkdCodeEnd = 'mkdCodeStart',
	mkdCodeStart = 'mkdCodeDelimiter',
	mkdDelimiter = 'Delimiter',
	mkdHeading = 'Delimiter',
	mkdItalic  = 'mkdBold',
	mkdLineBreak = 'NonText',
	mkdLink = 'Underlined',
	mkdListItem  = 'Special',
	mkdRule = function(self) return {fg = self.Ignore.fg, style = {'underline', color = self.Delimiter.fg}} end,
	mkdURL = 'htmlString',

  -- python
	pythonBrackets    = 'Delimiter',
	pythonBuiltinFunc = 'Operator',
	pythonBuiltinObj  = 'Type',
	pythonBuiltinType = 'Type',
	pythonClass       = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator  = 'PreProc',
	pythonDottedName = 'Identifier',
	pythonError     = 'Error',
	pythonException = 'Exception',
	pythonInclude   = 'Include',
	pythonIndentError = 'pythonError',
	pythonLambdaExpr  = 'pythonOperator',
	pythonOperator = 'Operator',
	pythonParam    = 'Identifier',
	pythonParameters = 'Delimiter',
	pythonSelf = 'Statement',
	pythonSpaceError = 'pythonError',
	pythonStatement  = 'Statement',

  -- rust
	rustAssert = 'Debug',
	rustCharacterDelimiter = 'rustNoise',
	rustIdentifier = 'Identifier',
	rustStaticLifetime = 'rustStorage',
	rustStringDelimiter = 'rustNoise',

  -- shell
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop  = 'Repeat',
	shParen = 'Delimiter',
	shQuote = 'Delimiter',
	shSet   = 'Statement',
	shTestOpr = 'Debug',

  -- toml
	tomlComment = 'Comment',
	tomlDate  = 'Special',
	tomlFloat = 'Float',
	tomlKey   = 'Label',
	tomlTable = 'Structure',

  -- vim script
	vimCmdSep   = 'Delimiter',
	vimFunction = 'Function',
	vimFgBgAttrib = 'Constant',
	vimHiCterm = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup = 'Typedef',
	vimHiGui   = 'vimHiCterm',
	vimHiGuiFgBg = 'vimHiGui',
	vimHiKeyList = 'Operator',
	vimIsCommand = 'Identifier',
	vimOption = 'Keyword',
	vimScriptDelim = 'Ignore',
	vimSet = 'String',
	vimSetEqual = 'Operator',
	vimSetSep   = 'Delimiter',
	vimUserFunc = 'vimFunction',

  -- vim tex
	texMathRegion = 'Number',
	texMathSub   = 'Number',
	texMathSuper = 'Number',
	texMathRegionX  = 'Number',
	texMathRegionXX = 'Number',

   -- xml
	xmlAttrib = 'htmlArg',
	xmlEndTag = 'xmlTag',
	xmlEqual  = 'Operator',
	xmlTag    = 'htmlTag',
	xmlTagName = 'htmlTagName',

  -- yaml
	yamlInline = 'Delimiter',
	yamlKey = 'Label',
}

local async_load_plugin

local set_hl = function(tbl)
  for group, conf in pairs(tbl) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
  orh.terminal_color()
  set_hl(highlight_language)
  async_load_plugin:close()
end))

function orh.colorscheme()
  vim.api.nvim_command("hi clear")

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "orhcolour"
  set_hl(highlight_groups)
  async_load_plugin:send()
end

orh.colorscheme()

return orh
