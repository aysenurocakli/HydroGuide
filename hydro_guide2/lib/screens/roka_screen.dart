

import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/background.dart';
import 'package:hydro_guide2/screens/rokayetistirme_screen.dart';
import '../components/backIconButton.dart';
import '../components/roundedButton.dart';

class Roka_Screen extends StatelessWidget {
  const Roka_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 6.0, bottom: 1.0),
                  child: Text(
                    'ROKA\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90.0),
                  child: Container(
                    height: 200, // Resmin yüksekliği
                    width: 200, // Resmin genişliği
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/roka.jpg'), // Resmin adresi
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Color(0x6EA924).withOpacity(0.5), BlendMode.multiply), // Renk karıştırma modu
                      ),
                      borderRadius: BorderRadius.circular(10), // İsteğe bağlı, kenarlara yuvarlaklık ekler
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'Roka, marul gibi büyümesine (bazı çeşitleri sadece 3 haftada hasada hazır hale gelir) ve brassica ailesinden olmasına rağmen, genellikle bir bitki olarak kabul edilir.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                  child: DataTable(
                    dataRowHeight: 68.0,
                    dividerThickness: 1.5,
                    columns: [
                      DataColumn(label: SizedBox(width: 100, height: 9, child: Text(''))), // İlk sütunu genişletmek için bir boş widget ekleyelim
                      DataColumn(label: Text('Değerler', textAlign: TextAlign.right, style: TextStyle(fontSize: 20.0),)),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(Text('Ekim', style: TextStyle(fontSize: 20.0))),
                          DataCell(Text('Tohumdan Çimlenmek', style: TextStyle(fontSize: 15.0))),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(Text('pH Aralığı', style: TextStyle(fontSize: 20.0))),
                          DataCell(Text('5.5 - 6.5', style: TextStyle(fontSize: 15.0))),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(Text('Hasat', style: TextStyle(fontSize: 20.0))),
                          DataCell(Text('Tam Hasat', style: TextStyle(fontSize: 15.0))),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(Text('EC/PPM', style: TextStyle(fontSize: 20.0))),
                          DataCell(Text('0,8-1,4 / 400-700', style: TextStyle(fontSize: 15.0))),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(Text('Işık Saatleri', style: TextStyle(fontSize: 20.0))),
                          DataCell(Text('12-18', style: TextStyle(fontSize: 15.0))),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(Text('Sıcaklık', style: TextStyle(fontSize: 20.0))),
                          DataCell(Text('Aralık: 50–75°F İdeal: 65°F', style: TextStyle(fontSize: 16.0))),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.white60.withOpacity(0.27); // Satır arka plan rengi
                          },
                        ),
                        cells: [
                          DataCell(
                            Text(
                              'Zararlılar ve \n hastalıklar',
                              style: TextStyle(fontSize: 20.0),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          DataCell(
                            Text(
                              'En yaygın olanları yaprak bitleri ve pire böcekleridir. ',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                buildStartButton(context,'Yetiştirmeye Başla'),
                SizedBox(height: 10),
                BackIconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildStartButton(BuildContext context, String text) {
    return RoundedButton(
      text: text,
      color: Color.fromRGBO(27, 106, 49, 100),
      textColor: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Roka_Yetistirme()), // Yeni sayfaya yönlendirme
        );
      },
    );
  }

}
