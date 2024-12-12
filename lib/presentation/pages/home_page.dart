import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somnio_code_challenge/presentation/widgets/widgets.dart';
import '../blocs/blocs.dart';
import '../theme/color_palette.dart';
import '../utils/locator.dart';
import '../utils/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: ColorPalette.primary,
              brightness: Brightness.light,
            )),
        home: BlocProvider(
            create: (context) => getIt<PostsBloc>()..add(GetPosts()),
            child: DefaultTabController(
                length: 2,
                child: Scaffold(
                    backgroundColor: ColorPalette.lightBackground,
                    appBar: const AppBarWidget(),
                    body: const BodyWidget()))));
  }
}
