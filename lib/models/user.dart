class User {
  late String _name,_url,_message;
 late  bool _read,_active;

  String get name => _name;

  User.state(this._name, this._url);


  User.message(this._name, this._url, this._message, this._read,this._active);

  get active => _active;

  set active(value) {
    _active = value;
  }

  get message => _message;

  set message(value) {
    _message = value;
  }

  set name(String value) {
    _name = value;
  }

  get url => _url;

  set url(value) {
    _url = value;
  }

  bool get read => _read;

  set read(bool value) {
    _read = value;
  }
}