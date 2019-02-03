'use strict'
var React = require('react');
var Title = require('./app');

ReactDOM.render(
	React.createElement(Title),
	document.querySelector('[data-js="app"]');
)
