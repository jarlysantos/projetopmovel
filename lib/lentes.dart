import 'package:flutter/material.dart';

class Lentes extends StatefulWidget {
  const Lentes({super.key});

  @override
  State<Lentes> createState() => _LentesState();
}

class _LentesState extends State<Lentes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buidlAppBar(),
        body: buildBody(),
      ),
    );
  }

  buildBody(){
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Lentes", style: TextStyle(fontSize: 20, color: Colors.blueAccent,)),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg", width: 250,),
                      Text("Par de lente anti-blue + antirreflexo - com grau")
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      Text("R\$ 299,90", style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, size: 18),
                            Icon(Icons.star, size: 18),
                            Icon(Icons.star, size: 18),
                            Icon(Icons.star, size: 18),
                            Icon(Icons.star, size: 18)
                          ],
                        ),
                      ),
                      Text("3x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                    ],
                  ),
                )
              ],
            )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg", width: 250,),
                        Text("Par de lente anti-blue + antirreflexo - com grau")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 299,90", style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text("3x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) 
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg", width: 250,),
                        Text("Par de lente anti-blue + antirreflexo - com grau")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 299,90", style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text("3x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  )
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg", width: 250,),
                        Text("Par de lente anti-blue + antirreflexo - com grau")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 299,90", style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text("3x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) 
                ],
              )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg", width: 250,),
                        Text("Par de lente anti-blue + antirreflexo - com grau")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 299,90", style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18)
                            ],
                          ),
                        ),
                        Text("3x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

                      ],
                    ),
                  ) 
                ],
              )
          ),
          SizedBox(
            height: 40,
          )



        ],
      ),
    );
  }

  buidlAppBar() {

  }
}
