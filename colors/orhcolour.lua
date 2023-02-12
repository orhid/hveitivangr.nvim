vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.g.colors_name = 'orhcolour'

-- colours

local base = {
  0 = '#f7f3ed',
  1 = '#e8dfd5',
  2 = '#a38f77',
  3 = '#695c4f',
  4 = '#5c5249',
  5 = '#4a433d',
  6 = '#36322f',
}

local blush = {
  0 = '#e3d586',
  1 = '#e0ab6e',
  2 = '#de705f',
}

local sky = {
  0 = '#a8b891',
  1 = '#5b785c',
  2 = '#b6d9de',
  3 = '#7baec7',
  4 = '#4e648a',
  5 = '#b0718a',
}

local highlight_groups = {
	-- text analysis
  Normal = { fg = base.0},
	Comment = {fg = base.3, style = 'italic'},
	NonText = {fg = base.5},
	EndOfBuffer = 'NonText',
	Whitespace  = 'NonText',

	-- literals
	Constant = {fg = sky.2},
	String = {fg = sky.1},
	Character = {fg = sky.0},
	Number  = {fg = sky.3},
	Boolean = {fg = sky.3},
	Float   = 'Number',

	-- identifiers
	Identifier = Normal,
	Function = {fg = blush.0},

	-- syntax
	Statement   = {fg = blush.1},
	Conditional = {fg = blush.1, style = 'italic'},
	Repeat   = {fg = blush.1, style = 'italic'},
	Label    = {fg = blush.2, style = 'bold'},
	Operator = {fg = blush.2, style = 'bold'},
	Keyword  = {fg = blush.1},
	Exception = {fg = blush.2, style = 'bold'},
	Noise = 'Delimiter',

	-- metatextual info
	PreProc = {fg = sky.0},
	Include = {fg = sky.0, style = 'nocombine'},
	Define = {fg = blush.1, style = 'nocombine'},
	Macro  = {fg = blush.1, style = 'italic'},
	PreCondit = {fg = sky.0, style = 'italic'},

	-- semantics
	Type         = {fg = sky.4},
	StorageClass = {fg = sky.4, style = 'bold'},
	Structure = {fg = sky.4, style = 'bold'},
	Typedef = {fg = sky.4, style = 'italic'},

	-- edge cases
	Special = {fg = sky.5, style = 'bold'},
	SpecialChar = {fg = sky.5, style = 'italic'},
	SpecialKey = 'Character',
	Tag = 'Underlined',
	Delimiter = {fg = base.1},
	SpecialComment = {fg = base.4, style = {'bold', 'nocombine'}},
	Debug = 'WarningMsg',

	-- help
	Underlined = {fg = sky.3, style = 'underline'},
	Ignore = {fg = base.3},
	Error = {fg = base.0, bg = blush.2, style = 'bold'},
	Todo = {fg = black, bg = blush.0, style = 'bold'},
	Hint = {fg = black, bg = sky.0, style = 'bold'},
	Info = {fg = black, bg = sky.2, style = 'bold'},
	Warning = {fg = black, bg = blush.1, style = 'bold'},

	--- editor ui
	-- status line
	StatusLine = {fg = base.1, bg = base.5},
	StatusLineNC = function(self) return {fg = base.2, bg = self.StatusLine.bg} end,
	StatusLineTerm = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	-- separators
	FloatBorder = {fg = base.2},
	TabLine = function(self) return {fg = base.0, bg = self.StatusLine.bg} end,
	TabLineFill = function(self) return {fg = self.TabLine.bg, bg = base.6} end,
	TabLineSel = function(self) return {fg = self.TabLine.fg, bg = base.6} end,
	Title = {style = 'bold'},
	VertSplit = {fg = base.1},

	-- conditional line highlighting
	Conceal = 'NonText',
	CursorLine   = {bg = base.4},
	CursorLineNr = function(self) return {fg = sky.5, bg = self.LineNr.bg} end,
	debugBreakpoint = 'ErrorMsg',
	debugPC = 'ColorColumn',
	LineNr  = {fg = base.3},
	QuickFixLine = function(self) return {bg = self.StatusLine.bg} end,
	Visual    = {style = 'inverse'},
	VisualNOS = {bg = base.4},

	-- popup menu
	Pmenu = {fg = base.0, bg = base.4},
	PmenuSbar = {bg = base.5},
	PmenuSel  = {fg = base.6, bg = base.2},
	PmenuThumb = {bg = base.0},
	WildMenu = 'PmenuSel',

	-- folds
	FoldColumn = {bg = base.5, style = 'bold'},
	Folded = {fg = base.6,  bg = sky.5, style = 'italic'},

	-- diffs
	DiffAdd    = {fg = base.6, bg = sky.1},
	DiffChange = {},
	DiffDelete = function(self) return {fg = self.DiffAdd.fg, bg = blush.2} end,
	DiffText   = function(self) return {fg = self.DiffAdd.fg, bg = blush.0} end,

	-- searching
	IncSearch  = {style = 'inverse'},
	MatchParen = {fg = sky.0, style = {'bold', 'underline'}},
	Search = {style = {'underline', color = base.0}},

	-- spelling
	SpellBad   = {style = {'undercurl', color = blush.2}},
	SpellCap   = {style = {'undercurl', color = blush.0}},
	SpellLocal = {style = {'undercurl', color = sky.0}},
	SpellRare  = {style = {'undercurl', color = blush.1}},

	-- conditional column highlighting
	ColorColumn = {style = 'inverse'},
	SignColumn  = {},

	-- messages
	ErrorMsg = {fg = blush.2, style = 'bold'},
	HintMsg  = {fg = sky.0, style = 'italic'},
	InfoMsg  = {fg = sky.2, style = 'italic'},
	ModeMsg  = {fg = blush.0},
	WarningMsg = {fg = blush.1, style = 'bold'},
	Question   = {fg = blush.1, style = 'underline'},

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

	DiagnosticUnderlineError = {style = {'undercurl', color = blush.2}},
	DiagnosticUnderlineHint  = {style = {'undercurl', color = sky.0}},
	DiagnosticUnderlineInfo  = {style = {'undercurl', color = sky.2}},
	DiagnosticUnderlineWarn = {style = {'undercurl', color = blush.1}},

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
	CursorColumn = {bg = base.4},

	-- misc
	Directory = {fg = sky.0, style = 'bold'},

  --- languages
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
	gitrebaseBreak = 'Keyword',
	gitrebaseCommit = 'Tag',
	gitrebaseDrop = 'Exception',
	gitrebaseEdit = 'Define',
	gitrebaseExec = 'PreProc',
	gitrebaseFixup = 'gitrebaseSquash',
	gitrebaseMerge = 'PreProc',
	gitrebasePick  = 'Include',
	gitrebaseReset = 'gitrebaseLabel',
	gitrebaseReword  = 'gitrebasePick',
	gitrebaseSquash  = 'Macro',
	gitrebaseSummary = 'Title',

	-- html
	htmlArg    = 'Label',
	htmlBold   = {fg = base.0, style = 'bold'},
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
	markdownH1 = {fg = blush.2, style = 'bold'},
	markdownH2 = {fg = blush.1, style = 'bold'},
	markdownH3 = {fg = blush.0, style = 'bold'},
	markdownH4 = {fg = sky.0, style = 'bold'},
	markdownH5 = {fg = sky.2, style = 'bold'},
	markdownH6 = {fg = sky.4, style = 'bold'},
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

for name, attrs in pairs(highlight_groups) do
  if type(attrs) == 'table' then
    vim.api.nvim_set_hl(0, name, attrs)
  elseif type(attrs) == 'string' then
    vim.api.nvim_set_hl(0, name, { link = attrs })
  end
end

vim.g.terminal_color_0  = base.6
vim.g.terminal_color_1  = sky.5
vim.g.terminal_color_2  = sky.1
vim.g.terminal_color_3  = blush.1
vim.g.terminal_color_4  = sky.4
vim.g.terminal_color_5  = base.4
vim.g.terminal_color_6  = base.2
vim.g.terminal_color_7  = base.1
vim.g.terminal_color_8  = base.5
vim.g.terminal_color_9  = blush.2
vim.g.terminal_color_10 = sky.0
vim.g.terminal_color_11 = blush.0
vim.g.terminal_color_12 = sky.3
vim.g.terminal_color_13 = base.3
vim.g.terminal_color_14 = sky.2
vim.g.terminal_color_15 = base.0
