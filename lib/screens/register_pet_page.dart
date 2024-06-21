import 'package:flutter/material.dart';
import 'package:pet_rescue/utils/local_database.dart';

class RegisterPetPage extends StatefulWidget {
  @override
  _RegisterPetPageState createState() => _RegisterPetPageState();
}

class _RegisterPetPageState extends State<RegisterPetPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _age = '';
  String _location = '';

  Future<void> _registerPet() async {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      List<Map<String, dynamic>> pets = await LocalDatabase.loadData('pets');
      pets.add({"name": _name, "age": _age, "location": _location});
      await LocalDatabase.saveData('pets', pets);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Pet cadastrado com sucesso!')));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de Pet')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) => value?.isEmpty ?? true ? 'Insira o nome do pet' : null,
                onSaved: (value) => _name = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Idade'),
                validator: (value) => value?.isEmpty ?? true ? 'Insira a idade do pet' : null,
                onSaved: (value) => _age = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Localização'),
                validator: (value) => value?.isEmpty ?? true ? 'Insira a localização' : null,
                onSaved: (value) => _location = value ?? '',
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _registerPet, child: Text('Cadastrar')),
            ],
          ),
        ),
      ),
    );
  }
}
