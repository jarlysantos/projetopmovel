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
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lentes',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),

          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
        ),
        body: buildBody(),
      ),
    );
  }

  buildBody(){
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/c3511773-3978-46c0-8dcf-1ddf29d738e641-8e6d88a2ae8804719715900976899620-1024-1024.jpg", width: 250,),
                      Text("Par de lente anti-blue + antirreflexo - ")
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
                        Image.network("https://acdn-us.mitiendanube.com/stores/001/118/587/products/f2e6dfdd-55f1-46e6-98e5-3fe4fc56568241-0ea647ad9d2a0bdf8e15900976899393-1024-1024.jpg", width: 250,),
                        Text("Par de lente - fotossensível + antirreflexo com grau")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 400,00", style: TextStyle(fontWeight: FontWeight.bold)),
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
                        Text("2x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

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
                        Image.network("https://acdn-us.mitiendanube.com/stores/925/127/products/528c6e21-ed03-4359-868e-00f6268dda0c_nube-21ccfeaa1d536b162b16018312383074-1024-1024.jpg", width: 250,),
                        Text("Par de lentes - fina + solar ")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 199,90", style: TextStyle(fontWeight: FontWeight.bold)),
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
                        Text("2x sem juros", style: TextStyle(fontWeight: FontWeight.bold))

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
                        Image.network("https://acdn-us.mitiendanube.com/stores/925/127/products/a4f89835-1dce-47fd-9a5d-c815d007bfda_nube-b7e655ab33002f3f7616018314083548-480-0.webp", width: 250,),
                        Text("Par de lentes - Solar- Marrom")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 299,60", style: TextStyle(fontWeight: FontWeight.bold)),
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
                        Image.network("https://acdn-us.mitiendanube.com/stores/925/127/products/hd0a267ad7a71463ea9b0d38548d4c5eeq21-5af749c14ec2351aa516824526844931-1024-1024.png", width: 250,),
                        Text("Par de lentes - PREMIUN - com grau")
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Text("R\$ 399,90", style: TextStyle(fontWeight: FontWeight.bold)),
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
