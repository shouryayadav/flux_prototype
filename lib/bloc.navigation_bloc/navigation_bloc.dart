import 'package:bloc/bloc.dart';
import '../pages/mycards/mycards.dart';
import '../pages/savedcoupons.dart';
import '../pages/myprofile.dart';
import '../pages/homepage.dart';
import '../pages/paybills.dart';
import '../pages/settings.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyCardsClickedEvent,
  SavedCouponsClickedEvent,
  MyProfileClickedEvent,
  PayBillsClickedEvent,
  SettingsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyCardsClickedEvent:
        yield MyCardsPage();
        break;
      case NavigationEvents.SavedCouponsClickedEvent:
        yield MyOrdersPage();
        break;
      case NavigationEvents.MyProfileClickedEvent:
        yield MyProfilePage();
        break;
      case NavigationEvents.PayBillsClickedEvent:
        yield PayBillsPage();
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield SettingsPage();
        break;
    }
  }
}
