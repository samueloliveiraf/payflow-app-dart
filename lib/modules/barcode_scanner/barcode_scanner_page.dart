import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/bottuon_shat/bottuon_shat.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottunSheet(
      title: 'Não foi possível identicar o código de barras',
      subtitle: 'Tente escanear novamente ou digite o código de seu boleto',
      primaryLabel: 'Escanear Novamente',
      primaryOnPressed: () {},
      secodaryLabel: 'Digitar código',
      secodaryOnPressed: () {},
    );
    //   return SafeArea(
    //     top: true,
    //     bottom: true,
    //     left: true,
    //     right: true,
    //     child: RotatedBox(
    //       quarterTurns: 1,
    //       child: Scaffold(
    //         appBar: AppBar(
    //           backgroundColor: Colors.black,
    //           centerTitle: true,
    //           title: Text(
    //             'Escanei o código de barras do boleto',
    //             style: TextStyles.buttonBackground,
    //           ),
    //           leading: BackButton(
    //             color: AppColors.background,
    //           ),
    //         ),
    //         body: Column(
    //           children: [
    //             Expanded(
    //                 child: Container(
    //               color: Colors.black.withOpacity(0.8),
    //             )),
    //             Expanded(
    //                 child: Container(
    //               color: Colors.transparent,
    //             )),
    //             Expanded(
    //                 child: Container(
    //               color: Colors.black.withOpacity(0.8),
    //             )),
    //           ],
    //         ),
    //         bottomNavigationBar: SetLabelButtons(
    //           primaryLabel: 'Inserir código do boleto',
    //           primaryOnPressed: () {},
    //           secodaryLabel: 'Adicionar da Galeria',
    //           secodaryOnPressed: () {},
    //         ),
    //       ),
    //     ),
    //   );
  }
}
