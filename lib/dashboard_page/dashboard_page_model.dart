import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/overall_expense_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_page_widget.dart' show DashboardPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DashboardPageModel extends FlutterFlowModel<DashboardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for overall_expense component.
  late OverallExpenseModel overallExpenseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    overallExpenseModel = createModel(context, () => OverallExpenseModel());
  }

  void dispose() {
    unfocusNode.dispose();
    overallExpenseModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
