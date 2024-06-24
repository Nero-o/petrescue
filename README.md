# Documentação do Aplicativo PetRescue

PetRescue é um aplicativo móvel desenvolvido para facilitar a adoção responsável de animais de estimação. Ele permite que usuários cadastrem pets, visualizem animais disponíveis para adoção e gerenciem favoritos. Este projeto foi construído com o framework Flutter, visando uma experiência multiplataforma para dispositivos Android e iOS.

## Funcionalidades

- `Cadastro de Pets`: Usuários podem registrar novos pets no sistema, fornecendo informações como nome, idade, localização e uma breve descrição. Este cadastro é armazenado localmente e pode ser acessado para exibição.

- `Listagem de Pets Disponíveis`: Uma página dedicada a listar todos os pets cadastrados, onde cada pet é exibido com uma imagem, nome, idade, localização, e uma breve descrição.

- `Gerenciamento de Favoritos`: Possibilidade de marcar pets como favoritos para fácil acesso futuro, auxiliando na decisão de adoção.

- `Configurações do Aplicativo`: Permite a personalização da experiência do usuário, incluindo a alteração do tema do aplicativo e o acesso às políticas de privacidade.
 
- `Busca por Pets`: Usuários podem procurar pets específicos usando critérios como nome, tipo, ou localização, facilitando a busca por um pet adequado

## Tecnologias Utilizadas
- `Flutter`: Framework para desenvolvimento multiplataforma.
- `Dart`: Linguagem de programação utilizada.
- `SQLite`: Armazenamento local de dados.
- `REST APIs`: Planejado para futuras integrações com servidores remotos.
## Instalação
Requisitos
- `Flutter SDK`: Versão 2.10 ou superior
- `Dart SDK`: Versão 2.16 ou superior
- `Android Studio / Xcode`
- `Emulador Android / iOS ou dispositivo físico`

Passos para Instalação

1. Clone o repositório do projeto:

```bash
 git clone https://github.com/Nero-o/petrescue.git

```
2. Navegue até o diretório do projeto:

```bash
cd petrescue
```

3. Instale as dependências do Flutter:
```bash
flutter pub get
```

4. Execute o aplicativo em um emulador ou dispositivo físico:
```bash
flutter run
```
    
## Estrutura do Projeto
```bash
petrescue/
├── android/      # Configurações específicas para Android
├── assets/       # Arquivos de recursos como imagens e ícones
│   ├── icons/
│   └── images/
├── ios/          # Configurações específicas para iOS
├── lib/          # Código-fonte principal do aplicativo
│   ├── models/
│   ├── screens/  # Telas do aplicativo
│   │   ├── home_page.dart
│   │   ├── register_pet_page.dart
│   │   ├── settings_page.dart
│   ├── utils/    # Utilitários e helpers
│   │   ├── data.dart
│   │   ├── local_database.dart
│   ├── widgets/  # Componentes reutilizáveis
│   │   ├── category_item.dart
│   │   ├── pet_card.dart
│   │   ├── settings_list_box.dart
│   └── main.dart # Ponto de entrada do aplicativo
├── pubspec.yaml  # Arquivo de configuração do Flutter/Dart
└── README.md
```
## Contribuindo
Contribuições são bem-vindas! Siga as instruções abaixo para contribuir com o projeto:
- Fork o repositório.
- Crie uma branch com a nova funcionalidade (git checkout -b feature/nova-funcionalidade).
- Commit suas mudanças (git commit -m 'Adiciona nova funcionalidade').
- Push para a branch (git push origin feature/nova-funcionalidade).
- Abra um Pull Request.

## Licença
Este projeto está licenciado sob a licença MIT. Consulte o arquivo LICENSE para mais informações.
