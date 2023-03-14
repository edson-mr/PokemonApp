
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Pokemon? pokemon;
  int pokemonId = 1;

  @override
  void initState() {
    super.initState();
    obtenerPokemon();
  }

  Future<void> obtenerPokemon() async{
    final response = await Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemonId');

   pokemon= Pokemon.fromMap(response.data);
setState(() {
  
});
  }

  void next(){
    setState(() {
     pokemonId++;
     obtenerPokemon();
    });
  }

  void previous(){
    setState(() {
      pokemonId--;
      if(pokemonId == 0){
        pokemonId=1;
        return;
      }
      obtenerPokemon();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Pokemon id: $pokemonId'),
          centerTitle: true,
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text(pokemon?.name ?? 'no pokemon', style: const TextStyle(fontSize: 30),),
            if(pokemon != null)
         Image.network(pokemon!.sprites.frontDefault, scale: .3,),
           
           ],
         ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed:previous,
          child: const Icon(Icons.arrow_back_ios),),
           FloatingActionButton(
            onPressed: next,
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}