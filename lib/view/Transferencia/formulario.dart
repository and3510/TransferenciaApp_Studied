import 'package:flutter/material.dart';
import 'package:meu_app/components/editor.dart';
import 'package:meu_app/models/transferencia.dart';

class FormularioTransferencia  extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormularioTransferenciaState();
  }

}

class FormularioTransferenciaState extends State<FormularioTransferencia> {

  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Meu app"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(_controladorCampoNumeroConta,"Exemplo: 1202","Digite algo", null),
            Editor(_controladorCampoValor, "Exemplo: 30,00","Digite um valor", Icons.monetization_on),
        
        
            ElevatedButton(
              onPressed: () {
                _criaTransferencia(context);
        
              },
              child: Text("Confirmar"),
            ),
            
          ],
        ),
      )
      );
  }


  void _criaTransferencia(BuildContext context) {
    debugPrint("Clicou no botao");
    debugPrint(_controladorCampoNumeroConta.text);
    debugPrint(_controladorCampoValor.text);
    
    final numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final valor = double.tryParse(_controladorCampoValor.text);
    
    if (numeroConta != null && valor != null) {
     final transferenciaCriada = Transferencia(valor: valor, numeroConta: numeroConta);
     debugPrint('$transferenciaCriada');
     Navigator.pop(context, transferenciaCriada);
    }
  }
}