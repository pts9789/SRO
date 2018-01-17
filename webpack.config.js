
var path = require("path");
var webpack = require('webpack');

module.exports = {
  context: __dirname,
  entry: "./frontend/sro.jsx",
  output: {
    path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
    filename: "bundle.js"
  },
  module: {
    loaders: [
      {
        test: [/\.jsx?$/, /\.js?$/],
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: [".js", ".jsx", "*"],
  },
  plugins: [new webpack.EnvironmentPlugin({NODE_ENV: 'production'})]
};

// used webpack config from Aa homework as a template
