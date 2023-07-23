import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/app.dart';
import 'package:flutter_start/data/repositories/package_repository.dart';
import 'package:flutter_start/domain/entities/entities.dart';
import 'package:flutter_start/providers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_test.mocks.dart';

@GenerateMocks([PackageRepositoryImpl])
void main() {
  testWidgets('App should start', (widgetTester) async {
    final mockPackageRepositoryImpl = MockPackageRepositoryImpl();

    when(mockPackageRepositoryImpl.getPackages()).thenAnswer(
      (realInvocation) => Future.value(
        const PackageList(packages: []),
      ),
    );

    await widgetTester.pumpWidget(
      ProviderScope(
        overrides: [
          packageRepositoryProvider.overrideWithValue(
            mockPackageRepositoryImpl,
          ),
        ],
        child: FlutterStart(),
      ),
    );

    await widgetTester.pumpAndSettle();

    expect(find.text('MetaData'), findsOneWidget);
  });
}
