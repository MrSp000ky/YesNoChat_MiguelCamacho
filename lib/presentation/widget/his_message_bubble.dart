import 'package:flutter/material.dart';

class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(20)),
         child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          child:  Text("Ejemplo Text",
          style: TextStyle(color: Colors.amber),)),
        ),
        const SizedBox(
          height: 20,
          ),
          const _ImageBubble(),
          const SizedBox(
            height: 20,
          )
      ],
    );
  }
}


class _ImageBubble extends StatelessWidget {
  const _ImageBubble();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("Anchura(Antes y despues) : ${size.width} = ${size.width*0.7}");
    print("Altura(Antes y despues): ${size.height} = ${size.height*0.7}");
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif",
        width: size.width*0.7,
        height: size.height*0.2,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) 
        => (loadingProgress == null)?
        child:
          Container(
            width: size.width*0.7,
            height: size.height*0.2,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5
            ),
              child: const Text(
                "Cargando Imagen... 8)",
              ),

            
            
          )
      ),
    );
  }
}