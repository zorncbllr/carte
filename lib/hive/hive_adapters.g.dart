// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      name: fields[0] as String,
      email: fields[1] as String,
      password: fields[2] as String,
      orders: (fields[3] as List).cast<Order>(),
      cardNumber: fields[4] as String,
      address: fields[5] as String,
    )..userId = fields[6] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.orders)
      ..writeByte(4)
      ..write(obj.cardNumber)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 1;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      imagePath: fields[5] as String,
      price: (fields[3] as num).toInt(),
      productName: fields[4] as String,
      ratings: (fields[7] as num).toDouble(),
      sales: (fields[2] as num).toInt(),
      subImagesPath: (fields[0] as List).cast<String>(),
      category: (fields[1] as List).cast<String>(),
      description: fields[6] as String,
      comments: (fields[8] as List).cast<Comment>(),
    )..productId = fields[9] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.subImagesPath)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.sales)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.productName)
      ..writeByte(5)
      ..write(obj.imagePath)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.ratings)
      ..writeByte(8)
      ..write(obj.comments)
      ..writeByte(9)
      ..write(obj.productId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OrderAdapter extends TypeAdapter<Order> {
  @override
  final int typeId = 2;

  @override
  Order read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Order(
      product: fields[0] as Product,
      quantity: (fields[1] as num).toInt(),
    )..orderId = fields[2] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, Order obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.product)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.orderId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CommentAdapter extends TypeAdapter<Comment> {
  @override
  final int typeId = 3;

  @override
  Comment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Comment(
      name: fields[1] as String,
      comment: fields[2] as String,
      profileImagePath: fields[3] as String,
    )..commentId = fields[0] as UuidV4;
  }

  @override
  void write(BinaryWriter writer, Comment obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.commentId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.comment)
      ..writeByte(3)
      ..write(obj.profileImagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentAdapter &&
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
