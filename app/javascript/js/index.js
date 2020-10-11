const js = require.context('.', true, /\.js$/)
js.keys().forEach(js)
