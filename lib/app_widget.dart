import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppColors {
  static const Color marromCapivara = Color(0xFFB35D2E);
  static const Color verdeReagente = Color(0xFFA2D033);
  static const Color marromEscuro = Color(0xFF7D4F39);
  static const Color cremeSuave = Color(0xFFF5EBD7);
  static const Color brancoPuro = Color(0xFFFFFFFF);
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
    
          // Define a semente do esquema de cores (gera tons automáticos)
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.marromCapivara, // Cor base
            primary: AppColors.marromCapivara,
            secondary: AppColors.verdeReagente,
            surface: AppColors.cremeSuave, // Cor de fundo de cartões/caixas
            onPrimary: AppColors.brancoPuro,
            
            brightness: AppController.instance.isDartTheme 
              ? Brightness.dark 
              : Brightness.light, // Cor do texto sobre a cor primária
          ),
    
          // Define o brilho baseado no seu AppController
          brightness: AppController.instance.isDartTheme 
              ? Brightness.dark 
              : Brightness.light,

          // Personalizações extras para combinar com a logo
          scaffoldBackgroundColor: AppController.instance.isDartTheme 
            ? null 
            : AppColors.cremeSuave,

          // Exemplo de como aplicar o Verde Reagente em botões de ação
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.verdeReagente, // Aqui ele aceita Color direto
                foregroundColor: AppColors.brancoPuro,
              ),
          ),

          textTheme: const TextTheme(
          displayLarge: TextStyle(color: AppColors.verdeReagente, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(color: AppColors.verdeReagente),
        ),
        ),
        
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
        },
      );
    });
}
}