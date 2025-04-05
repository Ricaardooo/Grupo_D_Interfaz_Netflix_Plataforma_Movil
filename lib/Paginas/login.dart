// login.dart
import 'package:flutter/material.dart';
import 'package:clone_netflix/Paginas/inicio.dart';

void main() {
  runApp(const NetflixLoginApp());
}

class NetflixLoginApp extends StatefulWidget {
  const NetflixLoginApp({super.key});

  @override
  State<NetflixLoginApp> createState() => _NetflixLoginAppState();
}

class _NetflixLoginAppState extends State<NetflixLoginApp> {
  bool _rememberMe = true; // Estado inicial del checkbox

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://analyticsindiamag.com/wp-content/uploads/2019/05/apps.55787.9007199266246365.687a10a8-4c4a-4a47-8ec5-a95f70d8852d.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png',
                        width: 150,
                      ),
                      const SizedBox(height: 40),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 400),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email o número de celular',
                                    hintStyle: TextStyle(color: Colors.white70),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Divider(color: Colors.grey),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Contraseña',
                                    hintStyle: TextStyle(color: Colors.white70),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    // Redirigir a la página de inicio
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => InicioPage(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 100,
                                      vertical: 15,
                                    ),
                                  ),
                                  child: const Text(
                                    'Iniciar sesión',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '¿Olvidaste tu contraseña?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                CheckboxListTile(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value ?? false;
                                    });
                                  },
                                  title: const Text(
                                    'Recuérdame',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  activeColor: Colors.red,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Usar un código de inicio de sesión',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  '¿Primera vez en Netflix? Suscríbete ya.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Esta página está protegida por Google reCAPTCHA para comprobar que no eres un robot.',
                                  style: TextStyle(color: Colors.grey),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 5),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Más info.',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
