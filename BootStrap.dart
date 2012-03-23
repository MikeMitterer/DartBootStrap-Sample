#import('dart:html');

class BootStrap {
  num _counter;
  String _text;
  List<String> _colors;
  
  BootStrap(this._text) {
    _counter = 0;
    _colors = new List<String>();
    _colors = ["#ff0000","#00ff00","#0000ff"];
  }
  
  void run() {
    document.window.setInterval(() {
      _write();
    },1000);
  }
  
  void _write() {
    String color = _colors[_counter % _colors.length];
    
    document.query('#headline').innerHTML = _text + " -> " + _counter;
    document.query('#headline').style.color = color;
    for(Element element in document.queryAll('h2')) {
      element.style.color = color;  
    }

    for(Element element in document.queryAll('h1')) {
      element.style.paddingLeft = ((_counter % 10) * 3).toString() + "px";  
    }
    
    _counter++;
  }
}

void main() {
    new BootStrap("Dart").run();
}
