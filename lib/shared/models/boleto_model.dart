import 'dart:convert';

class Boletomodel {
  final String? name;
  final String? dueDate;
  final double? value;
  final String? barcode;

  Boletomodel({
    this.name,
    this.dueDate,
    this.value,
    this.barcode,
  });

  Boletomodel copyWith({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    return Boletomodel(
      name: name ?? this.name,
      dueDate: dueDate ?? this.dueDate,
      value: value ?? this.value,
      barcode: barcode ?? this.barcode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'dueDate': dueDate,
      'value': value,
      'barcode': barcode,
    };
  }

  factory Boletomodel.fromMap(Map<String, dynamic> map) {
    return Boletomodel(
      name: map['name'],
      dueDate: map['dueDate'],
      value: map['value'],
      barcode: map['barcode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Boletomodel.fromJson(String source) =>
      Boletomodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Boletomodel(name: $name, dueDate: $dueDate, value: $value, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Boletomodel &&
        other.name == name &&
        other.dueDate == dueDate &&
        other.value == value &&
        other.barcode == barcode;
  }

  @override
  int get hashCode {
    return name.hashCode ^ dueDate.hashCode ^ value.hashCode ^ barcode.hashCode;
  }
}
