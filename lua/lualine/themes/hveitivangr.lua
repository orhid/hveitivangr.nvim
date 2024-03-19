local colour = require 'hveitivangr.colour' 

return {
  normal = {
    a = {bg = colour.web, fg = colour.jet, gui = 'bold'},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = 'None', fg = colour.eggshell},
    y = {bg = colour.eggshell, fg = colour.jet},
    z = {bg = colour.web, fg = colour.jet},
  },
  insert = {
    a = {bg = colour.celadon, fg = colour.jet, gui = 'bold'},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = 'None', fg = colour.eggshell},
    y = {bg = colour.eggshell, fg = colour.jet},
    z = {bg = colour.celadon, fg = colour.jet},
  },
  visual = {
    a = {bg = colour.powder, fg = colour.jet, gui = 'bold'},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = 'None', fg = colour.eggshell},
    y = {bg = colour.eggshell, fg = colour.jet},
    z = {bg = colour.powder, fg = colour.jet},
  },
  replace = {
    a = {bg = colour.sunray, fg = colour.jet, gui = 'bold'},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = 'None', fg = colour.eggshell},
    y = {bg = colour.eggshell, fg = colour.jet},
    z = {bg = colour.sunray, fg = colour.jet},
  },
  command = {
    a = {bg = colour.lavender, fg = colour.jet, gui = 'bold'},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = 'None', fg = colour.eggshell},
    y = {bg = colour.eggshell, fg = colour.jet},
    z = {bg = colour.lavender, fg = colour.jet},
  },
  terminal = {
    a = {bg = colour.terracotta, fg = colour.jet, gui = 'bold'},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = 'None', fg = colour.eggshell},
    y = {bg = colour.eggshell, fg = colour.jet},
    z = {bg = colour.terracotta, fg = colour.jet},
  },
  inactive = {
    a = {bg = colour.umber, fg = colour.eggshell},
    b = {bg = colour.umber, fg = colour.eggshell},
    c = {bg = colour.umber, fg = colour.eggshell}
  }
}
