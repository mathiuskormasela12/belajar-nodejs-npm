A. Pengenalan NPM

NPM atau Node Package Manager merupakan
sebuah alat dalam Node Js yang berfungsi
untuk membantu kita management project kita.
Dalam Node Js project di sebut sebagai package.

Untuk menjalankna file node js dengan npm
tetap sama yaitu node namaFile.js. 

Untuk membuat project dengan npm kita harus
membuat sebuah folder baru terelebih dahulu
setelah itu kita harus masuk kedalam folder tersebut
dan menjalankan terminal serta menuliskan perintah
npm init. 

npm init berguna untuk melakukan initialisasi project,
dimana npm akan membuatkan file bernama package.json.
File package.json ini merupakan file yang akan berisi
konfigurasi dari aplikasi kita.

B. Type

Property type di dalam package.json memiliki 2 buah
value yaitu "commonjs" dan "module". Default value nya
adalah commonjs. Property ini berguna untuk memberi tahu
node js kita akan menggunakna module apa. Apakah commonjs
atau es module. By default akan di gunakan commonjs. Namun
lebih disaranakan untuk menggunakan Es Module karena itu sudah
menjadi standard Javascript versi terbaru. Oleh sebab itu
kita harus menulis type: module di dalam package.json.
Namun yang harus di perthatikan bahwa ketika melakukan importing file
maka kita wajib menuliskan ektensi file nya secara eksplisit
kalau tidak akan error.

Dengan mengubah value property type menjadi
module, kita tidak perlu lagi untuk mengubah nama file
Javascript kita menjadi .mjs.

C. Scripts

Scripts merupakan sebuah property yang berisi configurasi
cara kita untuk menjalankan aplikasi kita.

Untuk menjalankan perintah di script kita bisa
menuliskan seperti ini di terminal.

npm run-script namaScriptnys

atau npm namaScriptnua
jika nama scriptnya merupakan special script

Berikut list special script yg ada di node js
1. start
2. stop
3. test
4. restart 
5. uninstall
6. version
7. dll

special keyword diatas juga memiliki akses
ke prefix pre* dan pos*.

contoh jika kita nulis script start

{
    "scripts": {
        "start": "node index.js",
        "prestart": "statement1",
        "poststart": "statement2"
    }
}

prefix pre* akan di jalankan seblum script utama di jalankan
dan prefox post* akan di jalankan setelah script utama di jalanakn

D. Export & main

Propertu exports dan main berguna untuk mendefinisikna
file utama kita. Hal ini akan sangat berguna ketika
kita publish package ke npm. Dimana dengna menggunakan kedua
property ini, memungkinkan kita untuk membuat alias
dalam mengakses sebuah file.

contoh di kode kita memanggil script seperti ini
import path from 'path/promises';

sebenarmya di packahe json package path sudah
didefinisilnak keyword :

  "exports": {
    ".": "./index.js",
    "./promoses": "./path-promises.js"
  }

Jadi dengan menambahkana propertu exports ke package.json
kita bisa mengimport file lebih mudah.

Kode di bawah akan import tanda "." titik dari exports keyword
import module "nama-project-kita";

Kode dibawaha kana import tanda "./data" dri exports keyword
import module "nama-project-kita/data";

Jikalau kita menggunakan property main, maka kita hanyakan
bisa mengakses file yg di definisilan di property main nya aja.
Kita tidak bisa melakukan seperti 
kode dibawah 
import module "project/data";

Oleh sebab itu lebih di rekomendaiskna menggunakan exports dibanding main.
selain itu exports juga cara terbaru sedangkan main cara lama.

E. Dependency Management

Ketika memiliki package.json, Node Js akan terlebih memerhatikan
file package.json tersebut.

Untuk menginstall package :
npm install namaPackage@version (instal specific version)
atau
npm install nama package (install latest version)

Ketika menginstall package, maka npm akan membuatkan
package-lock.json yg berisi informasi mengenai package
yg di install. Dan Node Js akan terlebih memerhatikan
file package-lock.json di bandingkan package.json ketika melaukan
instalasi package dan ini membuat instalasinya menjadi lebih cepat.

npm update 
untuk force install dengan tanpa melihat package-lock.json
Karena dengan ada nya package-lock.json node js akan
memeriksa di file itu dulu. Jdi klo package nya di lock.json
blm update maka gk bakal ke update sesuai yg di website npm nya
npm update akan memaksa npm memerika langsung ke web npm kita
ingin install existing package.

Untuk versioning di npm itu menggunakan semantic version

major.minor.patch

Major => perunbah besar yg membuat breaking changes
minor => fitur bertambah namun tidak membuat kode breaking
patch => kita bug fixing

"4.4.4" => install dan download versi package speciifi 4.4.4
"4.4.x" => install dan update package nya ke versi patch terbaru
"4.x" => install dan update package ke versi minor dan patch terbaru
"x" => install dan update package ke versi paling baru

"~4.4.4" => install dan update package nya ke versi patch terbaru
"^4.4.4" => install dan update package ke versi patch dan minor terbaru

F. Dev Dependencies

Dev dependencies merupakan packages yg akan di gunakan
saat development namun tidak akan di gunakan di 
saat di production.

npm install nmaa-package --save-dev (install package ke dlm dev package)

npm install (install semua production & development packages)
npm install --production (install hanya dev pakcages)