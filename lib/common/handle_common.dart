import 'package:stacked_services/stacked_services.dart';
import '../locator/locator.dart';

mixin HandleCommon {
  final DialogService _dialogService = getIt<DialogService>();
  final NavigationService _navigationService = getIt<NavigationService>();
  DialogService get dialogService => _dialogService;
  NavigationService get navigationService => _navigationService;
}
