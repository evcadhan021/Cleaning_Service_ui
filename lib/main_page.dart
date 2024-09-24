import 'package:cleaning_service_app/color_schema.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedType = "bersih";
  String selectedFrequency = 'monthly';

  Map<String, bool> selectedExtras = {
    'Dapur': false,
    'Memasak': false,
    'Tirai Kecil': false,
    'Teras': false,
    'Belanja': false,
    'Tirai Besar': false,
  };

  void onChangePaketType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  void toggleExtra(String extraName) {
    selectedExtras[extraName] = !selectedExtras[extraName]!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple400,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Paket Langganan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Pilih Paket',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangePaketType('bersih');
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                            color: deepPurple400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: const DecorationImage(
                              image: AssetImage('assets/image/img1.png'),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Paket Bersih',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: deepPurple100),
                        child: selectedType == "bersih"
                            ? Icon(
                                Icons.check_circle,
                                color: pink400,
                                size: 30,
                              )
                            : Container(),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangePaketType('mengkilap');
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                          color: deepPurple100,
                          image: const DecorationImage(
                            image: AssetImage('assets/image/img2.png'),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Paket Mengkilap',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: deepPurple100),
                        child: selectedType == "mengkilap"
                            ? Icon(
                                Icons.check_circle,
                                color: pink400,
                                size: 30,
                              )
                            : Container(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pilih Langganan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    changeFrequency('weekly');
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: selectedFrequency == 'weekly'
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        'Mingguan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == 'weekly'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency('biweekly');
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: selectedFrequency == 'biweekly'
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        '2-Mingguan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == 'biweekly'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency('monthly');
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: selectedFrequency == 'monthly'
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        'Bulanan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == 'monthly'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pilih Tambahan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => toggleExtra('Dapur'),
                  child: extraWidget('es', 'Dapur', selectedExtras['Dapur']!),
                ),
                InkWell(
                  onTap: () => toggleExtra('Memasak'),
                  child: extraWidget(
                      'belanja', 'Memasak', selectedExtras['Memasak']!),
                ),
                InkWell(
                  onTap: () => toggleExtra('Tirai Kecil'),
                  child: extraWidget(
                      'tirai', 'Tirai Kecil', selectedExtras['Tirai Kecil']!),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => toggleExtra('Teras'),
                  child:
                      extraWidget('teras', 'Teras', selectedExtras['Teras']!),
                ),
                InkWell(
                  onTap: () => toggleExtra('Belanja'),
                  child: extraWidget(
                      'belanja', 'Belanja', selectedExtras['Belanja']!),
                ),
                InkWell(
                  onTap: () => toggleExtra('Tirai Besar'),
                  child: extraWidget(
                      'tirai', 'Tirai Besar', selectedExtras['Tirai Besar']!),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: deepPurple400),
              child: Container(
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/icons/$img.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: isSelected
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink400,
                        ),
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
