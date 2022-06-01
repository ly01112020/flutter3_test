import 'dart:convert';

/// id : 430000200703305700
/// name : "军下白"
/// covert : "http://dummyimage.com/320x240"
/// author : "贺霞"
/// description : "anim in culpa"
/// learnNumber : 16

Course courseFromJson(String str) => Course.fromJson(json.decode(str));

String courseToJson(Course data) => json.encode(data.toJson());

class Course {
  Course({
    int? id,
    String? name,
    String? covert,
    String? author,
    String? description,
    int? learnNumber,
  }) {
    _id = id;
    _name = name;
    _covert = covert;
    _author = author;
    _description = description;
    _learnNumber = learnNumber;
  }

  Course.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _covert = json['covert'];
    _author = json['author'];
    _description = json['description'];
    _learnNumber = json['learnNumber'];
  }

  int? _id;
  String? _name;
  String? _covert;
  String? _author;
  String? _description;
  int? _learnNumber;

  Course copyWith({
    int? id,
    String? name,
    String? covert,
    String? author,
    String? description,
    int? learnNumber,
  }) =>
      Course(
        id: id ?? _id,
        name: name ?? _name,
        covert: covert ?? _covert,
        author: author ?? _author,
        description: description ?? _description,
        learnNumber: learnNumber ?? _learnNumber,
      );

  int? get id => _id;

  String? get name => _name;

  String? get covert => _covert;

  String? get author => _author;

  String? get description => _description;

  int? get learnNumber => _learnNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['covert'] = _covert;
    map['author'] = _author;
    map['description'] = _description;
    map['learnNumber'] = _learnNumber;
    return map;
  }
}
