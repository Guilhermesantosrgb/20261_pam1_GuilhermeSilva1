import 'package:flutter/material.dart';

// 1. O ponto de entrada agora chama a classe correta
void main() {
  runApp(const MeuApp());
}

// 2. Configurações Globais do App (Tema, Título, etc.)
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

// 3. A estrutura da tela (Scaffold)
class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra Superior
      appBar: AppBar(
        title: const Text('Exemplo Scaffold'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      
      // Menu Lateral (Hambúrguer)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
          ],
        ),
      ),
      
      // Corpo da tela
      body: const Center(
        child: Text(
          'Conteúdo da Interface',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      
      // Botão Flutuante
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão aqui
        },
        child: const Icon(Icons.add),
      ),
      
      // Barra de Navegação Inferior
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Negócios'),
        ],
      ),
    );
  }
}