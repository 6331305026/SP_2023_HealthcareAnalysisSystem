import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'setup2_widget.dart' show Setup2Widget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Setup2Model extends FlutterFlowModel<Setup2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_BD_textfield widget.
  FocusNode? txtBDTextfieldFocusNode;
  TextEditingController? txtBDTextfieldController;
  final txtBDTextfieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtBDTextfieldControllerValidator;
  DateTime? datePicked;
  // State field(s) for Gender_Select widget.
  String? genderSelectValue;
  FormFieldController<String>? genderSelectValueController;
  // State field(s) for txt_BMI_height widget.
  FocusNode? txtBMIHeightFocusNode;
  TextEditingController? txtBMIHeightController;
  String? Function(BuildContext, String?)? txtBMIHeightControllerValidator;
  // State field(s) for txt_BMI_weight widget.
  FocusNode? txtBMIWeightFocusNode;
  TextEditingController? txtBMIWeightController;
  String? Function(BuildContext, String?)? txtBMIWeightControllerValidator;
  // State field(s) for count_Childs widget.
  int? countChildsValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtBDTextfieldFocusNode?.dispose();
    txtBDTextfieldController?.dispose();

    txtBMIHeightFocusNode?.dispose();
    txtBMIHeightController?.dispose();

    txtBMIWeightFocusNode?.dispose();
    txtBMIWeightController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
