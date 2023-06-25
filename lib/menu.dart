import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/Akun.dart';
import 'package:uts/about.dart';
import 'package:uts/login.dart';
import 'package:uts/menuutama.dart';
import 'package:uts/riwayat.dart';
import 'package:uts/setting.dart';
import 'package:uts/transaksi.dart';

class menu extends StatefulWidget{
menu ({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
int currentindex =0;
final Screen = [
  
  menuutama(),
  Akun(),
];

@override

Widget build(BuildContext context){ 
  return Scaffold(
    appBar:
   AppBar(
    title: Text("Menu"),
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      currentIndex:currentindex,
      onTap: (index) => setState(() =>currentindex = index,), 
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Akun")
     ]
    ),
    
    drawer: Drawer(
      child: 
      ListView(
        children: [
           UserAccountsDrawerHeader(
            accountName: Text("tes123",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             accountEmail: Text("tes123@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             currentAccountPicture: CircleAvatar(
             child: ClipOval(
              child: Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXFRYYGBgYGBkdGBUXFRcXFxcYGh0aHSggGholHRUXITEiJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGy8mICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAAEBQIDBgAB/8QAQBAAAQICBQoEBQIEBwADAAAAAQACAxEEITFBUQUSYXGBkaGxwfAyUtHhExQiQvFichWCkrIGIzNTc6LSFkPC/8QAGwEAAwEBAQEBAAAAAAAAAAAAAwQFAgEABgf/xAA2EQABAwEEBwcEAgIDAQAAAAABAAIDEQQhMUEFElFhcZHwEyKBobHB0RQyUuFC8RUjM0OCU//aAAwDAQACEQMRAD8AyDoGzqqnwvxc5PY1Gka96Gj0Mi6oqoL1RsdsbJQE0PWH9capEYUvDV3YdCqiwp+Go+Xv7Smcaj/nH1Q74U9B5++tAmgD+KttBArS7Me42e/ovo7yxwcNq1tBjB4BEwcRbtF6zb2fyn/qUZk6MW+iUYSx2q5TtJaO7VvaMvI6pTan5gz+oVHzNsn+oWtPDRJRjQgaon0m0OHhOBn9p02aldQ6UHX18fXimDKPMVWYXbsdUk3QEL5iSMtuKz1JormmysGy5w0YFXwXh2vcQm7qEWiQE2+V1Y2G1vLWh30ATqm04HobDzXhciQWrszfeELFooIkWz4E7LDsQzsnmf0mZ/7DWDb3WU5hMc20T5oiGxjqiQNB9Fu4qtHKx4qCs1DbKpwly9lf8g11cto9FpIlAb52bSOpnxUWZGvbI/tPfNe7KuCYaK7+tyzgyWRWOI9J9ERCobr2NO7qtLDye8XHaEXCoT9H9CG9hGC4YwXUFVmWUNl7CO9BRdGyVDP2nh6rQihOvdLUJIyBk8Yk6ySuxwkYptsbGipSmj5KYJfQB+49B6pxRaEBZwEvfij6PQQLBJFBrWiso1QLkvJNHGKlVQYErlc4hom4gBAUrKwFTRPlvSDKGUZ+J09AsHqishe8pCS0ufh3Rtz8B7lNMoZZnMQ7L3XbT0CzOUMqht83Y/8AkXIekUh8Tw1DG4arlCj5NrmazinRFHCO+fAYniUBj2iur4k3n+92G0UwXRDFim8A79pRlCySMJngE4h0RrfFu7r5Iel5aYyplZ/T62DZMrDraaasQQJZHOuw9UTBoLW1v2NF+tCU7LTWjNZKryykNtiUxotIjGQaQMJHiLXbakZQf8GRYkjEMhgbNw9VMmtMTL5H1Ozr2Q2WdxuA690F/HP1j+perRf/AASFiNw9FyV/ylm6H6RvpJELSKFjZiLClz6KW2VjA98U5o8SVV2B7qRPyzX2W4GrcU85hBvUhsiy7qK11gAxEh1HFBUjJ8jhp9lqaRk04eu9Cmjke68HFVbNpW1QfY8kfi7vDzvH/khZONQiKiJ7DVvQogkaRxWuiUNpqlLXZsKEpGTHC6emzkF50bZLnBX7Lp6zvNJQWHm0+44EGm1JaO/EbRUQmkCO9tjjtm076xvmh30KWJ1q6jtcPYnmChiBzcL/AFTc1khtDdeIg8DUe/LFMmZVji1zXaIjKtjmSq1kIuHlNhH+ZBe39TCHNOmRlzKCo7238LUUyLC8kXWGt6OW6OzHXmoU+jT+HiLv15I6C6A6yK0aHTb/AHjkiv4ZMWBw0VjqlzDBNz/6B0mroMOFcSNTSOi7qpA2GVhq3WHFtfMURQySLgRvUhkht5/6+oV1HOESIf6vVHwv3RDt9yvFtBgta07ReObSg4OScByCMh5OAt5z6ItkMnGW3qvIkVrbxsPpUhiK9Gs7n7uQU6PQGiurkrvjMbZXpuQL6bMSaJ7EHFeTad3qmGwFHntdMXJhHylKys7h7pVTaabzXgFXEn+3TeVTmAWDaUQOhhvcUk0ySGsTTxPybuSFixHu0Diq20Qa9fdaIdHbjnHAV98FKHR40TwtzRq9akKbSWo3u90bT18orbNf/sdrHYMPHM+Sq+E1tbiFU+nXQ2z03JrByAJ/W4uOE+gTWjZNY2xgGv0tChT6WY3C/jcmexrcbhsH6WTh5Ijxz9RMsBZw9U2oX+GIbfEZnAd8ytCXCUru+7FS+mtFUwNo9zyUqbSsktwPgMF3UYxSouT2MFTWtGJ7qV8SO0X+iXxKReTLSZz3mtCxKWwVyLjps3lJEyyHr1KG6cDBM/nG4jj/AOVyT/xhvkZvauXuwk6IQfqN3mspRMrtNTxI49+ybwIwuMxh7LJPo8RvjYdYq5VKdHpJbY7Y5fogkJH5DrMJSXRhF7LvRbiFSuzYrpNdcFlqPlY/dXulvTSj5QYa84DX+F4sabxUJF0E8eIqmL6EDd3yKpNCliNnpUuhZQhmx09XvJFw6YMHcPWaxq0zB65rlZBi0pe6gg4b1ScjNP297Foobg77TwV8OjMOHepa1qYrzJXsNW1B3GnosuMiD8+6th5DF8twWqZk9pw4q0UBotI3hcM7U43StsAoHnyKy8PJXlDNtZ4SCLg5MOI2Ac5J7mwm2vbvCrdTIAvWDaNi39dbX7eQQ8HJ7QJus3nirJn7GbZT5VL2NlNkptFWmSBj5ZErRolXySrrWBWqGyO1WiTVHz6ImLAeR9RO8dEO9rG4cylkbKDnmoE4TEuq8bRnkzeTqHoAUB+kmsFyux6Hc1v+1xG4bNnzduRj6QPyVS6kE2Hd7L1tHGE9ZA4TKtayVw2A9ZKe/SZOLkb6WGO5jfE3+tyGDCTVM6u5qxmSp+Mf1GXur8+VU5bejV2eL+XUpGXSlPtx3fNyIbO9+KvgQITBVIn9ImBrJVvxx2Z8B1QQjDAbTPkrQ8myctAq5qTLa3ONXFd7EMFGhEfMmVTSBuCqiUkkSLwBg0T9FDNF8tp9AvfmYbbgdYqSxtDdlUu6N+2ipfFaapOcdM+i8zYn2tzRqkui5WFxA0D2QhykcDu913t5SLh7of0+VFc6hxDaRvA5FV/wkG2I0bz0VD8oOw5Kl+UMS7Z+F7tpjmvGz0yR38Jb/ucFyXfxIYnevV7Xn/IrnY7lJ2Y6x7eIPFDxaA13+2d3ReCG8/aN6s+RebJDU4qk1zmHuuI4FfVOjZ/IjxoUI7JgFglqPqvPkDgNwJ5oz5CIL5KxtFi+YJlukZ2f9iE+zWd2Iagm0UNEy2egF1fMBEwGuwLBdmms7xPkrm0SITWRwRLaK+2WixtibbpibalH6PshyHNXUKETa50gJkudOQGM6l7Hyu4VQmk/qdLg313IeNDfmltk7ah0Q/yJvaDrC5JpuSlBRBZoqyk6z+Vf6XsbKFKNsbN1Zg6oOI95tjT/AJgeU0wbQz5RwVrKIfKBuS50zNkeQTH0ljjwaOfySlEOG4/cdxTCh5NJrc52bqlPQEzg0Zot5Bex6S0VV6gsnSE7ryTwSsrxIezszADm6gNPKtVTFgtvBkNMh+EI+RNgA0mtexYmdbuXokLuSUktMg49b05Z7OIGBoV8OJm2EA6B1Uvii8OPe1DfGlhwVT6Vp4pJzpn3rzjG2pJ80cIzrmy1lUPjuN7QltIptwOtCOperin4tHSFutJicB78d3ys9pGwVOPM+qdmKB4olWiQVYpMPAnaegSN1M0gbFREph8/D3Rho4nr9IDraz8uvJaQ5Ql4WS2AcSQoOyi84DW5vusu+kHz8PdUvjHz8Fl2ixl7pN9vgGK1L6Wb3N3lUGkjFvf8qzRiu843eoXnxn4jh/6Qv8eR0UIaSgPQPutE+mHzNG/0VDox84/7FJDEdfzKiYzrnb++i59GQii2MdcCnDon6uB9VB0U480n+acLRtB9CpNpU794WTZyFvtKpt8weyuSv42rcfRcsdiFzWWkDALC4KYjEfdwUjPAFdLQr7rINi+mrXr9K1lOd5wrhTnG9p1SQphjBQ+XGCWdZWhDLIz/AEExFKdgNysZHfgOKXNgaUQPpvKEbOAhOYzJGh78AN6kA83jig20qX5XRaefNLasdhTJLuhkJo2nKqYthm9y4xGt08UnfT/1Kh+UDdPevBlMGnwWRo5z/vJO7AeScxY5NlQQtWk7Slb6Y83rz5t6M2yTvwjPJOsshaKNoE12c146HO4paKbEXjqbENrqsJp2HQz8XCi46yyG4Gnj+kVEl2R0KodCndzVbaTJS+e7kFRZY4Yr89vWHmljo0YkknaaeVy75XutRNFbhwVgpowCm2mjyHZNeIjP99eySm0a0418UKaI3y81UaCzy8SmzaU38lSNIabA3kuGEHaONynSaKJuB9Pk+iROyezA/wBXqoOyfDwO/wBk/MRl7SFAshOvlsQ3QbHFTpdCvGCzjqAzTvHoqnUVo+0naei05oDTYWnaQh4mTD5TskeSz2T8nKfLoqcZBZx7ALpbPVUEhP30HAyQ0WiOvAOxZpI3EJKSyztxBSVwCqMFqaRKPoQsSijGS8HkYtS5L24uI5oX4TVyu+S/UOK5e12/iF7tn/8A0PMrdfCOnf7KHwO5eiZPLLyO9SEixQamb/yjPkiGIHOq/UoJpH5HiaUQUWc5TsUDDOlHsouPuVP5Mn7TLAdZoTDXJOG0NYL0ra04qXw9Kami4T3fleChaJotWrH1seZolRhfqXny+kJv8qPKRvXCit08OoRWyRj+K39WOqJN8tr3LvlXaU/bQG9gdF6KBDxI1VI4tDRl5Ln1lP6SAUJy9FCfoT12Tm3PI3Kl+Tn/AGxFv6kbPJDdbXbvP4Sg0F+BUflneV25MYlCjC4HUfdUkRR9ru9i8ZWnopd1qkOXL+0E6CfIdxVREvtO5NGvieV6sZ8bA7ZBCJ2JZ80uXukZiy/El61znWLRNDvvcNQr9l0SkiyUtg6oDi859c0IT2lt93NZ8ki+fdq6HnO8LXHV3JOX0nTsCoixnHxT1fgpZxpiuHSUzTRzRzBQIzhadhrXF+kg7x7KFIdK+Wz1KEiP0nUAAhF9MCmIrdG80I9kWaQQpwsouGngfRKjSZXd7lB0UWgy0XLwmOaeayF+I9FomZXBqdx95q0UlhuGyY5GSywpP4VkON5TLROophkxQpdHNd9pWnLYRtadsuFVaEj5KhOsmNqUsppFs9lnoiodN7Fu70R2yNdiFJtFiaLpGhT/AIEPNwXL35wYn+kei5a1Y9iT/wAbZ/wCLZF0cVeyIMZLjkweYbz6dV46igWOmpjHWd32nyK+kfa2EXA+XuUXBcBhvRIiHSBw3hLBmi3O2S6yVjIsIf8A2ub/AC9hOtaymfgCfSqkz2xwNQOZHuU1hxcCFeyI81CR1SKXMpsEWvDtZA91cMsQLGmR0Ce838V09rSkbSeIoPYqe61yA1cR4X/pGPpObUQNo9lAU1vlGwDohvmM7wkO0C3cayhooBtZLV9J3eyyNZv3jrhih/Xg4DryTB8dpvI2Kkk3OB1W85pc6EPte5v7hMbxJegxRYWu1O6OkVoPZk7mu/UvOB80U+mSt4rm0ud24oY04ip4I/cJbiovhtfWHEHf7ondz8lz66cfyPJGCmBWCmjFIKQIsP8AUMQqGZU0yK0YrqjDmujSsoxAPkVqPjg3A6j6Kt0Njvuc3aCkTaWDbLWKirvjm0FxHEdRsWAyuBRRpdv8wR5/vyR0agv+wh+gGR3GXNLY5iM8UN41h0vQoiHS52EHQfW1Xsyk5tRmNBsO2wrvebiEZtsjluY4HddXzSsUl3+2djSOS8zSbCR+72r4Jo6kQnWw2z1ZpO1sp7yhYzIZ8LADrdM7CV3uuGCw9ww69EJFaR7WIZ7sQNwRLnAVVjbL3VUQg6UnNZ8wk5GbOuByS2M3RUgY5lVPUmkVB0iEHWJAuLDRy3ZtIvhdQ4JeY2NR73r0Ug60PHmLUPn4e6K0r6yy2tkzdYHr3TiFSlaZGtpkeGw3JNCjImFGnZu7vRmvTbiHCjrwj8+Ni7eFyF+Pr72LkXX3oH0kH4rel7biRx5qtzXXGe2vikEGmT8Lp8/RFQ6cdR0qhJZIXXkeIUZohmbVvkjXxiPE3e3qFAxAb9xK5mULjIhSJhuukdFqH9IWXtKBLZXgd03b1U5mDjzXmafMOP4VhovleNTvVQdRog+07KxwrTMYkAvFRwqpk9lfjqkbxeOV9PEL0RYrdOkGY4IuBllwqeARpr3G0IFsN17SNMql6bLdxq24Jpoa4d5o9PZTJIZRffTrxT2E6DEvzTprCqpGTnCtp2ixIC0trai6FlhzDadSw+w6w7nJJmQtwKJNIiMxI0enootp88Ds53ppAp8GKPrEjiKih6dkMPrYZ6bD77VKkspYcE5DbspOaog0ydne72VdLocKKLM12I6hL6TAiQz9QmMb+966HTLK5jE2jaghz4zVhoeufjcnHRte2uIQVNoUWDWfDc4Vt24bVCFTSLOHdSeQ6bK01HGzUR2EJTcjMf8AVCIhu8p8BOjy8tSZbaYpLphqn8hh4jrwSzoXt+y8bD84qlkdsSw5rsbjrCmKW5hzXjdYdISaLDfDdJ7Sx4uN4x0jSEdApYe3MfsItadB7miuZJEKm9v5D32emwoTdR9wx2HrrYmHxJj6c1w8pt2Y89agyM0iQJ1EzHGZBSyK50N2a6+trhY4d2i5X5wiW/S/zXO1461zW2ozA77akbq+l9OV25FRIgFX1NO8bJ271WY365ob5hzZtcJyuPMeoUXOaa2kjQTPd7zRaB1xRmPe0Xmo66vVkYzsQbnLx8QjSunOsJC02aty09gkbUYqEeAHjSkFLhGGdHJPs7vBRpUERBp5qSCYzQ4LNitjrPJuzSERJ6+asZEQceGWOkbLvRSY9NL7eC0NkaCMCj/ju7muQfxdK5bqjVbtTWLDc06cVdR8pEVPrGN3sUbSmGzNLhcRIt2y5lJ6TCLT3UqEuvEb8Nq+PiY774DfmOsU+hRGmw7D6qee4WVjC8LNQaQWprRadna1pk4N6ds9tDzTA7E0g5RnfsKLh0/ZrsSaPDD6x9L8bjoPqh2UlzTmuqcO9oTDH1vbj5/vwR3EG/DeMR8hakUqejlvUHtBsFegy3WJJDpMtBwu2I2DTBY4evoVszkfdzy8UjOwH7/AjD9K+JDNodsQ75O0FEBwtzquKpiwgbLeKZilzCh2uyXV86+tFS2I5pv7wxCa0DLTm2n0PolDYn2u70rnt2cim+5MKFRSXRmjufytrByhDiiTwNsuBQNO/wAOh31QnAHym9ZmFSS09E4oOWSL1OnsN1ReE1DK+M1YaeiXUhkSAZRGkA1V2atIU4dJLa7WbyyfNq1ELKDXjNIBB+1wBB31Kl+S6OTUwsP6DVI/pIIkpclny5g9Y70+y3D+bacPjYlJpIcM17Q9toBr2tNoOqtLqZk+GPqhzAN05haCFkqDCBAL3gmYziDmapDmh48G4DTUDX0BWYRJAe674PEYV/vC8dfNHJl160WfL5tMOIJi4i1pucEGx7mnMdKdxucPfgndIhCWq6dY13bkDSIAIII0g3g4j0TrTG7Kh3fGCzrOwrw/vFRZHa5snVi4/c097EPGEjjpFU9OtDElhmb6jruO3u1WmJV33Jd1dU3IzX6155qLnzHdSqgRpHu1VxnSKHivrBRHt12VzCZYaGibvExnDaNCra5V0aN79VMiRltCi2uIEawS1qip3whsr0IRGTFo7ms6wmw2hayE+5IsvULMdnt8LudaThfTuHwT+iLaWP7FxuOHwhPiLkPnr1ML6jtVvafBBGc76m+dtTh+8Wbb8RYk1KhZtj84aWyI2TPNOg8S+JB8Mvrh25g+4tH3Mtm21td1gUejsiCbDmO8trTqN3LCSutc17dU4L4izWh0ZBBuSVzZ+noqxMWVG5RpTSx1klY14MjxUm0wOs7tYXtKvugjtzdZl0nKvwd6OoeUJ/S6p12B0I52a8ZrrRYb2nu69Z6kQ7xaLdIVlHppEp13aZYaV2OfMH9JCO1PidqTXUz+f0mL2uYc02XOFh7wVsOlytsw6r2DSGvbIycD3scFRHg5tbSSLp2t0GVyoMl19x8jw37sDgnA+oq3PLI8PcYHim0CPhuREyKxZy0FZ6DGlYmtGpF9y62gwuQnMY67D080c9oeMChQ4g5rt6szparvRSiMDxpFhTjH62GKg2uy6poqHi47Ch3kt7tXrYsjmO70hWONxrFxTccutx9VHIMZpkrKNlAjVyTqiZTmJTnr6FY+POG7QbCiYFIrq9isy2dsguF+xNxyD+V42/PXNbFtKa6qesO9bQq3G1rgSMQSasbTJImUvH3COh0gkVGZFlx1YFR5ITl+wUyG6vWPopPjsYZEW2G0y0TQ0Zjr7OOuSublMmok6jUR7qiNFM7yNFfVBa799ZFFAOzr4S2lwse+7UCx5FV44hMKQ7QemsJTHiSM0428LrSupERDtdMEd1KFIeugur2piJMtNyKoUS7uYsTCIZtBwSaC6TiO6k3o7p1XHqp0seLSmKBzaLi6oHYehU4sIRGFhvs0FDwjWWnUpw3y2VHooMjCCozg5huxBSX+BxsOC5aX5krxc+ok3J7/ADNr2jkt5lNrYv1y+sfcPFVqrmFl6fksGZZIOvAlmk4iRqneLLxI2uYNJmcSax+sWTGDhYdxqkq6QAbxXYSKv2ztaf0nkt2K0uio3JPWqCprmsNT4ecCCJEY2z738EiMQsMjitvlqiT+qX1cDoPfVYzKsOZmLuC+jY9szKHAodkldG6iLgxbPKeCGpMOTqtY0jupD0WPIEaRzkjojc5srxWNV/ehRZ4XQSap8OHWKt2iBtuj1mjvjz6yPhsQzXyruPAouBGIqn+MdSEhyNRvUmEzzfuFmn8osb64L5wNLHI1z0TQ6RvwxS1sQY1abtBUg+RBCoMk1xQ81QZMHijua09HeCJXGxTY4iq8JZQ46Yxa2h4tFurvoitcWlekj1wa5KdOo/xG5zfEOKX0aPMSP4KYQothFh4ILK0DNPxW2HxaDim9ao1goFps9DRTcAQWus7rCXRmGGQDZccUZDfnCq27ToXpAe3NdZcbwU1G/tBvSDD2Zvw6vChCiZwkdhwwV0KkESnqnyS0gsdmuw36RsV5iceYQ3tbJjcdvsfY4p0EsFRePbaE3dHmJ1T089BVbowN0kHCiYVz72181GK/DcUg4OY7VeOGfI5+u5HaWuFWlTpETuvklFLKIjxRZWO75oKJrRABReVEd9ilDNappNynDPe5EbimIr2oiK6TmnHvomVHdZoSuknw60bR3WbPRKWj/kKaiwRFKMnzxE+9q8e6sG4hRp1jHaZLyIZsngZ7FGtTe+VPtTKS8VbnPxXIb4mlck6IPZO2LRZMp0/oebLDgbnDqE3hxi6bSBni1t0QWgj9UrDfrCxVEjzkRaPDpxan9DpWeBIycPCebTt3TGlBI1T1d1mvr7VZqG7DLhs4jLjvR0Zgc0lpmLCDaNt/C5YjLsHNcdK3DIgiTcPpfYR5iKq8Hd6VnP8AE9FzmkgVttGhVrDaNV+qVJfHfULGykDs5pjQ485YjoffglzzUR3UvaPFlI91itVp4BMzVzxHXkmbPOY3VTKM2ZqttGrBVxBMTvFWy5SzpgHuu1esdfv9VAbVh3p232VszO3Zjnv3/PPaoh9+9RcRiusPdaqdVUnY5AVEoQUzoMdaGgRLjZYdRWNo0WRWmoj/AAnES3V9U6HJxj63q9pzXOYe8CjITgQWusNRQmUx4In8p6LxkSw7D0KYhfQ0Slqiq2uz0QBaYTyw3Vg4i5ERT9w/m0HFFZSgZ7M4eNnFt46oCiRARI2EVomsWOuUaWK9XOhiIJG0WHCfQoCsVGojgUQwlpLbxZpFyujwxEEx4gKtI8pTbv8AYNYY+qFE/s+677T5b+B/aCZEtGB3g9hTfEnah86TpG2z1BVbol1/NYZKT49c/VEfGrIj5jGXBDOGC9zp91hRJWXsBwW2uIxQdJd9UsFbCNmpCmtxKKh27ENmZVFgo0K2lGpv7vRF0d1XeKCpRqbrRME1HV1Stp/5DwCPFgj6XXCOgg8VVR6xLESVsSuG/wDb0BQlDfZ33YplrF4StuGCGznYLk5+E1epKqS+o3JNBfJ0v5m7buYTejR7wdeg3O6HWkMU33tNeo+6Oo0auev3Cw9tV+gkNkaWO8N2/wAMOC1MF+eJip4t0yquvHEbF5TnCIzBw7ly4YhLKPSJVzwBnuB5A7EZSXzGcLbxjLr7hBZVrh14KVNFQmuOfysHTG5ryNO5VEpt/iGi+GKL7dINhSR7qgvqoJNePWGXRU77XUR9Hi3btd6uY+3vYlbXo6C6fVJ6Qs//AGjgeO3x9eKrWC0EHU5ImM2dYVLwptfjZyKqiAiqanNcUvb7J2Z7SMd0+R2cNnLFQnXK9P6HE+huhxWfY2tNoLvoZjnHgE/FJVIsJqtLFbnwntvlnDWPqS+hRM4SxH4TDJ7qxpHOYSWjnNe5vlc4bimq0KYeK0Tahx7O6++SApsD4b6vA6tujRsPRXZ0nn9QBGv8hFRYfxYebfa3Q7DbZuTR77d6jSs1SQlsc5zM8Wtt1T6FdDi3481GjPkSDfaNdThzVEs0lhusOi1p5LUL0hIy7gi6TBbErscL8bpFK6TDIOnmjGReFR9e9C8jVpkgG9Cjc5t2SXNdnX7cdajGfISKtiw5V70MYk1kmiZaK3jBVhtashmsqFkypQUPNUWfaraT9m1EQj9J2dENHP1AaBxJV7T9OsjnPokrQf8Aa7rJMxi5M4fgf+w/2pbQ3VDZyKYQPC79p/tSujGobEhasvFBtYFAmfxF6qM5ckaKbqOQNJcCTg4c5KEB920a+wUBRqVMCtXsf9U9HUldLKXL7eOQFoKdUeNZgapaMOYR9GiXEzlLaLj0P5SKG+VW0eneCYw41WMuINoQXBetDdYa2YU8sNBBFx4H3WPiCpww6LV02JnNkL7NIx9VmaQ6bjuOypV9Gk6uqeslGnF6HYVfAfIoOEZK9qpCjm0OBXGOINQmYeuzkPAiXTV7QewoU0PZup1RXoZRIy/PFShMmenVXGL/AJjW3NEjrNq8c/ME/uuHUoeiNrnv1nvgusNFFnh7J9BgtjQ3VjV/+kuyh9NJiaSD/UAiqG6sDAN419UJlw/540w2HmOioZLZwV0R30tdgZHU73HFEwosjx9eKDbWx40E7vqC6FEqBwPB1XOSZjNynWlveqispUecorf5xrvG6vel2UBU1+BzDquO+e8JqyJURh3y6oOJCBzm3OEtRu3EAohABqpsozQIiWO2Hoem5T0btIwKHo7rjqI1d8FLOtZOy/T6FMByXLaGijHM/RAPCPc6dRqIQkTSuG9HhFDRVRLhtVkMV8OqohunX3UioFyy28p9ooFCKfrOiQ2yHVFGxo0k7hLqhBW7WSdk0U2t4GAG81nopznazid6caKBMYR+l37X/wBvslEDw7uaaMd/lvP6Hng5KYPh2joUrasvFBtGSZL1eTXJFSrlj6DamQt2FcuTEmK+psv2eKPFo1o2Bdt5lcuSjuvNUZMD4+i9g2N/m5LOUnxnX6Lxcqtg/wCQ9fyKiTfaOsghTadZ5qxcuT7ff2chtwV7LkzbauXJK2Yt4KrZMDx9nKmmeN2tvJTolo1+q5ckI/uWbbg3ratHQfE7+XkxD5d/1m/8Tf7nrlyoj7Ur/FToNrtvJU0PwHUOa5cmIkja8vH2R7ejeariXd3tXLkUqbJ9qUxf9V//ACu6qMTxfys6r1ci5BK/y63LylWjV0Q1I8J1jmuXLTs0xBiEO2w7OaKo9u7ovVyzFiFQyVcG3Y1Fs/1Ha+i5cprck2iYX+k//jd/aUrh2fzDkuXJa05cEracQmK5cuSSnL//2Q=='),
            ),
             ),
             decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/faa48d2d-12c2-43d1-bf23-b5e99857825b/ddanutv-39cde392-7484-42ec-8b83-f00e58094746.png/v1/fill/w_622,h_350,q_70,strp/dance_of_lights_by_ellysiumn_ddanutv-350t.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2ZhYTQ4ZDJkLTEyYzItNDNkMS1iZjIzLWI1ZTk5ODU3ODI1YlwvZGRhbnV0di0zOWNkZTM5Mi03NDg0LTQyZWMtOGI4My1mMDBlNTgwOTQ3NDYucG5nIiwiaGVpZ2h0IjoiPD00NTAiLCJ3aWR0aCI6Ijw9ODAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLndhdGVybWFyayJdLCJ3bWsiOnsicGF0aCI6Ilwvd21cL2ZhYTQ4ZDJkLTEyYzItNDNkMS1iZjIzLWI1ZTk5ODU3ODI1YlwvZWxseXNpdW1uLTQucG5nIiwib3BhY2l0eSI6OTUsInByb3BvcnRpb25zIjowLjQ1LCJncmF2aXR5IjoiY2VudGVyIn19.3USm-rYv-0y6spWqrtA0V2B4-tpDl1qMHX25VTjDd94'
                  ),
                ),
                ),
             ),
             ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => transaksi())
                );
              },
              leading: Icon(Icons.payment),
              title: Text("Transaksi"),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => riwayat())
                );
              },
              leading: Icon(Icons.history),
              title: Text("Riwayat"),
            ),
             ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => pengaturan())
                );
              },
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => tentang())
                );
              },
              leading: Icon(Icons.android_outlined),
              title: Text("About"),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loginpage())
                );
              },
              leading: Icon(Icons.logout_rounded),
              title: Text("Log Out"),
            ),
        ],
      ),
    ),
  body: Screen[currentindex],
  );
}
}