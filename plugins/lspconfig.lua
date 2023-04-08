local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

--local servers = { "html", "cssls", "tsserver", "clangd", "rust-analyzer", "gopls", "python-lsp-server", "golangci-lint-langserver", "marksman", "sqls", "lua", "pyright", "pyre", "yaml-language-server", "glint", "docker-compose-language-service", "dockerfile-language-server", "cloure-lsp", "cmake-language-server", "golangci-lint-langserver", "lua-language-server", "terraform-ls", "tflint", "vim-language-server" }

--for _, lsp in ipairs(servers) do
--  lspconfig[lsp].setup {
--    on_attach = on_attach,
--    capabilities = capabilities,
--  }
--end

local servers = {
  "html", "cssls", "tsserver", "clangd", "rust_analyzer", "gopls",
  "pyright", "yamlls", "dockerls", "clojure_lsp", "cmake",
  "terraformls", "vimls"
}

for _, lsp in ipairs(servers) do
  local config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  
  lspconfig[lsp].setup(config)
end
