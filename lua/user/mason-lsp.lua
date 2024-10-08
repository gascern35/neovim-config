M = {
    'williamboman/mason-lspconfig.nvim'
}

function M.config()
    require('mason-lspconfig').setup({
        handlers = {
            require('lsp-zero').default_setup,
        },
    })
end

return M
