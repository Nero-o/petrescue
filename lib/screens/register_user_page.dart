import 'package:flutter/material.dart';
import 'package:pet_rescue/utils/local_database.dart';

class RegisterUserPage extends StatefulWidget {
  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';

  Future<void> _registerUser() async {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      List<Map<String, dynamic>> users = await LocalDatabase.loadData('users');
      users.add({"name": _name, "email": _email, "password": _password});
      await LocalDatabase.saveData('users', users);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Usuário cadastrado com sucesso!')));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de Usuário')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) => value?.isEmpty ?? true ? 'Insira seu nome' : null,
                onSaved: (value) => _name = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) => value?.isEmpty ?? true ? 'Insira seu email' : null,
                onSaved: (value) => _email = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) => value?.isEmpty ?? true ? 'Insira sua senha' : null,
                onSaved: (value) => _password = value ?? '',
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _registerUser, child: Text('Cadastrar')),
            ],
          ),
        ),
      ),
    );
  }
}
