return {
  -- Otros plugins aquí

  {
    "akinsho/bufferline.nvim",
    version = "*", -- Esto asegura que instale la última versión estable
    dependencies = "nvim-tree/nvim-web-devicons", -- Para íconos en las pestañas
    config = function()
      require("bufferline").setup({
        options = {
          numbers = "none", -- No muestra números de buffer
          diagnostics = "nvim_lsp", -- Muestra iconos de diagnósticos del LSP
          separator_style = "slant", -- Estilo de los separadores entre pestañas (puedes usar "thin", "slant", etc.)
          show_buffer_close_icons = true, -- Muestra el icono de cierre de buffer
          show_close_icon = false, -- Oculta el icono de cierre global
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer", -- Texto a mostrar en el offset del explorador
              highlight = "Directory",
              text_align = "left",
            },
          },
        },
      })
    end,
  }

  -- Otros plugins si los tienes
}
