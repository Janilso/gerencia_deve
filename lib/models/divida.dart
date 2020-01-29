class Divida {
  int id;
  int clienteId;
  String descricao;
  String detalhes;
  int status;
  double total;
  double totalPago;
  DateTime data;
  DateTime createdAt;
  DateTime updatedAt;

  Divida({
    this.id,
    this.clienteId,
    this.descricao,
    this.detalhes,
    this.status,
    this.total,
    this.totalPago,
    this.data,
    this.createdAt,
    this.updatedAt,
  });

  factory Divida.fromJson(Map<String, dynamic> json) => Divida(
        id: json["id"] == null ? null : json["id"],
        clienteId: json["cliente_id"] == null ? null : json["cliente_id"],
        descricao: json["descricao"] == null ? null : json["descricao"],
        detalhes: json["detalhes"] == null ? null : json["detalhes"],
        status: json["status"] == null ? null : json["status"].toDouble(),
        total: json["total"] == null ? null : json["total"],
        totalPago: json["total_pago"] == null ? null : json["total_pago"],
        data: json["data"] == null ? null : DateTime.parse(json["data"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "cliente_id": clienteId == null ? null : clienteId,
        "descricao": descricao == null ? null : descricao,
        "detalhes": detalhes == null ? null : detalhes,
        "status": status == null ? null : status,
        "total": total == null ? null : total,
        "total_pago": totalPago == null ? null : totalPago,
        "data": data == null ? null : data.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}
