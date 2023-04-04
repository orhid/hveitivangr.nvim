vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.g.colors_name = 'orhcolour'

local orh = {}
orh.palette = require('hveitivangr/colours/main')

local highlight_groups = {
	-- text analysis
  Normal = {fg = orh.palette.white},
	Comment = {fg = orh.palette.web, italic = true},
	NonText = {fg = orh.palette.umber},
	EndOfBuffer = 'NonText',
	Whitespace  = 'NonText',

	-- literals
	Constant = {fg = orh.palette.sky},
	Boolean = 'Constant',
	Number  = 'Constant',
	Float   = 'Number',
	Character = {fg = orh.palette.tea},
	String = {fg = orh.palette.celadon},

	-- identifiers
	Identifier = {fg = orh.palette.powder, italic = true},
	Function = {fg = orh.palette.jasmine},

	-- syntax
	Statement   = {fg = orh.palette.sunray},
	Conditional = {fg = orh.palette.sunray, italic = true},
	Repeat   = {fg = orh.palette.sunray, italic = true},
	Label    = {fg = orh.palette.sunray, bold = true},
	Operator = {fg = orh.palette.blond},
	Keyword  = {fg = orh.palette.sunray},
	Exception = {fg = orh.palette.lavender, bold = true},
	Noise = 'Delimiter',

	-- metatextual info
	PreProc = {fg = orh.palette.blond, italic = true},
	Include = {fg = orh.palette.frost, nocombine = true},
	-- Define = {fg = '#ff0000', nocombine = true},
	Macro  = {fg = orh.palette.blond, italic = true},
	-- PreCondit = {fg = '#ff0000', italic = true},

	-- semantics
	Type         = {fg = orh.palette.powder, italic = true},
	StorageClass = {fg = orh.palette.powder, italic = true},
	-- Structure = {fg = orh.palette.frost, bold = true},
	-- Typedef = {fg = orh.palette.frost, italic = true},

	-- edge cases
	Special = {fg = orh.palette.powder, italic = true},
	SpecialChar = {fg = orh.palette.celadon, italic = true},
	SpecialKey = 'Character',
	Tag = 'Underlined',
	Delimiter = {fg = orh.palette.white},
	SpecialComment = {fg = orh.palette.tea, italic = true, nocombine = true},
	Debug = 'WarningMsg',

  --[[
	-- help
	Underlined = {fg = orh.palette.powder, underline = true},
	Ignore = {fg = orh.palette.web},
	Error = {fg = orh.palette.jet, bg = orh.palette.terracotta, bold = true},
	Todo = {fg = orh.palette.jet, bg = orh.palette.forst, bold = true},
	Hint = {fg = orh.palette.jet, bg = orh.palette.powder, bold = true},
	Info = {fg = orh.palette.jet, bg = orh.palette.celadon, bold = true},
	Warning = {fg = orh.palette.jet, bg = orh.palette.sunray, bold = true},
  --]]

	--- editor ui
	-- status line
	StatusLine = {fg = orh.palette.eggshell, bg = orh.palette.jet},
	StatusLineNC = {fg = orh.palette.jet, bg = orh.palette.jet},
	StatusLineTerm = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

  --[[
	-- separators
	FloatBorder = {fg = orh.palette.web},
	TabLine = function(self) return {fg = orh.palette.white, bg = self.StatusLine.bg} end,
	TabLineFill = function(self) return {fg = self.TabLine.bg, bg = orh.palette.jet} end,
	TabLineSel = function(self) return {fg = self.TabLine.fg, bg = orh.palette.jet} end,
	Title = {bold = true},
  --]]
	VertSplit = {fg = orh.palette.umber},

	-- conditional line highlighting
	-- Conceal = 'NonText',
	-- debugBreakpoint = 'ErrorMsg',
	-- debugPC = 'ColorColumn',
	LineNr  = {fg = orh.palette.shadow},
	CursorLine   = {bg = orh.palette.jet},
  CursorLineNr = {fg = orh.palette.eggshell, bold = true},
	-- QuickFixLine = function(self) return {bg = self.StatusLine.bg} end,
	Visual    = {fg = orh.palette.jet, bg = orh.palette.web},
	VisualNOS = {bg = orh.palette.shadow},

  --[[
	-- popup menu
	Pmenu = {fg = orh.palette.white, bg = orh.palette.umber},
	PmenuSbar = {bg = orh.palette.shadow},
	PmenuSel  = {fg = orh.palette.jet, bg = orh.palette.eggshell},
	PmenuThumb = {bg = orh.palette.white},
	WildMenu = 'PmenuSel',

	-- folds
	FoldColumn = {bg = orh.palette.umber, bold = true},
	Folded = {fg = orh.palette.jet, bg = orh.palette.powder, italic = true},
  --]]

	-- diffs
	DiffAdd    = {fg = orh.palette.celadon},
	DiffChange = {fg = orh.palette.jasmine},
	DiffDelete = {fg = orh.palette.terracotta},
	DiffText = {fg = orh.palette.umber},
	-- DiffDelete = function(self) return {fg = self.DiffAdd.fg, bg = orh.palette.terracotta} end,
	-- DiffText   = function(self) return {fg = self.DiffAdd.fg, bg = orh.palette.jasmine} end,

	-- searching
	IncSearch  = {reverse = true},
	MatchParen = {fg = orh.palette.lavender, bold = true, underline = true},
	Search = {bg = orh.palette.umber, underline = true},

	-- spelling
	-- SpellBad   = {style = {'undercurl', color = orh.palette.blush[2]}},
	-- SpellCap   = {style = {'undercurl', color = orh.palette.blush[0]}},
	-- SpellLocal = {style = {'undercurl', color = orh.palette.sky[0]}},
	-- SpellRare  = {style = {'undercurl', color = orh.palette.blush[1]}},

	-- conditional column highlighting
	-- ColorColumn = {reverse = true},
	-- SignColumn  = {},

  --[[
	-- messages
	ErrorMsg = {fg = orh.palette.terracotta, bold = true},
	HintMsg  = {fg = orh.palette.powder, italic = true},
	InfoMsg  = {fg = orh.palette.celadon, italic = true},
	ModeMsg  = {fg = orh.palette.sky},
	WarningMsg = {fg = orh.palette.sunray, bold = true},
	Question   = {fg = orh.palette.frost, underline = true},
  --]]

  --[[
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

	-- DiagnosticUnderlineError = {style = {'undercurl', color = orh.palette.blush[2]}},
	-- DiagnosticUnderlineHint  = {style = {'undercurl', color = orh.palette.sky[0]}},
	-- DiagnosticUnderlineInfo  = {style = {'undercurl', color = orh.palette.sky[2]}},
	-- DiagnosticUnderlineWarn = {style = {'undercurl', color = orh.palette.blush[1]}},

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

	-- LspDiagnosticsUnderlineError = 'DiagnosticUnderlineError',
	-- LspDiagnosticsUnderlineHint  = 'DiagnosticUnderlineHint',
	-- LspDiagnosticsUnderlineInfo  = 'DiagnosticUnderlineInfo',
	-- LspDiagnosticsUnderlineWarning = 'DiagnosticUnderlineWarn',
  --]]

	-- cursor
	Cursor   = {reverse = true},
	CursorIM = 'Cursor',
	CursorColumn = {bg = orh.palette.jet},

	-- misc
	-- Directory = {fg = orh.palette.web, bold = true},

  -- # plugins

  --[[
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
	-- gitreorh.palette.baseBreak = 'Keyword',
	-- gitreorh.palette.baseCommit = 'Tag',
	-- gitreorh.palette.baseDrop = 'Exception',
	-- gitreorh.palette.baseEdit = 'Define',
	-- gitreorh.palette.baseExec = 'PreProc',
	-- gitreorh.palette.baseFixup = 'gitreorh.palette.baseSquash',
	-- gitreorh.palette.baseMerge = 'PreProc',
	-- gitreorh.palette.basePick  = 'Include',
	-- gitreorh.palette.baseReset = 'gitreorh.palette.baseLabel',
	-- gitreorh.palette.baseReword  = 'gitreorh.palette.basePick',
	-- gitreorh.palette.baseSquash  = 'Macro',
	-- gitreorh.palette.baseSummary = 'Title',
  --]]

  --[[
	-- html
	htmlArg    = 'Label',
	htmlBold   = {fg = orh.palette.white, bold = true},
	htmlTitle  = 'htmlBold',
	htmlEndTag = 'htmlTag',
	htmlH1 = 'markdownH1',
	htmlH2 = 'markdownH2',
	htmlH3 = 'markdownH3',
	htmlH4 = 'markdownH4',
	htmlH5 = 'markdownH5',
	htmlH6 = 'markdownH6',
	htmlItalic  = {italic = true},
	htmlSpecialTagName = 'Keyword',
	htmlTag  = 'Special',
	htmlTagN = 'Typedef',
	htmlTagName = 'Type',
  --]]

  -- lua
	luaBraces   = 'Structure',
	luaBrackets = 'Delimiter',
	luaBuiltin  = 'Keyword',
	luaComma    = 'Delimiter',
	luaFuncArgName = 'Identifier',
	luaFuncCall = 'Function',
	luaFunc   = 'Function',
	luaFuncId   = 'luaNoise',
	luaFuncKeyword = 'Type',
	luaFuncName   = 'Function',
	luaFuncParens = 'Delimiter',
	luaFuncTable  = 'Structure',
	luaIn     = 'luaRepeat',
	luaLocal  = 'Type',
	luaNoise  = 'Delimiter',
	luaParens = 'Delimiter',
  luaTable = 'Delimiter',
	luaSpecialTable = 'Structure',
	luaSpecialValue = 'Function',
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return {bg = delimiter.bg, fg = delimiter.fg, italic = true}
	end,

  --[[
  -- markdown
	markdownCode = 'mkdCode',
	markdownCodeDelimiter = 'mkdCodeDelimiter',
	markdownH1 = {fg = orh.palette.blond, bold = true},
	markdownH2 = {fg = orh.palette.jasmine, bold = true},
	markdownH3 = {fg = orh.palette.sunray, bold = true},
	markdownH4 = {fg = orh.palette.terracotta, bold = true},
	markdownH5 = {fg = orh.palette.lavender, bold = true},
	markdownH6 = {fg = orh.palette.forst, bold = true},
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
	-- mkdRule = function(self) return {fg = self.Ignore.fg, style = {'underline', color = self.Delimiter.fg}} end,
	mkdURL = 'htmlString',
  --]]

  --[[
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
  --]]

  --[[
  -- rust
	rustAssert = 'Debug',
	rustCharacterDelimiter = 'rustNoise',
	rustIdentifier = 'Identifier',
	rustStaticLifetime = 'rustStorage',
	rustStringDelimiter = 'rustNoise',
  --]]

  --[[
  -- shell
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop  = 'Repeat',
	shParen = 'Delimiter',
	shQuote = 'Delimiter',
	shSet   = 'Statement',
	shTestOpr = 'Debug',
  --]]

  --[[
  -- toml
	tomlComment = 'Comment',
	tomlDate  = 'Special',
	tomlFloat = 'Float',
	tomlKey   = 'Label',
	tomlTable = 'Structure',
  --]]

  --[[
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
  --]]

  --[[
  -- vim tex
	texMathRegion = 'Number',
	texMathSub   = 'Number',
	texMathSuper = 'Number',
	texMathRegionX  = 'Number',
	texMathRegionXX = 'Number',
  --]]

  --[[
   -- xml
	xmlAttrib = 'htmlArg',
	xmlEndTag = 'xmlTag',
	xmlEqual  = 'Operator',
	xmlTag    = 'htmlTag',
	xmlTagName = 'htmlTagName',
  --]]

  --[[
  -- yaml
	yamlInline = 'Delimiter',
	yamlKey = 'Label',
  --]]
}

for name, attrs in pairs(highlight_groups) do
  if type(attrs) == 'table' then
    vim.api.nvim_set_hl(0, name, attrs)
  elseif type(attrs) == 'string' then
    vim.api.nvim_set_hl(0, name, { link = attrs })
  end
end

vim.g.terminal_color_0  = orh.palette.jet
vim.g.terminal_color_1  = orh.palette.terracotta
vim.g.terminal_color_2  = orh.palette.celadon
vim.g.terminal_color_3  = orh.palette.jasmine
vim.g.terminal_color_4  = orh.palette.sky
vim.g.terminal_color_5  = orh.palette.shadow
vim.g.terminal_color_6  = orh.palette.web
vim.g.terminal_color_7  = orh.palette.eggshell
vim.g.terminal_color_8  = orh.palette.umber
vim.g.terminal_color_9  = orh.palette.sunray
vim.g.terminal_color_10 = orh.palette.tea
vim.g.terminal_color_11 = orh.palette.blond
vim.g.terminal_color_12 = orh.palette.frost
vim.g.terminal_color_13 = orh.palette.lavender
vim.g.terminal_color_14 = orh.palette.powder
vim.g.terminal_color_15 = orh.palette.white
