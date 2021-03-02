import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_connpass_api_app/model/connpass_response.dart';

part 'main_view_model_data.freezed.dart';

 enum MainViewModelState { normal, loading, error }

 @freezed
 abstract class MainViewModelData with _$MainViewModelData {
   const factory MainViewModelData({
     ConnpassResponse response,
     MainViewModelState viewModelState
   }) = _MainViewModelData;
 }