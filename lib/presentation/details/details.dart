import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/domain/entities/package_details.dart';
import 'package:flutter_start/presentation/details/blocs/details_cubit.dart';
import 'package:flutter_start/presentation/details/blocs/states/details_state.dart';
import 'package:go_router/go_router.dart';

class Details extends StatelessWidget {
  static const route = 'details/:packageName';

  static String packageRoute(String name) => '/details/$name';

  final String packageName;
  const Details({super.key, required this.packageName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsCubit>(
      create: (context) => DetailsCubit(
        packageName: packageName,
      ),
      child: _Details(),
    );
  }
}

class _Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => GoRouter.of(context).pop(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _PackageTitle(state.packageDetails),
            ),
            _PackageScore(state.packageDetails),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                state.packageDetails?.description ?? 'Loading...',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PackageTitle extends StatelessWidget {
  final PackageDetails? _details;

  const _PackageTitle(this._details);

  String get _name => _details?.name ?? 'Loading...';

  String get _version => _details?.version ?? '';

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_name $_version',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

class _PackageScore extends StatelessWidget {
  final PackageDetails? _details;

  const _PackageScore(this._details);

  double get _score => _details?.score ?? 0;

  int get _likes => _details?.likes ?? 0;

  int get _pubPoints => _details?.pubPoints ?? 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BiColorText(text: '$_likes', subText: ' likes'),
          _BiColorText(text: '$_pubPoints', subText: ' pub points'),
          _BiColorText(
              text: '${(_score * 100).round()}%', subText: ' popularity'),
        ],
      ),
    );
  }
}

class _BiColorText extends StatelessWidget {
  final String text;
  final String subText;

  const _BiColorText({
    required this.text,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          TextSpan(
            text: ' $subText',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
