import 'package:get_it/get_it.dart';
import 'package:loan_app/features/onboarding/data/data.dart';
import 'package:loan_app/features/onboarding/domain/domain.dart';

class OnboardingIOC {
  static final _locator = GetIt.instance;

  static init() async {
    _locator.registerLazySingleton<OnboardingStatusRepo>(
      () => OnboardingStatusHiveRepo(),
    );
  }

  static OnboardingStatusRepo onboardingStatus() {
    return _locator.get<OnboardingStatusRepo>();
  }
}
