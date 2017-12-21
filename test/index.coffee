#!/usr/bin/env coffee

# require 'coffee-require/register'

# _require = require 'cfx.require'
# coffee = require '../index'
# { register } = _require [
#   coffee()
# ]
# register()

register = require '../register'
_require = require 'cfx.require'
{ gdf } = _require
register gdf _require

require './Makefile'
