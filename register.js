'use strict';

var coffee;
coffee = require('./');
module.exports = function (_require) {
    var register;
    ({register} = _require([coffee()]));
    return register();
};
