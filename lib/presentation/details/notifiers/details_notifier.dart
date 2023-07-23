import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/domain/use_cases/get_package_details.dart';
import 'package:flutter_start/presentation/details/notifiers/states/details_state.dart';

class DetailsNotifier extends StateNotifier<DetailsState> {
  final String packageName;
  final GetPackageDetails getPackageDetails;

  DetailsNotifier({
    required this.packageName,
    required this.getPackageDetails,
  }) : super(
          const DetailsState(packageDetails: null),
        ) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    getPackageDetails(packageName).then(
      (value) => state = DetailsState(packageDetails: value),
    );
  }
}
