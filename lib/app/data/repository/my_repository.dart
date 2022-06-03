import '../provider/my_api.dart';

class MyRepository {
  final MyApi apiClient;

  MyRepository({required this.apiClient});

  getAll() {
    return apiClient.getAll();
  }
}
