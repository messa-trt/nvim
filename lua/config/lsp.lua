vim.diagnostic.config({ virtual_text = true })
vim.lsp.enable('clangd')
vim.lsp.enable('html')
vim.lsp.enable('lua_ls')

--vim.cmd([[
--  set completeopt+=menuone,noselect,popup
--  set pumheight=15
--  set pumwidth=10
--]])
--vim.api.nvim_create_autocmd('LspAttach', {
--  callback = function(ev)
--    local client = vim.lsp.get_client_by_id(ev.data.client_id)
--    if client:supports_method('textDocument/completion') then
--	local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
--	client.server_capabilities.completionProvider.triggerCharacters = chars

--      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--    end
--  end,
--})

