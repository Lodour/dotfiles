return {
  -- Align ruff's position encoding with pyright (both UTF-16)
  -- Fixes: "WARNING Found buffers attached to multiple clients with different position encodings"
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          capabilities = {
            general = {
              positionEncodings = { "utf-16" },
            },
          },
        },
      },
    },
  },
}
