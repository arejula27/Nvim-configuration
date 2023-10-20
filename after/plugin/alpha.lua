local alpha = require('alpha')


local dashboard = require'alpha.themes.dashboard'
-- This is the header, do something fancy
local dashboard_custom_header = {
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

dashboard.section.header.val = dashboard_custom_header
dashboard.section.buttons.val = {
        dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "f", "󰮗  Find files" , ":Telescope find_files <CR>"),
        dashboard.button( "r", "  Recent files" , ":Telescope oldfiles <CR>"),
        --dashboard.button( "p", "   Projects" , ":Telescope projects <CR>"),
        dashboard.button( "c", " Configuration" , ":cd ~/.config/nvim | :Telescope find_files <CR>"),
        dashboard.button( "q", "󰩈  Quit NVIM" , ":qa<CR>"),
        }
dashboard.section.footer.val = 'Íñigo Aréjula ----- @arejula27'
alpha.setup(require'alpha.themes.dashboard'.config)
