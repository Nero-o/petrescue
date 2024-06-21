import 'package:flutter/material.dart';
import 'package:pet_app/utils/data.dart';
import 'package:pet_app/widgets/settings_list_box.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          _buildProfile(),
          _buildSettings(),
        ],
      ),
    );
  }

  _buildHeader() {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 60, 15, 5),
      child: Column(
        children: [
          Text(
            "Configurações",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  _buildProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(profile), // Imagem do perfil
            backgroundColor: Colors.grey[200],
          ),
          SizedBox(height: 10),
          Text(
            'Omar',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  _buildSettings() {
    return ListView(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Previne scroll duplicado
      children: List.generate(
        settings.length,
        (index) => SettingItemBox(
          icon: settings[index]["icon"],
          title: settings[index]["title"],
          onTap: () {
            final action = settings[index]["action"];
            if (action != null) {
              action(context);
            }
          },
        ),
      ),
    );
  }
}
