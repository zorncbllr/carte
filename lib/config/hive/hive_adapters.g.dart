// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class HiveUserAdapter extends TypeAdapter<HiveUser> {
  @override
  final int typeId = 0;

  @override
  HiveUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUser(
      name: fields[1] as String,
      email: fields[2] as String,
      password: fields[3] as String,
      cardNumber: fields[4] as String,
    )..userId = fields[0] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, HiveUser obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.cardNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveProductAdapter extends TypeAdapter<HiveProduct> {
  @override
  final int typeId = 1;

  @override
  HiveProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveProduct(
      imagePath: fields[2] as String,
      price: (fields[8] as num).toInt(),
      productName: fields[1] as String,
      ratings: (fields[9] as num).toDouble(),
      sales: (fields[7] as num).toInt(),
      subImagesPath: (fields[5] as List).cast<String>(),
      category: (fields[6] as List).cast<String>(),
      description: fields[3] as String,
      comments: (fields[4] as List).cast<Comment>(),
    )..productId = fields[0] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, HiveProduct obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productName)
      ..writeByte(2)
      ..write(obj.imagePath)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.comments)
      ..writeByte(5)
      ..write(obj.subImagesPath)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.sales)
      ..writeByte(8)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.ratings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOrderAdapter extends TypeAdapter<HiveOrder> {
  @override
  final int typeId = 2;

  @override
  HiveOrder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOrder(
      quantity: (fields[1] as num).toInt(),
      product: fields[2] as Product,
    )..orderId = fields[0] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, HiveOrder obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.orderId)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.product);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveCommentAdapter extends TypeAdapter<HiveComment> {
  @override
  final int typeId = 3;

  @override
  HiveComment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveComment(
      name: fields[0] as String,
      comment: fields[1] as String,
      profileImagePath: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveComment obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.comment)
      ..writeByte(2)
      ..write(obj.profileImagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCommentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UuidV4Adapter extends TypeAdapter<UuidV4> {
  @override
  final int typeId = 4;

  @override
  UuidV4 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UuidV4(
      goptions: fields[0] as GlobalOptions?,
    );
  }

  @override
  void write(BinaryWriter writer, UuidV4 obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.goptions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UuidV4Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
