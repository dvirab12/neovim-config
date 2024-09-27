local lsp = require('lsp-zero').preset({})

-- Install 'clangd', 'gopls', and other servers you need
lsp.ensure_installed({
    'clangd', -- C/C++
    'gopls',   -- Go
    'pyright', -- Python
    'tsserver', -- TypeScript/JavaScript
    'html',    -- HTML
    'cssls',   -- CSS
})

-- Set up nvim-cmp for autocompletion
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

-- Set preferences for LSP
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
    }
})

-- Define actions when LSP attaches to a buffer
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    -- Key mappings for LSP features
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Show hover information
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts) -- Find workspace symbols
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts) -- Show diagnostics in a floating window
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts) -- Go to next diagnostic
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts) -- Go to previous diagnostic
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts) -- Code actions (like quick fixes)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts) -- Show references
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts) -- Rename symbol
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts) -- Show function signature help
end)

-- Set up the LSP
lsp.setup()
