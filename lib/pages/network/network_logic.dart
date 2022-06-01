import 'package:get/get.dart';

import '../../entiries/course.dart';
import '../../utils/request.dart';
import '../../utils/util.dart';
import 'network_state.dart';

class NetworkLogic extends GetxController {
  final NetworkState state = NetworkState();

  @override
  void onInit() async {
     ResponseData result = await HttpRequest.get<List<Course>>("/api/course/list");
     print("response");
     if(Util.isList(result.data)){
        print('truetruetruetruetruetruetruetruetrue');
     }
     print(result.data is List);
  }
}
