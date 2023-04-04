local palette = require('hveitivangr/colours/main')

return {
  normal = {
    a = {bg = palette.web, fg = palette.jet, gui = 'bold'},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.jet, fg = palette.eggshell},
    y = {bg = palette.eggshell, fg = palette.jet},
    z = {bg = palette.web, fg = palette.jet},
  },
  insert = {
    a = {bg = palette.celadon, fg = palette.jet, gui = 'bold'},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.jet, fg = palette.eggshell},
    y = {bg = palette.eggshell, fg = palette.jet},
    z = {bg = palette.celadon, fg = palette.jet},
  },
  visual = {
    a = {bg = palette.powder, fg = palette.jet, gui = 'bold'},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.jet, fg = palette.eggshell},
    y = {bg = palette.eggshell, fg = palette.jet},
    z = {bg = palette.powder, fg = palette.jet},
  },
  replace = {
    a = {bg = palette.sunray, fg = palette.jet, gui = 'bold'},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.jet, fg = palette.eggshell},
    y = {bg = palette.eggshell, fg = palette.jet},
    z = {bg = palette.sunray, fg = palette.jet},
  },
  command = {
    a = {bg = palette.lavender, fg = palette.jet, gui = 'bold'},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.jet, fg = palette.eggshell},
    y = {bg = palette.eggshell, fg = palette.jet},
    z = {bg = palette.lavender, fg = palette.jet},
  },
  terminal = {
    a = {bg = palette.terracotta, fg = palette.jet, gui = 'bold'},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.jet, fg = palette.eggshell},
    y = {bg = palette.eggshell, fg = palette.jet},
    z = {bg = palette.terracotta, fg = palette.jet},
  },
  inactive = {
    a = {bg = palette.umber, fg = palette.eggshell},
    b = {bg = palette.umber, fg = palette.eggshell},
    c = {bg = palette.umber, fg = palette.eggshell}
  }
}
