import 'package:state_notifier/state_notifier.dart';
import 'package:flutter/connpass/api/app/model/connpass_api.dart';
import 'package:flutter_connpass_api_app/view/main_view_model_data.dart';


class MainViewModel extends StateNotifier<MainViewModelData> {
  MainViewModel(): super(MainViewModelData());

  void fetch(String keyword) {
    state = state.copyWith(viewModelState: MainViewModelState.loading);
    getBooks(keyword)
        .then((res) {
      state = state.copyWith(response: res, viewModelState: MainViewModelState.normal);
    }).catchError((_) {
      state = state.copyWith(response: null, viewModelState: MainViewModelState.error);
    });
  }
}