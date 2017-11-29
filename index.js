'use strict';

function _interopDefault (ex) { return (ex && (typeof ex === 'object') && 'default' in ex) ? ex['default'] : ex; }

var CoffeeScript = _interopDefault(require('coffeescript'));
var core = require('@babel/core');

var coffee2ToEs6;
var es6ToEs5;
coffee2ToEs6 = function (code) {
    return CoffeeScript.compile(code);
};
es6ToEs5 = function (code) {
    var es5;
    es5 = core.transformSync(code, {
        presets: [[
                'env',
                { targets: { node: true } }
            ]]
    }, {
        plugins: [[
                '@babel/plugin-transform-runtime',
                { 'moduleName': '@babel/runtime' }
            ]]
    });
    return es5.code;
};

var plugin$1 = function (ops) {
    return {
        name: 'coffeescript',
        exts: CoffeeScript.FILE_EXTENSIONS,
        compiler: function (code, id) {
            return es6ToEs5(coffee2ToEs6(code));
        }
    };
};

module.exports = plugin$1;
