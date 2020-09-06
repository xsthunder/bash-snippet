const fs = require('fs')
const origin_content = fs.readFileSync('./raw.txt', 'UTF-8')

let inpRex , output

output = origin_content

inpRex = /Categor.*?\[Powered by MediaWiki\]/sg
console.log(output.length, inpRex)
output = output.replace(inpRex, '')
console.log(output.length)



inpRex = /-   Welcome to Touhou Wiki!.*?Jump to navigation Jump to search/sg
console.log(output.length, inpRex)
output = output.replace(inpRex, '')
console.log(output.length)

inpRex = /v • d • e.*?Music Columns • Comics • Interview • CD/sg
console.log(output.length, inpRex)
output = output.replace(inpRex, '')
console.log(output.length)

inpRex ="This page is part of Project Translations, a Touhou Wiki project that aims to ensure the quality of translations of all official material in the Touhou Project."
inpRex = new RegExp(inpRex, 'g')
console.log(output.length, inpRex)
output = output.replace(inpRex, '')
console.log(output.length)

inpRex = /s*[\-]{50,}/g
console.log(output.length, inpRex)
output = output.replace(inpRex, '---------------')
console.log(output.length)

// 在原文和翻译间的大量空白
inpRex = /[ ]{30,}/g
console.log(output.length, inpRex)
output = output.replace(inpRex, ' | ')
console.log(output.length)


let title = process.env.PWD
console.log('pwd', title)
let title_reg =  /([^/]+)\/dist/
title = title.match(title_reg)[1]
title = title+'.txt'
fs.writeFileSync(title, output ,'utf8')
fs.copyFileSync(title, `../../${title}`,)