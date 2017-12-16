import dd from 'ddeyes'
import 'shelljs/make'
import fs from 'fs'
import path from 'path'
import {
  coffee2ToEs6
  es6ToEs5
} from '../src/compiler'
import CoffeeScript from 'coffeescript'

import getRequire from 'cfx.require'
import coffee from '../index'

target.all = ->
  dd 'Hello Wolrd!!!'

target.ext = ->
  dd CoffeeScript.FILE_EXTENSIONS

target.compile = ->

  code = fs.readFileSync (
    path.join __dirname, '../src/compiler.coffee'
  )
  , 'utf-8'

  es6 = coffee2ToEs6 code
  console.log es6

  es5 = es6ToEs5 es6
  console.log es5

target.require = ->

  # dd coffee().compiler "import dd from 'ddeyes'"

  CS = getRequire [
    coffee()
  ]

  do CS.gdf await CS.require './coffee'
