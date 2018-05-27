const path = require('path');
var webpack = require('webpack');

module.exports = {
  mode: 'development',
  entry: './frontend/wolrss.jsx',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'app', 'assets', 'javascripts')
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['react']
          }
        }
      }
    ]
  },
  resolve: {
    extensions: ['.js', '.jsx', '*']
  },
  plugins: [
    new webpack.DefinePlugin({
      'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV || 'development')
    }),
  ]
};
