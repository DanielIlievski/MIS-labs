import 'package:mis_labs/common/memory_store.dart';
import 'package:mis_labs/model/slot.dart';
import 'package:mis_labs/service/slot_service.dart';

class SlotService extends BaseSlotService {
  MemoryStore<Slot> slotStore = MemoryStore<Slot>();
  @override
  void addSlot(Slot slot) {
    slotStore.add(slot);
  }

  @override
  List<Slot> getSlots() {
    return slotStore.getItems();
  }

  @override
  void removeSlot(Slot slot) {
    slotStore.remove(slot);
  }
}
