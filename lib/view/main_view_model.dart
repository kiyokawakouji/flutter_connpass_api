import 'package:flutter_connpass_api_app/model/connpass_api.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_connpass_api_app/view/main_view_model_data.dart';


class MainViewModel extends StateNotifier<MainViewModelData> {
  MainViewModel(): super(const MainViewModelData());

  void fetch(String keyword) {
    state = state.copyWith(viewModelState: MainViewModelState.loading);
    get(keyword)
        .then((res) {
      state = state.copyWith(response: res, viewModelState: MainViewModelState.normal);
    }).catchError((_) {
      state = state.copyWith(response: null, viewModelState: MainViewModelState.error);
    });
  }
}