
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                if(context.locale == Locale("en","US")){
                  context.setLocale(const Locale("uz","UZ"));
                }else if(context.locale == Locale("uz","UZ")){
                  context.setLocale(const Locale("en","US"));
                }
              },
              icon: const Icon(Icons.translate)
          ),
         const  SizedBox(width: 10,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("localization",style: TextStyle(fontSize: 30),).tr(),
            const SizedBox(height: 20,),
            Text(context.tr("increment",),style: const TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
