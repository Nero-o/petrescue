import 'package:flutter/material.dart';
import 'package:pet_rescue/utils/local_database.dart';
import 'package:pet_rescue/theme/color.dart'; 

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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Pet cadastrado com sucesso!')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pet'),
        backgroundColor: AppColor.primary,
      ),
      backgroundColor: AppColor.appBgColor, // Definir a cor de fundo
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Insira os detalhes do pet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.textColor,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField(
                label: 'Nome',
                onSave: (value) => _name = value ?? '',
                validator: (value) => value?.isEmpty ?? true
                    ? 'Insira o nome do pet'
                    : null,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                label: 'Idade',
                onSave: (value) => _age = value ?? '',
                validator: (value) => value?.isEmpty ?? true
                    ? 'Insira a idade do pet'
                    : null,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                label: 'Localização',
                onSave: (value) => _location = value ?? '',
                validator: (value) => value?.isEmpty ?? true
                    ? 'Insira a localização'
                    : null,
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: _registerPet,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ), backgroundColor: AppColor.primary, // Cor do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required FormFieldSetter<String> onSave,
    required FormFieldValidator<String> validator,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: AppColor.textColor,
          fontSize: 16,
        ),
        filled: true,
        fillColor: AppColor.textBoxColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
      ),
      validator: validator,
      onSaved: onSave,
    );
  }
}
