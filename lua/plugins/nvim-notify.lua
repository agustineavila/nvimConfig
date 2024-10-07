return {
  -- Otros plugins aquí

  {
    "rcarriga/nvim-notify",
    config = function()
      -- Configuración opcional para nvim-notify
      require("notify").setup({
        -- Configura aquí las opciones del plugin
        stages = "fade_in_slide_out",  -- Ejemplo de configuración
        timeout = 3000,  -- Tiempo en milisegundos antes de que desaparezca la notificación
        background_colour = "#000000",
      })

      -- Puedes establecer nvim-notify como el manejador de notificaciones por defecto
      vim.notify = require("notify")
    end,
  }

  -- Otros plugins si los tienes
}
