import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/background.dart';
import '../components/backIconButton.dart';

class Marul_Screen extends StatelessWidget {
  const Marul_Screen({Key? key}) : super(key: key);

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
                    'MARUL\n',
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
                        image: AssetImage('assets/images/marul.jpg'), // Resmin adresi
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
                    'Marul, hidrofonik, akuaponik veya geleneksel toprak bahçeleri olsun hemen hemen her bahçe sisteminde iyi yetişir. Nispeten az yer kaplar, sağlıklı olduğunda kısa bir büyüme döngüsüne (dikimden itibaren 5-6 hafta veya tohumdan itibaren 9-11 hafta) sahiptir ve her zaman yüksek pazar talebi vardır.',
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
                          DataCell(Text('Bütün bir baş olarak hasat edin ve 32-35°F sıcaklıkta saklayın.', style: TextStyle(fontSize: 15.0))),
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
                          DataCell(Text('1,0-1,6 / 500-800', style: TextStyle(fontSize: 15.0))),
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
                          DataCell(Text('Aralık: 45–75°F İdeal: 65°F', style: TextStyle(fontSize: 16.0))),
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
                              'Yaprak bitleri, yaprak madencileri ve külleme',
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
