import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_my_profile_page_widget.dart' show EditMyProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EditMyProfilePageModel extends FlutterFlowModel<EditMyProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for firstname_txt widget.
  FocusNode? firstnameTxtFocusNode;
  TextEditingController? firstnameTxtController;
  String? Function(BuildContext, String?)? firstnameTxtControllerValidator;
  // State field(s) for lastname_txt widget.
  FocusNode? lastnameTxtFocusNode;
  TextEditingController? lastnameTxtController;
  String? Function(BuildContext, String?)? lastnameTxtControllerValidator;
  // State field(s) for ct_email_txt widget.
  FocusNode? ctEmailTxtFocusNode1;
  TextEditingController? ctEmailTxtController1;
  String? Function(BuildContext, String?)? ctEmailTxtController1Validator;
  // State field(s) for username_txt widget.
  FocusNode? usernameTxtFocusNode;
  TextEditingController? usernameTxtController;
  String? Function(BuildContext, String?)? usernameTxtControllerValidator;
  // State field(s) for employee_txt widget.
  FocusNode? employeeTxtFocusNode;
  TextEditingController? employeeTxtController;
  String? Function(BuildContext, String?)? employeeTxtControllerValidator;
  // State field(s) for phone_num_txt widget.
  FocusNode? phoneNumTxtFocusNode;
  TextEditingController? phoneNumTxtController;
  String? Function(BuildContext, String?)? phoneNumTxtControllerValidator;
  // State field(s) for department_txt widget.
  String? departmentTxtValue;
  FormFieldController<String>? departmentTxtValueController;
  // State field(s) for position_txt widget.
  String? positionTxtValue;
  FormFieldController<String>? positionTxtValueController;
  // State field(s) for ct_email_txt widget.
  FocusNode? ctEmailTxtFocusNode2;
  TextEditingController? ctEmailTxtController2;
  String? Function(BuildContext, String?)? ctEmailTxtController2Validator;
  String? _ctEmailTxtController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '61xhf0fq' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'txpughmc' /* Must be in the mail form */,
      );
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    ctEmailTxtController2Validator = _ctEmailTxtController2Validator;
  }

  void dispose() {
    unfocusNode.dispose();
    firstnameTxtFocusNode?.dispose();
    firstnameTxtController?.dispose();

    lastnameTxtFocusNode?.dispose();
    lastnameTxtController?.dispose();

    ctEmailTxtFocusNode1?.dispose();
    ctEmailTxtController1?.dispose();

    usernameTxtFocusNode?.dispose();
    usernameTxtController?.dispose();

    employeeTxtFocusNode?.dispose();
    employeeTxtController?.dispose();

    phoneNumTxtFocusNode?.dispose();
    phoneNumTxtController?.dispose();

    ctEmailTxtFocusNode2?.dispose();
    ctEmailTxtController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
