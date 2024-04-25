import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/background.dart';
import '../components/backIconButton.dart';

class Cilek_Screen extends StatelessWidget {
  const Cilek_Screen({Key? key}) : super(key: key);

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
                    'ÇİLEK\n',
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
                        image: AssetImage('assets/images/cilek.jpg'), // Resmin adresi
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
                    'Çileklerin tohumdan ziyade anaçtan yetiştirilmesi daha iyidir. Bitkisel büyüme (koşucular), eşeyli üremeden (tohumlar) çok daha hızlı olma eğilimindedir, bu nedenle anaç kullanarak ekimden üretime kadar geçen süreyi aylarca veya yıllarca kısaltabilirsiniz.',
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
                          DataCell(Text('Klondan çoğaltılması en hızlı ve kolaydır', style: TextStyle(fontSize: 15.0))),
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
                          DataCell(Text('Budama yoluyla birden fazla hasat yaygındır', style: TextStyle(fontSize: 15.0))),
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
                          DataCell(Text('14-18', style: TextStyle(fontSize: 15.0))),
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
                          DataCell(Text('Aralık: 65–75°F İdeal: 70°F', style: TextStyle(fontSize: 16.0))),
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
                              'Örümcek akarları, pythium, rhizoctonia gibi eklembacaklılar',
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
                SizedBox(height: 1),
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
}
