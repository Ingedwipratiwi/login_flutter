import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAt1BMVEX///9B0P1A0P0JWp0fvP0OUZkszf36/v8AU5pa1f3b9v6IosSV4v4Auf153P5x2/4AVpscv/8fwv/m+P/w+/9J0v0PSZK26/6l5/71/f981P4PSpMATpdU1P3N8f+/7v6H3/6U2/5sz/5Xyf00puEkltXj7PMejc2btdFkj7rL8f6d5f6D1v5Jzf1v0P4/xv3N2+gZYqHm7fQmaKQ6c6uazOoAP45BeK2Rr81OgLKlvdZnkby5y94p6fsnAAAE00lEQVR4nO3dCVvaQBAG4BDDWQ8Ih1LBo9Vqta09bbX+/99VQtASyO5OJsSdGeb7ATz7PvMthCxHEGg0Go1Go9FoNBqNhkma+PheOiy70zYu0/bA99pB2W3UcAnDvu+1g6JAI3AoHSh+ggqkkRLAju+1g4IG1qQDtaJEohU1+hrCgeInKB4o/klG9yCRlKjoie+1g1KiouKBWlESUaARKH8PSgeGN77XDkqJCYoHakVJRCuqQOIpATz1vXZQFKhA4lGgAomnBPDQ99pBUaACiUeBCiQeBZqBR77XDgr++Ew6UPwExQPFV1Q8UHxFxQPFV7TWuPW9dlBKVFQ4UPwEtwC463vtoOgEt3iCCiQRBW4x8Mz32kFRoBmoFSURBSqQeBSoQOIpAdz3vXZQFKhA4lGgAolHgWbgge+1g6JAM3CfxS+rlZmgeKD1gccddDb6i3TVAacNbDZajcoqOmiHyGz22as64JQ/0PrAgyEauNEriOomKAA4tj1wHw+kUtG2dYL9Go0JdhphNcAO1rdhYBCcIomNtrWidIBBcIgihpUBK7iKxxAdFT0hNEEc0VHRkwYtYEIsBnRUtMQEK3ujeVRoig7gDUFgMWJo34M35Cqa5hZcVMcET4kC4cRwan1jWgJY+c0e2OVbOLVO8JDsBKFE1kAI0VHREsBXuh955iCGQ+ZAFzEcWit6RLyiaWxER0V5AINg30h0AM9j7Fv61z4TODAQHXvwfC9CEl//0CN/ig7gp70oimLMfQsP53LNvCk6/lHjPAFGUa/4FP0cPK4TYUAE0de5XLuxCnRXdEEsVlRvR8crRYUDZylC9Hg2Pm6H4IpmgUWIXo+Om9MXouMPJ1aBUfSZA3BpimForejbNSCU6P3jG4OU6KhoHhBG9A6cn/05K5oPhBBJfHxjfjiGArqJBCaYZEa0Ar8YgS4iEWAQ9K2/BW8DRtGd5fKGDNAeO9BGJLEH3XnnAEZ7d4bXfiYTdAKNRDlAA1FKRRdZJzIBvgcC14mSKrpI9uaNQGCWKK6iq0QmEywK/H/zhgewWRz4TOQBREzwmchkD96hgLMw+ULGGDfB+RR5THAQY4W9i52vvlcPyhhJnAG7XSZE1EacAWeZ8CAOEFsxBe7siJ1i76K7EDLZi82CxOcJJkQmUyx2WbMEnBFbH3yvHpQixAyQT1HhlzYrwBnxG48pQi9P14DJXuRBhBU1XgcmReVBhEwxvuzmCAUVNb48rvMmOm7XxJejet1A5FJUKzEFmogCpphUNE0rn/jd9+JhMR4/9RYT5E80HALHS0BjUZkQc6eYBZqIP/gS46vjejb5ReVCXCtq72pUhwj5FHXlQ1HxKrCVW9J0ihv91YTqkpniyh4085K0fvKbYmaCdt6cyGWKL8QlYNfJS4nWLzjQyeJDwi9AGC8tKpMpzokLoLucWSKLX7dJv42QAIvxeBGjq1FxHivir3sMb078zYT451g88XqCJnIp6vUWTHGEJj5wIeKLymaKJYi+1w4Mvqj1B99rB6bMXvS9dmAe0UVlM0U8kc8U8Xvxo++1A/OIf+lnQ6zrFI2ZsCHi9+Jf32sHBv+MymeK8olP6KJO2BQV/3TDhfiEftHgQ5y0kLlnQ3yDDpOPwGk0Go1Go9FoNBoNg/wD3zy1H66aaH0AAAAASUVORK5CYII=',
              width: 30,
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Form(
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "email",
                            hintText: "enter email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28)
                            ),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? "enter email" : null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: "password",
                            hintText: "enter password",
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28)
                            ),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? "enter password" : null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: MaterialButton(
                          onPressed: () {
                          },
                          child: Text('Log In'),
                          color: Colors.blue,
                          textColor: Colors.white,
                          minWidth: double.infinity,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Forgot Password?'),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.grey)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}