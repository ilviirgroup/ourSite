import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';

var kDefaultTextColor = HexColor('#343549');
var kOrangeLikeColor = HexColor('#d29c7d');
const kInNumbersStyle1 =
    TextStyle(fontSize: 88.0, fontWeight: FontWeight.w700, color: Colors.white);
var kInNumbersStyle2 = TextStyle(fontSize: 20.0, color: HexColor('#d29c7d'));

List diller = [
  ['Esasy sahypa', 'Главный', 'Ana Sayfa', 'Home'], // 0
  ['Biz barada', 'О нас', 'Hakkımızda', 'About'], // 1
  ['Edýän işlerimiz', 'Что мы делаем', 'Biz ne yapıyoruz', 'What we do'], // 2
  ['Proýektlar', 'Пройекты', 'Projelerimiz', 'Projects'], // 3
  ['Habarlaşmak', 'Контакты', 'İletişim', 'Contacts'], // 4
  [
    'Aşgabat şäheri, Türkmenbaşy şaýoly 45, Türkmenistan',
    'г.Ашхабад, пр.Туркменбаши, Туркменистан',
    'Türkmenbaşy caddesi No45, Aşgabat, TÜRKMENISTAN',
    'Turkmenbashy avenue 45, Ashgabat, TURKMENISTAN'
  ], // 5
  [
    'Biz internet saýtlaryny we telefon programmalaryny düzýäris',
    'Мы создаем веб сайты и мобилный приложении',
    'Biz internet sitelerini ve mobil uygulamalarını tasarlıyoruz',
    'We design web sites and develop mobile applications'
  ], // 6
  [
    'Sanlar boýunça biziň şereketimiz',
    'Наша компания в цифрах',
    'Rakamlarla firmamız',
    'Our company in numbers'
  ], // 7
  [
    'Işgärler',
    'Штатны\nсотрудники',
    'Personel\nüyeleri',
    'Staff\nmembers'
  ], // 8
  [
    'Edilen\nişler',
    'Реализованные\nпроекты',
    'Uygulanan\nprojeler',
    'Implemented\nprojects'
  ], // 9
  [
    'Şereketimiziň\nýaşy',
    'Возраст\nкомпании',
    'Piyasadaki\nyıllar',
    'Years on the\nmarket'
  ], // 10
  [
    'Alemshop, android we IOS üçin niýetlenen onlaýn söwda programmasy',
    'Alemshop, приложение для онлайн-покупок для android и ios',
    'Alemshop, android ve ios için online alışveriş uygulaması',
    'Alemshop, online shopping application for android and ios'
  ], // 11
  [
    'Esasy maksadymyz ygtybarly we döwrebap ykjam programmalary we web sahypalaryny döretmek we dizaýn etmek.',
    'Наша главная цель - разрабатывать и проектировать как надежные, так и современные мобильные приложения и веб-сайты.',
    'Temel amacımız hem güvenilir hem de modern bir mobil uygulama ve web sitesi geliştirmek ve tasarlamaktır.',
    'Our main aim is to develop and design both a reliable and modern mobile apps and web sites.'
  ] // 12
];
