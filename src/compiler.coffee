# import dd from 'ddeyes'
import CoffeeScript from 'coffeescript'
import { transformSync } from '@babel/core'

coffee2ToEs6 = (code) ->
  CoffeeScript.compile code

es6ToEs5 = (code) ->

  es5 = transformSync code
  ,
    presets: [
      [
        'env'
        targets:
          node: true
      ]
    ]
  ,
    plugins: [
      [
        '@babel/plugin-transform-runtime'
        {
          "moduleName": "@babel/runtime"
        }
      ]
    ]

  es5.code

export {
  coffee2ToEs6
  es6ToEs5
}
