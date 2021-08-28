import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel{
  const UserModel._();
  const factory UserModel({String? id, String? displayName, String? email, String? imgUrl,@JsonKey(name: 'number_of_items') String? numOfItems}) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  static const empty = UserModel(id: '');

  bool get isEmpty => this == UserModel.empty;

  bool get isNotEmpty => this != UserModel.empty;

  // @override
  // List<Object?> get props => [id, name, imgUrl, numOfItems];
}
