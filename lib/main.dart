import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 1"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Czerwony"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.red),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Niebieski"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(Colors.cyan),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Żółty"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFour(Colors.yellow),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  final Color value;
  PageTwo(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 2"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Idź do 3"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFive(3),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageOne(),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  final Color value;
  PageThree(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 2"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Idź do 3"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSix(3),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageOne(),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  final Color value;
  PageFour(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 2"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Idź do 3"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSeven(3),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageOne(),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageFive extends StatelessWidget {
  final  int Color;
  PageFive(this.Color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 3"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.red),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageSix extends StatelessWidget {
  final  int Color;
  PageSix(this.Color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 3"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(Colors.cyan),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageSeven extends StatelessWidget {
  final  int Color;
  PageSeven(this.Color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 3"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFour(Colors.yellow),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}