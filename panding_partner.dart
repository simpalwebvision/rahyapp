import 'package:flutter/material.dart';

class PandingPartner extends StatefulWidget {
  const PandingPartner({Key? key}) : super(key: key);

  @override
  State<PandingPartner> createState() => _PandingPartnerState();
}

class _PandingPartnerState extends State<PandingPartner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Panding  Pantner',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Card(
        child: Column(
          children: [
            TextField(
                // onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 5),
                    hintText: "Search",
                    suffixIcon: const Icon(Icons.search))),
            Center(
              child: Container(
                color: Colors.white,
                height: 120,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: <DataColumn>[
                        DataColumn(
                          label: Text('Ref#'),
                        ),
                        DataColumn(
                          label: Text('Mobile'),
                        ),
                        DataColumn(
                          label: Text('Area'),
                        ),
                        DataColumn(
                          label: Text('City'),
                        ),
                        DataColumn(
                          label: Text('Date'),
                        ),
                        DataColumn(
                          label: Text('View'),
                        ),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('No')),
                            DataCell(Text('Name')),
                            DataCell(Text('Mobile')),
                            DataCell(Text('Area')),
                            DataCell(Text('view')),
                            DataCell(Text('Action')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('No Date available in table'),
                  )
                ],
              ),
            ),
            Container(
                height: 40,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
