import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'healthriskscreeningform_page_widget.dart'
    show HealthriskscreeningformPageWidget;
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

class HealthriskscreeningformPageModel
    extends FlutterFlowModel<HealthriskscreeningformPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for select_gender widget.
  FormFieldController<String>? selectGenderValueController;
  // State field(s) for txt_BD_textfield widget.
  FocusNode? txtBDTextfieldFocusNode;
  TextEditingController? txtBDTextfieldController;
  final txtBDTextfieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtBDTextfieldControllerValidator;
  DateTime? datePicked;
  // State field(s) for count_Childs widget.
  int? countChildsValue;
  // State field(s) for select_generalhealth widget.
  FormFieldController<String>? selectGeneralhealthValueController;
  // State field(s) for txt_BMI_height widget.
  FocusNode? txtBMIHeightFocusNode;
  TextEditingController? txtBMIHeightController;
  String? Function(BuildContext, String?)? txtBMIHeightControllerValidator;
  String? _txtBMIHeightControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wsi3rqix' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'iuf8xt2x' /* Must be numbers only */,
      );
    }
    return null;
  }

  // State field(s) for txt_BMI_weight widget.
  FocusNode? txtBMIWeightFocusNode;
  TextEditingController? txtBMIWeightController;
  String? Function(BuildContext, String?)? txtBMIWeightControllerValidator;
  String? _txtBMIWeightControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zk5wjc2n' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'tti2df6q' /* Must be numbers only */,
      );
    }
    return null;
  }

  // State field(s) for txt_steps widget.
  FocusNode? txtStepsFocusNode;
  TextEditingController? txtStepsController;
  String? Function(BuildContext, String?)? txtStepsControllerValidator;
  String? _txtStepsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'liwcry3b' /* Field is required */,
      );
    }

    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'z89esz36' /* Must be numbers only */,
      );
    }
    return null;
  }

  // State field(s) for select_HighBP widget.
  FormFieldController<String>? selectHighBPValueController;
  // State field(s) for select_HighChol widget.
  FormFieldController<String>? selectHighCholValueController;
  // State field(s) for count_MentHlth widget.
  int? countMentHlthValue;
  // State field(s) for count_PhysHlth widget.
  int? countPhysHlthValue;
  // State field(s) for select_CholCheck widget.
  FormFieldController<String>? selectCholCheckValueController;
  // State field(s) for select_Smoker widget.
  FormFieldController<String>? selectSmokerValueController;
  // State field(s) for select_Stroke widget.
  FormFieldController<String>? selectStrokeValueController;
  // State field(s) for select_DiffWalk widget.
  FormFieldController<String>? selectDiffWalkValueController;
  // State field(s) for select_PhysActivity widget.
  FormFieldController<String>? selectPhysActivityValueController;
  // State field(s) for select_Fruits widget.
  FormFieldController<String>? selectFruitsValueController;
  // State field(s) for select_Veggies widget.
  FormFieldController<String>? selectVeggiesValueController;
  // State field(s) for select_HvyAlcoholConsump widget.
  FormFieldController<String>? selectHvyAlcoholConsumpValueController;
  // State field(s) for select_AnyHealthcare widget.
  FormFieldController<String>? selectAnyHealthcareValueController;
  // State field(s) for select_NoDocbcCost widget.
  FormFieldController<String>? selectNoDocbcCostValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtBMIHeightControllerValidator = _txtBMIHeightControllerValidator;
    txtBMIWeightControllerValidator = _txtBMIWeightControllerValidator;
    txtStepsControllerValidator = _txtStepsControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtBDTextfieldFocusNode?.dispose();
    txtBDTextfieldController?.dispose();

    txtBMIHeightFocusNode?.dispose();
    txtBMIHeightController?.dispose();

    txtBMIWeightFocusNode?.dispose();
    txtBMIWeightController?.dispose();

    txtStepsFocusNode?.dispose();
    txtStepsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get selectGenderValue => selectGenderValueController?.value;
  String? get selectGeneralhealthValue =>
      selectGeneralhealthValueController?.value;
  String? get selectHighBPValue => selectHighBPValueController?.value;
  String? get selectHighCholValue => selectHighCholValueController?.value;
  String? get selectCholCheckValue => selectCholCheckValueController?.value;
  String? get selectSmokerValue => selectSmokerValueController?.value;
  String? get selectStrokeValue => selectStrokeValueController?.value;
  String? get selectDiffWalkValue => selectDiffWalkValueController?.value;
  String? get selectPhysActivityValue =>
      selectPhysActivityValueController?.value;
  String? get selectFruitsValue => selectFruitsValueController?.value;
  String? get selectVeggiesValue => selectVeggiesValueController?.value;
  String? get selectHvyAlcoholConsumpValue =>
      selectHvyAlcoholConsumpValueController?.value;
  String? get selectAnyHealthcareValue =>
      selectAnyHealthcareValueController?.value;
  String? get selectNoDocbcCostValue => selectNoDocbcCostValueController?.value;
}
