import 'package:flutter/material.dart';

class Planetas extends StatelessWidget {
  final List<String> planetas;
  const Planetas(this.planetas, {super.key});
  Widget _buildPlanetaItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('../assets/planeta.jpg'),
          Text(planetas[index],
              style: const TextStyle(color: Colors.deepPurple))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildPlanetaItem,
      itemCount: planetas.length,
    );
  }
}
