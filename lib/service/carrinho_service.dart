import 'package:flutter/foundation.dart';
import 'package:providers/domain/item_pedido.dart';
import 'package:providers/domain/produto.dart';
import 'package:providers/util/format.dart';

class Carrinho extends ChangeNotifier {
  final List<ItemPedido> _itens = [];

  void addItem(Produto produto, int quantidade) {
    if (_jaTemProduto(produto)) {
      // descobrimos qual a posição da lista onde se encontra o nosso produto
      final position = _itens.indexWhere(findItemByProduto(produto));

      // recuperamos o item que se encontra na posição que descobrimos
      final item = _itens[position];
      // alteramos a quantidade, gerando um novo item, e colocamos ela na mesma posição
      //sobreescrevendo o item que ali estava
      _itens[position] = item.changeQuanttity(item.quantidade + quantidade);

      notifyListeners();

      return;
    }

    notifyListeners();

    _itens.add(ItemPedido(
        produto: produto,
        desconto: 0,
        preco: produto.preco,
        quantidade: quantidade));
  }

  bool _jaTemProduto(Produto produto) {
    return _itens
        .where((element) => element.produto.id == produto.id)
        .isNotEmpty;
  }

  bool Function(ItemPedido item) findItemByProduto(Produto produto) {
    return (item) => item.produto.id == produto.id;
  }

  List<ItemPedido> get itens => _itens;
  double get total => itens
      .map((element) => element.total)
      .reduce((value, element) => value + element);

  String get totalFormatado => formatMoney(total);

  int get count => itens.length;
}
