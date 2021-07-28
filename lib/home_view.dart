import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final double screenHeight = screen.size.height;
    final double screenWidth = screen.size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              width: screenWidth,
              child: Image.asset("images/tavuk_dunyasi.jpg")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(screenWidth / 50),
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: ElevatedButton.icon(
                      icon:
                          Icon(Icons.favorite, color: Colors.pink, size: 24.0),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {
                        print("Beğenildi");
                      },
                      label: Text('Beğen',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(screenWidth / 50),
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.create, color: Colors.grey, size: 24.0),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {
                        print("Yorum Yapıldı");
                      },
                      label: Text(
                        'Yorum Yap',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding:EdgeInsets.all(screenHeight/100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Köri Soslu Tavuk",style:TextStyle(color: Colors.deepOrange,fontSize: screenWidth/20,fontWeight:FontWeight.bold)),
              Row(
               children: [
                   Expanded(flex:8,child: Article("Tavada pişirmeye uygun",screenWidth/25)),
                   Expanded(flex:2,child: Text("28 Ağustos",style: TextStyle(fontWeight:FontWeight.bold),))
               ],

              ),
              Text("1.Köri soslu tavuk yapımına öncelikle göğüs etini hazırlamakla başlayalım. Etimizi tercihen jülyen parmak gibi doğrayalım."),
              Text("2.Bir kaba alıp, üzerine zeytinyağı gezdirelim."),
              Text("3.Kekik, karabiber ve kırmızı biberi ekleyip karıştıralım."),
              Text("4.Üzerini streç folyo ile kapatıp, birkaç saat dinlendirelim. Eğer vaktiniz yoksa dinlendirmeden de devam edebilirsiniz. İtiraf edeyim, ben de her zaman önceden hazırlayamıyorum, sıkıntı yapmayın."),
              Text("5.Genişçe bir tavayı kızdırın. Gerekirse az sıvı yağ ilave edin veya marine ederken eklediğiniz yağ zaten yeterli olacaktır."),
              Text("6.Tavuk etlerini tavaya alın. Suyunu salmasına fırsat vermeden, tavukları pişirin. Burada önemli olan, etler üst üste dolu dolu olmasın. Eğer her bir parça ayrı ayrı yağa temas etmezse, etiniz sulanacaktır. Bu durumda kuru ve lezzetsiz bir tavuk olur. Çoklukla göğüs etinin lezzetsiz bulunmasının nedeni de budur zaten ama siz bu şekilde pişirirseniz, lokum gibi olacağına emin olabilirsiniz"),
              Text("7.Tavukları çevirerek pişirin, 2-3 dk sonra arpacık soğanları da ilave edin."),
              Text("8.Tavukların her tarafı altın rengi olunca, sıvı kremayı, köri ve tuzu ekleyin. Karıştırın, 1-2 dk pişirin."),
              Text("9.Son aşamada, ben biraz kıvam da vermesi için evde varsa 1 yemek kaşığı parmesan peyniri ekliyorum. Bir iki kere çevirip, hemen sıcağıyla servis edelim. Afiyetler olsun"),



            ],),
          )
        ],
      ),
    ));
  }
}

class Article extends StatelessWidget {
  String text;
  double fontSize;
  Article(this.text, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize));
  }
}
