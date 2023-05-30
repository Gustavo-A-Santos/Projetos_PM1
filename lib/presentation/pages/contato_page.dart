import 'package:agenda/domain/contato.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../domain/contato.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final contato = ModalRoute.of(context)!.settings.arguments as Contato;

    return Scaffold(
      appBar: AppBar(
        title: Text(contato.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Center(
              child: Image.asset(contato.imagem),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    contato.email,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Text(
                    contato.dataNascimento,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Text(
                    contato.idade,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Text(
                    contato.telefone,
                    style: theme.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
