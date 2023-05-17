import 'package:flutter/material.dart';
import 'package:ellicia/data_recepes.dart';
import 'package:ellicia/resep.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dapur Mama Cia'),
      ),
      body: ListView.builder(
        itemCount: dataResep.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(reseps: dataResep[index]),
                  ));
            },
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        dataResep[index].image,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dataResep[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueAccent),
                      ),
                      Text('HTM : ${dataResep[index].htm}'),
                      ClipOval(
                        child: Material(
                          color: Colors.blue,
                          child: InkWell(
                            splashColor: Colors.red,
                            child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Icon((Icons.favorite))),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
