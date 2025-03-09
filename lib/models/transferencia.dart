class Transferencia {
  final double valor;
  final int numeroConta;


  Transferencia({required this.valor, required this.numeroConta});

  @override
  String toString() {
    // TODO: implement toString
    return "Tranferencia do $valor pela conta: $numeroConta";
  }
}