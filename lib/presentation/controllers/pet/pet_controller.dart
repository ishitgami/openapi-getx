import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_getx/domain/usecases/get_petlist.dart';

class PetController extends GetxController {
  PetController(this._getPetList);
  final GetPetList _getPetList;
  List<Pet> petList = [];

  @override
  void onInit() async {
    super.onInit();
    final result = await _getPetList.execute();
    result.fold((f) => {
      
      }, 
      (value) {
      petList = value;
      update();
      });
  }
}
