import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/negative_graph_widget.dart';
import '/components/positive_graph_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'treatment_costs_page_widget.dart' show TreatmentCostsPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TreatmentCostsPageModel
    extends FlutterFlowModel<TreatmentCostsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for positive_graph component.
  late PositiveGraphModel positiveGraphModel;
  // Model for negative_graph component.
  late NegativeGraphModel negativeGraphModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    positiveGraphModel = createModel(context, () => PositiveGraphModel());
    negativeGraphModel = createModel(context, () => NegativeGraphModel());
  }

  void dispose() {
    unfocusNode.dispose();
    positiveGraphModel.dispose();
    negativeGraphModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
