import 'package:drivers_app/models/directions.dart';
import 'package:drivers_app/models/trips_history_model.dart';
import 'package:drivers_app/models/trips_history_model.dart';
import 'package:flutter/cupertino.dart';


class AppInfo extends ChangeNotifier
{
  Directions? userPickUpLocation, userDropOffLocation;
  int countTotalTrips = 0;
  List<String> historyTripsKeysList = [];
  List<TripsHistoryModel> allTripsHistoryInformationList = [];


  void updatePickUpLocationAddress(Directions userPickUpAddress)
  {
    userPickUpLocation = userPickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(Directions dropOffAddress)
  {
    userDropOffLocation = dropOffAddress;
    notifyListeners();
  }

  updateOverAllTripsCounter(int overAllTripsCounter)
  {
    countTotalTrips = overAllTripsCounter;
    notifyListeners();
  }

  updateOverAllTripsKeys(List<String> tripsKeysList)
  {
    historyTripsKeysList = tripsKeysList;
    notifyListeners();
  }

  updateOverAllTripsHistoryInformation(TripsHistoryModel eachTripHistory)
  {
    allTripsHistoryInformationList.add(eachTripHistory);
    notifyListeners();
  }
}