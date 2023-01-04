-- Instalar automáticamente el empaquetador
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    print "Instalar packer cerrar y volver a abrir Neovim..."
    vim.cmd [[packadd packer.nvim]]
  end

-- Autocomando que recarga neovim cada vez que se guarda el archivo plugins.lua
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end ]]

-- Utilizar una llamada protegida para que no se produzca un error en el primer uso
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Hacer que el empaquetador utilice una ventana emergente
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)

  use "wbthomason/packer.nvim"                    -- que el empaquetador se gestione solo

  -- Tema  
  use "EdenEast/nightfox.nvim"

  -- Establecer automaticamente su configuracion despues de clonar packer.nvim
  -- poner esto al dinal despues de todos los plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)

