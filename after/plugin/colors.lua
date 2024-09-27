-- Set the background color to dark
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "paramount" -- Load the desired color scheme

-- Set highlight colors
vim.api.nvim_set_hl(0, "Normal", { fg = "#D7D7D7", bg = "#1E1E1E" }) -- Light grey on dark background
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = '#FFD700', bold = true }) -- Bold yellow for the current line number
vim.api.nvim_set_hl(0, "LineNr", { fg = "#4B4B4B" }) -- Dark grey for other line numbers
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#2E2E2E" }) -- Dark background for float windows
vim.api.nvim_set_hl(0, "Visual", { bg = "#3A3D3E", fg = "#FFFFFF" }) -- Muted background with white text for visual mode
vim.api.nvim_set_hl(0, "Comment", { fg = "#B3B3B3", italic = false }) -- Light grey for comments (no italics)
vim.api.nvim_set_hl(0, "Error", { fg = "#FF5555", bg = "NONE", bold = true }) -- Bright red for errors
vim.api.nvim_set_hl(0, "Warning", { fg = "#FFB86C", bg = "NONE", bold = true }) -- Soft yellow for warnings
vim.api.nvim_set_hl(0, "Info", { fg = "#8BE9FD", bg = "NONE" }) -- Cyan for info messages
vim.api.nvim_set_hl(0, "Hint", { fg = "#50FA7B", bg = "NONE" }) -- Bright green for hints

-- Highlight specific keywords with bright colors
vim.api.nvim_set_hl(0, "Keyword", { fg = "#FF79C6", bold = true }) -- Bright pink for keywords like 'for', 'if', etc.
vim.api.nvim_set_hl(0, "Function", { fg = "#BD93F9", bold = true }) -- Light purple for function names
vim.api.nvim_set_hl(0, "Identifier", { fg = "#FFB86C", bold = true }) -- Soft yellow for identifiers

