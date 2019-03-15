const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquwebpackery',
    Popper: ['popper.js', 'default']
  })
)
module.exports = environment
