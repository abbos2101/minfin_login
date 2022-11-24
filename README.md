[![Pub](https://img.shields.io/pub/v/minfin_login.svg)](https://pub.dartlang.org/packages/minfin_login)
[![License](https://img.shields.io/badge/licence-MIT-orange.svg)](https://github.com/abbos2101/minfin_login/blob/main/LICENSE)
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/abbos2101/minfin_login.svg)](https://github.com/abbos2101/minfin_login)
[![GitHub stars](https://img.shields.io/github/stars/abbos2101/minfin_login.svg?style=social)](https://github.com/abbos2101/minfin_login)


Ushbu package Play Market uchun maxsus tayyorlandi. Dasturning kirish qismiga kirganda foydalabuvchi IP manzili orqali agar O'zbekistonda bo'lsa boshqa page agar boshqa davlat bo'lsa boshqa page chiqariladigan qilingan.

<table>
   <tr>
      <td align="center">
         <a href="https://raw.githubusercontent.com/abbos2101/minfin_login/main/git_assets/img_uz.PNG">O'zbekistonda</a>
         <br>
         <img src="https://raw.githubusercontent.com/abbos2101/minfin_login/main/git_assets/img_uz.PNG"  width="200"/>
      </td>
      <td align="center">
         <a href="https://raw.githubusercontent.com/abbos2101/minfin_login/main/git_assets/img_other.PNG">Boshqa davlatlarda</a>
         <br>
         <img src="https://raw.githubusercontent.com/abbos2101/minfin_login/main/git_assets/img_other.PNG"  width="200"/>
      </td>
    </tr>
 </table>


## Ishlatilishi
Kodning birinchi qismida ensureInitialized qilib olish kerak.
```dart
MinfinLogin.ensureInitialized(
    builderUzb: (context) {
      return const Scaffold(body: Center(child: Text("UZB")));
    },
    onTestLogin: (login, password) async {
      //Play market uchun berilgan test user login paroliga tekshilib
      //keyingi qadamlar amalga oshiriladi
    },
  );
```
MinfinLoginni chaqiradigan qismda quyidagigacha ishlatiladi
```
Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) => MinfinLogin.getInstance()),
);
```

## License
```
Copyright (c) 2022 Bobomurodov Abbos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
