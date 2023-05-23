import 'package:cardapio/domain/lanche.dart';
import 'package:flutter/material.dart';

class LanchePage extends StatelessWidget {
  const LanchePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lanche = ModalRoute.of(context)!.settings.arguments as Lanche;

    return Scaffold(
      appBar: AppBar(
        title: Text(lanche.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Center(
              child: Image.network(lanche.foto),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    lanche.nome,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Text(
                    lanche.precoFormatado,
                    style: theme.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListView.builder(
                  itemCount: lanche.ingredientes.length,
                  itemBuilder: (context, index) =>
                      Text(lanche.ingredientes[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
