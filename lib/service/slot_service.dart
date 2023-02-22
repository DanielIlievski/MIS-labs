import 'package:mis_labs/model/slot.dart';

abstract class BaseSlotService {
  void addSlot(Slot slot);
  void removeSlot(Slot slot);
  List<Slot> getSlots();
}
