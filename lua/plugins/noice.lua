return {
  -- Otros plugins aquí

  {
    "folke/noice.nvim",
    event = "VeryLazy",  -- Se carga automáticamente en eventos "lazy" para optimizar el rendimiento
    dependencies = {
      "MunifTanjim/nui.nvim",   -- Necesario para las interfaces de usuario
      "rcarriga/nvim-notify",   -- Necesario para las notificaciones
    },
    config = function()
      require("noice").setup({
        -- Aquí puedes configurar noice.nvim según tus preferencias
        lsp = {
          -- Puedes configurar las notificaciones del LSP aquí
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        -- Configura notificaciones o comandos, si deseas modificarlos
        presets = {
          bottom_search = true,         -- usa una barra de búsqueda en la parte inferior
          command_palette = true,       -- similar a una paleta de comandos
          long_message_to_split = true, -- los mensajes largos se dividen en un nuevo buffer
          inc_rename = false,           -- habilita la funcionalidad incremental de renombrar
          lsp_doc_border = true,        -- agrega un borde a la documentación del LSP
        },
      })
    end,
  }

  -- Otros plugins si los tienes
}
