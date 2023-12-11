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
import 'setup_widget.dart' show SetupWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SetupModel extends FlutterFlowModel<SetupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for firstname_txt widget.
  FocusNode? firstnameTxtFocusNode;
  TextEditingController? firstnameTxtController;
  String? Function(BuildContext, String?)? firstnameTxtControllerValidator;
  String? _firstnameTxtControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ice50v0q' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for lastname_txt widget.
  FocusNode? lastnameTxtFocusNode;
  TextEditingController? lastnameTxtController;
  String? Function(BuildContext, String?)? lastnameTxtControllerValidator;
  String? _lastnameTxtControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'em73iti0' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for ct_email_txt widget.
  FocusNode? ctEmailTxtFocusNode;
  TextEditingController? ctEmailTxtController;
  String? Function(BuildContext, String?)? ctEmailTxtControllerValidator;
  String? _ctEmailTxtControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i3k3jj2a' /* Field is required */,
      );
    }

    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vc7mk9ew' /* Must be in the mail form */,
      );
    }
    return null;
  }

  // State field(s) for username_txt widget.
  FocusNode? usernameTxtFocusNode;
  TextEditingController? usernameTxtController;
  String? Function(BuildContext, String?)? usernameTxtControllerValidator;
  String? _usernameTxtControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1sa1flvc' /* Field is required */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        'pw7h8y6x' /* Length must be greater than or... */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'j8ijfbgb' /* Length must be less than or eq... */,
      );
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '382beaq3' /* Must not begin or end with num... */,
      );
    }
    return null;
  }

  // State field(s) for employee_txt widget.
  FocusNode? employeeTxtFocusNode;
  TextEditingController? employeeTxtController;
  String? Function(BuildContext, String?)? employeeTxtControllerValidator;
  String? _employeeTxtControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i2mu3vm7' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'fvw9hued' /* Length must be equal to 10 */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'ngd318vg' /* Length must be equal to 10 */,
      );
    }
    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ef4189jy' /* Must be numbers only */,
      );
    }
    return null;
  }

  // State field(s) for phone_num_txt widget.
  FocusNode? phoneNumTxtFocusNode;
  TextEditingController? phoneNumTxtController;
  String? Function(BuildContext, String?)? phoneNumTxtControllerValidator;
  String? _phoneNumTxtControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '67gtwvpv' /* Field is required */,
      );
    }

    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        '7smsqn2o' /* Length must be less than or eq... */,
      );
    }
    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'y1mg9ctn' /* Must be numbers only */,
      );
    }
    return null;
  }

  // State field(s) for department_txt widget.
  String? departmentTxtValue;
  FormFieldController<String>? departmentTxtValueController;
  // State field(s) for position_txt widget.
  String? positionTxtValue;
  FormFieldController<String>? positionTxtValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstnameTxtControllerValidator = _firstnameTxtControllerValidator;
    lastnameTxtControllerValidator = _lastnameTxtControllerValidator;
    ctEmailTxtControllerValidator = _ctEmailTxtControllerValidator;
    usernameTxtControllerValidator = _usernameTxtControllerValidator;
    employeeTxtControllerValidator = _employeeTxtControllerValidator;
    phoneNumTxtControllerValidator = _phoneNumTxtControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    firstnameTxtFocusNode?.dispose();
    firstnameTxtController?.dispose();

    lastnameTxtFocusNode?.dispose();
    lastnameTxtController?.dispose();

    ctEmailTxtFocusNode?.dispose();
    ctEmailTxtController?.dispose();

    usernameTxtFocusNode?.dispose();
    usernameTxtController?.dispose();

    employeeTxtFocusNode?.dispose();
    employeeTxtController?.dispose();

    phoneNumTxtFocusNode?.dispose();
    phoneNumTxtController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
