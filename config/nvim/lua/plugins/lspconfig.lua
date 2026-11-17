return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            buildFlags = { "-tags=e2e,local,dev,test,prod" },
            analyses = {
              ST1003 = false,
            },
          },
        },
      },
    },
  },
}
