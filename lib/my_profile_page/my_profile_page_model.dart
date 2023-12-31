import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/top_factor_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'my_profile_page_widget.dart' show MyProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyProfilePageModel extends FlutterFlowModel<MyProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for top_factor component.
  late TopFactorModel topFactorModel1;
  // Model for top_factor component.
  late TopFactorModel topFactorModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topFactorModel1 = createModel(context, () => TopFactorModel());
    topFactorModel2 = createModel(context, () => TopFactorModel());
  }

  void dispose() {
    unfocusNode.dispose();
    topFactorModel1.dispose();
    topFactorModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
