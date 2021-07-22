local color = {}

function color.setup(conf)
  local config = conf or require("nightfox.config")

  if config.style == "nordfox" then
    return require("nightfox.colors.nordfox").setup()
  end

  if config.style == "pastelfox" then
    return require("nightfox.colors.pastelfox").setup()
  end

  return require("nightfox.colors.nightfox").setup()
end

return color
