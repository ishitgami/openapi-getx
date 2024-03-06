import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_getx/comman/enum.dart';
import 'package:openapi_getx/domain/usecases/get_petlist.dart';

class PetController extends GetxController {
  PetController(this._getPetList);
  final GetPetList _getPetList;
  List<Pet> petList = [];
  Map<String, int> inventory = {};
  Status selectedStatus = Status.available;
  

  @override
  void onInit() async {
    super.onInit();
    await getPetList(selectedStatus);
    await getInventory();
  }

  // get pet list
  Future<void> getPetList(Status status) async {
    final result = await _getPetList.getPetListUsecase(status);
    result.fold((f) => {}, (value) {
      petList = value;
      update();
    });
  }

  // get inventory
  Future<void> getInventory() async {
    final result = await _getPetList.getInventoryUseCase();
    result.fold((f) => {}, (value) {
      inventory = value;
      update();
    });
  }

  // status change
  Future<void> changeStatus(Status status) async{
    selectedStatus = status;
   await getPetList(status);
   update();
  }
}
