import 'package:flutter/material.dart';
import 'package:pet_rescue/screens/register_pet_page.dart';

var profile = "";

List categories = [
  {
    "name" : "Todos",
    "icon" :  "assets/icons/pet-border.svg"
  },
  {
    "name" : "Cachorro",
    "icon" :  "assets/icons/dog.svg"
  },
  {
    "name" : "Gato",
    "icon" :  "assets/icons/cat.svg"
  },
];

List settings = [
  {
    "icon": Icons.brightness_6,
    "title": "Tema",
    "action": () {
      // Implementar ação para Tema
    },
  },
  {
    "icon": Icons.pets,
    "title": "Adoções",
    "action": () {
      // Implementar ação para Adoções
    },
  },
  {
    "icon": Icons.favorite,
    "title": "Favoritos",
    "action": () {
      // Implementar ação para Favoritos
    },
  },
  {
    "icon": Icons.lock,
    "title": "Políticas de Privacidade",
    "action": () {
      // Implementar ação para Políticas de Privacidade
    },
  },
  {
    "icon": Icons.pets,
    "title": "Cadastro de Pet",
    "action": (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterPetPage()),
      );
    },
  },
  {
    "icon": Icons.logout,
    "title": "Sair",
    "action": () {
      // Implementar ação para Sair
    },
  },
];

List pets = [

  {
    "image": "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Cheero",
    "location": "Maringá, Paraná",
    "is_favorited": true,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1558788353-f76d92427f16??ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Bossy",
    "location": "Maringá, Paraná",
    "is_favorited": false,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Maxi",
    "location": "Maringá, Paraná",
    "is_favorited": false,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1588269845464-8993565cac3a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Coca",
    "location": "Maringá, Paraná",
    "is_favorited": false,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1556227702-d1e4e7b5c232?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Lazoo",
    "location": "Maringá, Paraná",
    "is_favorited": true,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1598875184988-5e67b1a874b8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Meido",
    "location": "Maringá, Paraná",
    "is_favorited": false,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1587764379873-97837921fd44?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Koko",
    "location": "Maringá, Paraná",
    "is_favorited": false,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
  {
    "image": "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Roka",
    "location": "Maringá, Paraná",
    "is_favorited": false,
    "description": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
    "rate": 4.5, 
    "id": "pid001",
    "price": "\$1,250",
    "owner_name": "Sangvaleap",
    "owner_photo": profile,
    "sex": "Macho",
    "age": "5 Meses",
    "color": "Caramelo",
    "album" : [
      "https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    ]
  },
];

var chats = [
    {
    "image": "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", 
    "fname" : "John",
    "lname" : "Siphron",
    "name": "John Siphron", 
    "skill": "Dermatologists", 
    "last_text": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "1 min",
    "notify" : 4,
  },
  {
    "image":"https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "fname" : "Corey",
    "lname" : "Aminoff",
    "name": "Corey Aminoff", 
    "skill": "Neurologists", 
    "last_text": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "3 min",
    "notify" : 2,
  },
  {
    "image" : "https://images.unsplash.com/photo-1617069470302-9b5592c80f66?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "fname" : "Siriya",
    "lname" : "Aminoff",
    "name": "Siriya Aminoff", 
    "skill": "Neurologists", 
    "last_text": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "1 hr",
    "notify" : 1,
  },
  {
    "image" : "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "fname" : "Rubin",
    "lname" : "Joe",
    "name": "Rubin Joe", 
    "skill": "Neurologists", 
    "last_text": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "1 hr",
    "notify" : 1,
  },
  {
    "image": "https://images.unsplash.com/photo-1564460576398-ef55d99548b2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "fname" : "John",
    "lname" : "",
    "name": "DentTerry Jew", 
    "skill": "Dentist", 
    "last_text": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "2 hrs",
    "notify" : 0,
  },
  {
    "image": "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80", 
    "fname" : "John",
    "lname" : "",
    "name": "Corey Aminoff", 
    "skill": "Neurologists", 
    "last_text": "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "5 hrs",
    "notify" : 0,
  },
];

