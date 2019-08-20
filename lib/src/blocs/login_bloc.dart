import 'package:bloc/bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailed extends LoginState {
  final String error;

  LoginFailed({this.error});
}

class LoginEvent {
  final String username;
  final String password;

  LoginEvent({this.username, this.password});
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event.username.isEmpty) {
      yield LoginFailed(error: 'Username is empty');
    } else if (event.password.isEmpty) {
      yield LoginFailed(error: 'Password is empty');
    } else {
      yield LoginLoading();

      final isLogin = await doLogin(event.username, event.password);
      if (isLogin) {
        yield LoginSuccess();
      } else {
        yield LoginFailed(error: 'Login failed');
      }
    }
  }

  Future<bool> doLogin(username, password) async {
    await Future.delayed(Duration(seconds: 3));
    return username == 'admin' && password == 'admin';
  }
}
