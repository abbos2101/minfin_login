[![Pub](https://img.shields.io/pub/v/minfin_login.svg)](https://pub.dartlang.org/packages/minfin_login)
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
```
