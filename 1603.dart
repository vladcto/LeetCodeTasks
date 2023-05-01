class ParkingSystem {
  final parks = [0, 0, 0];

  ParkingSystem(int big, int medium, int small) {
    parks[0] = small;
    parks[1] = medium;
    parks[2] = big;
  }

  bool addCar(int carType) {
    if (parks[3 - carType] > 0) {
      parks[3 - carType]--;
      return true;
    } else {
      return false;
    }
  }
}
