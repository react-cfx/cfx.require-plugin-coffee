# import dd from 'ddeyes'
import CoffeeScript from 'coffeescript'
import compile from 'cfx.babel'

coffee2ToEs6 = (code) ->
  CoffeeScript.compile code

es6ToEs5 = (code) ->
  compile code
  ,
    presets:
    # [
    #   2015
    #   2016
    #   2017
    # ]
      env:
        targets:
          node: 'current'
    runtime: true

export {
  coffee2ToEs6
  es6ToEs5
}
