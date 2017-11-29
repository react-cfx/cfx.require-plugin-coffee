coffee = require './'

module.exports = (
  _require
) ->

  { register } = _require [
    coffee()
  ]

  register()
