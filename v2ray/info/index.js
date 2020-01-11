var qrcode = require('qrcode-terminal')

if (process.argv.length < 2) {
  console.error('参数错误')
  process.exit(1)
}

var urls = process.argv.filter(arg => !arg.match(/^\s+$/))

for (var i = 2; i < urls.length; i++) {
  var url = urls[i]
  qrcode.generate(url, {small: true}, function (qrcode) {
    if (i === 2) {
      console.log('\n------------------------ QR Code ----------------------')
      console.log(qrcode)
      console.log("---------------------- Vmess link ---------------------\n")
      console.log(url)
    } else {
      console.log(`\n----------------------- QR Code ${i - 2} ---------------------`)
      console.log(qrcode)
      console.log(`--------------------- Vmess link ${i - 2} --------------------\n`)
      console.log(url)
    }
  })
}
