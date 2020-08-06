import 'package:meta/meta.dart';
import 'package:sinclog_project/app/data/provider/httpClient.dart';

class LoginRepository {
  final HttpClient apiClient;

  LoginRepository({@required this.apiClient}) : assert(apiClient != null);

  doLogin(usuario, senha) async {
    return await apiClient.getRequest();
  }
}
