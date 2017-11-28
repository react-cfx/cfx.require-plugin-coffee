#!/usr/bin/env coffee
{ register } = (
  require 'cfx.require'
) [
  do require '../dist/bundle'
]
register()
require './Makefile'
