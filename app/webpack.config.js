var path = require('path');
var webpack = require('webpack');
var BundleTracker = require('webpack-bundle-tracker');

module.exports = {
  entry:  path.join(__dirname, 'assets/src/js/index'),

  mode: 'development',

  output: {
    path: path.join(__dirname, 'assets/dist'),
    filename: '[name]-[fullhash].js'
  },

  plugins: [
    new BundleTracker({
      path: __dirname,
      filename: 'webpack-stats.json'
    }),
  ],
}