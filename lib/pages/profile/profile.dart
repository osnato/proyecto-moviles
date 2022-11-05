import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Colors.black
              ),
              child: const CircleAvatar(backgroundImage: NetworkImage("https://static3.abc.es/media/summum/2021/10/01/maxi_iglesias-kXKH--620x349@abc.jpeg"),)
            ),
          ],
        ),
        const Text("Daniel"),
        Expanded(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
                    onSubmitted: ((value) {
                    }),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Correo',
                      labelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: (){
                        },
                        icon: const Icon(Icons.mail,color: Colors.black,),
                        )
                    
                    ),
                  ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
                    onSubmitted: ((value) {
                     
                    }),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Contraseña',
                      labelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: (){
                         
                        },
                        icon: const Icon(Icons.password,color: Colors.black,),
                        )
                    
                    ),
                  ),
        ),
       
          ],
        )
        )
      ],
    ),
    );
  }
}