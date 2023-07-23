import 'package:flutter_start/app.dart';
import 'package:flutter_start/data/repositories/package_repository.dart';
import 'package:flutter_start/domain/entities/entities.dart';
import 'package:flutter_start/domain/repositories/package_repository.dart';
import 'package:flutter_start/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_test.mocks.dart';

@GenerateMocks([PackageRepositoryImpl])
void main() {
  testWidgets('App should start', (widgetTester) async {
    prepareContext();

    getIt.allowReassignment = true;

    final mockPackageRepositoryImpl = MockPackageRepositoryImpl();
    getIt.registerLazySingleton<PackageRepository>(
      () => mockPackageRepositoryImpl,
    );

    when(mockPackageRepositoryImpl.getPackages()).thenAnswer(
      (realInvocation) => Future.value(
        const PackageList(packages: []),
      ),
    );

    await widgetTester.pumpWidget(FlutterStart());

    await widgetTester.pumpAndSettle();

    expect(find.text('MetaData'), findsOneWidget);
  });
}
