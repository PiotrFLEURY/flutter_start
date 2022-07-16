import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/domain/use_cases/get_package_details.dart';
import 'package:flutter_start/injection.dart';
import 'package:flutter_start/presentation/details/blocs/states/details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final String packageName;
  final GetPackageDetails getPackageDetails = getIt();

  DetailsCubit({
    required this.packageName,
  }) : super(
          const DetailsState(packageDetails: null),
        ) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    getPackageDetails(packageName).then(
      (value) => emit(
        DetailsState(packageDetails: value),
      ),
    );
  }
}
