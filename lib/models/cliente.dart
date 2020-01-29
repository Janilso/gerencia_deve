import 'dart:io';

class Cliente {
  int id;
  String nome;
  File imagem;
  double totalDivida;
  String whatsapp;
  DateTime createdAt;
  DateTime updatedAt;

  Cliente({
    this.id,
    this.nome,
    this.imagem,
    this.totalDivida,
    this.whatsapp,
    this.createdAt,
    this.updatedAt,
  });

  factory Cliente.fromJson(Map<String, dynamic> json) => Cliente(
        id: json["id"] == null ? null : json["id"],
        nome: json["nome"] == null ? null : json["nome"],
        imagem: json["imagem"] == null ? null : json["imagem"],
        totalDivida: json["total_divida"] == null
            ? null
            : json["total_divida"].toDouble(),
        whatsapp: json["whatsapp"] == null ? null : json["whatsapp"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nome": nome == null ? null : nome,
        "imagem": imagem == null ? null : imagem,
        "total_divida": totalDivida == null ? null : totalDivida,
        "whatsapp": whatsapp == null ? null : whatsapp,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}
