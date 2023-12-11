import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress_Signup widget.
  FocusNode? emailAddressSignupFocusNode;
  TextEditingController? emailAddressSignupController;
  String? Function(BuildContext, String?)?
      emailAddressSignupControllerValidator;
  String? _emailAddressSignupControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'aiqzeio8' /* Field is required */,
      );
    }

    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '0cskvggc' /* Must be in the mail form */,
      );
    }
    return null;
  }

  // State field(s) for c_password_Signup widget.
  FocusNode? cPasswordSignupFocusNode;
  TextEditingController? cPasswordSignupController;
  late bool cPasswordSignupVisibility;
  String? Function(BuildContext, String?)? cPasswordSignupControllerValidator;
  String? _cPasswordSignupControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '39mn79fy' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'btakuafo' /* Length must be greater than or... */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        '4y4oqtoj' /* Length must be less than or eq... */,
      );
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ctnaehbw' /* Must contain at least 1 lowerc... */,
      );
    }
    return null;
  }

  // State field(s) for cf_password_Signup widget.
  FocusNode? cfPasswordSignupFocusNode;
  TextEditingController? cfPasswordSignupController;
  late bool cfPasswordSignupVisibility;
  String? Function(BuildContext, String?)? cfPasswordSignupControllerValidator;
  String? _cfPasswordSignupControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o8bdllx7' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'j0sizwu4' /* Length must be greater than or... */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'f1v4slrc' /* Length must be less than or eq... */,
      );
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3mxmhc5q' /* Must contain at least 1 lowerc... */,
      );
    }
    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressSignupControllerValidator =
        _emailAddressSignupControllerValidator;
    cPasswordSignupVisibility = false;
    cPasswordSignupControllerValidator = _cPasswordSignupControllerValidator;
    cfPasswordSignupVisibility = false;
    cfPasswordSignupControllerValidator = _cfPasswordSignupControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressSignupFocusNode?.dispose();
    emailAddressSignupController?.dispose();

    cPasswordSignupFocusNode?.dispose();
    cPasswordSignupController?.dispose();

    cfPasswordSignupFocusNode?.dispose();
    cfPasswordSignupController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
