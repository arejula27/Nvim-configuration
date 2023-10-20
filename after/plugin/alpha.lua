local alpha = require('alpha')


local dashboard = require'alpha.themes.dashboard'
-- This is the header, do something fancy
dashboard.section.header.val = 'foo'
dashboard.section.buttons.val = {
        dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
        }
dashboard.section.footer.val = 'Íñigo Aréjula ----- @arejula27'
alpha.setup(require'alpha.themes.dashboard'.config)
