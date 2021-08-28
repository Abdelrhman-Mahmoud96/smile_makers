// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    id: json['id'] as String?,
    displayName: json['displayName'] as String?,
    email: json['email'] as String?,
    imgUrl: json['imgUrl'] as String?,
    numOfItems: json['number_of_items'] as String?,
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'email': instance.email,
      'imgUrl': instance.imgUrl,
      'number_of_items': instance.numOfItems,
    };
