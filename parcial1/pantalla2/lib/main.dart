import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddMoneyScreen(),
    );
  }
}

class AddMoneyScreen extends StatelessWidget{
  const AddMoneyScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            //Encabezado
            // ENCABEZADO
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Add money',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 20),
            // Select card
            const Text(
              'Select card',
              style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            //Tarjetas 
            SizedBox(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   bankCard(
                    Icons.credit_card,
                    'Debit card',
                    '•••• 4568',
                    Colors.lightGreenAccent,
                  ),
                  const SizedBox(width: 10),

                  bankCard(
                    Icons.credit_card,
                    'Credit card',
                    '•••• 2478',
                    Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  bankCard(
                    Icons.credit_card,
                    'Bank card',
                    '•••• ••••',
                    Colors.grey.shade400,
                  ),
                  const SizedBox(width: 10),

                ],
              ),
            ),
      

            //  Neobank el siguiente titulo
            const SizedBox(height: 20),
            
            const Text("add Money to NeoBank",
             style: TextStyle(
                fontSize: 20,
             )),
            // un espacio en medio por separacion 
            const SizedBox(height: 20),
           
            optionAction(
              Icons.money,
              'Move your direct deposit'
            ),

            const SizedBox(height:20),

            optionAction(
              Icons.swap_calls,
              'Transfer from other banks',
            ),

            const SizedBox(height:20),

            optionAction(
              Icons.apple,
              'Apple pay',
            ),
            const SizedBox(height:20),

            optionAction(
              Icons.credit_card,
              'Debit / Credit Card'
            )
          ],
        )
      ),
    );
  }

}

Widget bankCard(
  IconData icon,
  String title,
  String number,
  Color color,
) {
  return Container(
    width: 170,
    padding: const EdgeInsets.all(16),

    decoration: BoxDecoration(
      color: color,
      border: Border.all(),
      borderRadius: BorderRadius.circular(20),
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.circle_outlined),
            Icon(icon),
          ],
        ),

        const Spacer(),

        Text(title),

        const SizedBox(height: 5),

        Text(
          number,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget optionAction(
  IconData icon,
  String titulo,
){
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      border: Border.all(),
      borderRadius: BorderRadius.circular(15),

    ),
    child: Row(
      children: [
        Icon(icon, size: 20),
        
        const SizedBox(width: 18),
        
        Expanded(
          child: Text(
            titulo, 
            style: const TextStyle(fontSize: 14)
            ),
          ),

        const Icon(
          Icons.arrow_forward_ios,
          size: 18,

        )
      ],
      
    ),
  );
}