---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "kanagava",
    transparency = true,
    load_on_startup = true,
    nvdash = {
        load_on_startup = true,
        header = {
            " ██╗  ██╗ ██████╗ ███╗   ██╗███╗   ██╗███████╗██╗   ██╗",
            " ██║  ██║██╔═══██╗████╗  ██║████╗  ██║██╔════╝╚██╗ ██╔╝",
            " ███████║██║   ██║██╔██╗ ██║██╔██╗ ██║█████╗   ╚████╔╝ ",
            " ██╔══██║██║   ██║██║╚██╗██║██║╚██╗██║██╔══╝    ╚██╔╝  ",
            " ██║  ██║╚██████╔╝██║ ╚████║██║ ╚████║███████╗   ██║   ",
            " ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ",
            "                                                     ",
            "             Welcome, Sanchir!                        "
        },
    },
    terminal = {
        shell = "powershell", -- Используйте "powershell" или "pwsh" в зависимости от установленной версии
    },
    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
        DiffChange = {
            bg = "#464414",
            fg = "none",
        },
        DiffAdd = {
            bg = "#103507",
            fg = "none",
        },
        DiffRemoved = {
            bg = "#461414",
            fg = "none",
        },
    },
    tree = {
        width = 40, -- Установите фиксированную ширину для nvim-tree
        auto_open = true, -- Автоматически открывать nvim-tree при запуске
    },
}

return M
