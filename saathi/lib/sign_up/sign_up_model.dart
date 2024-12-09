import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email_c widget.
  FocusNode? emailCFocusNode;
  TextEditingController? emailCTextController;
  String? Function(BuildContext, String?)? emailCTextControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for pass_c widget.
  FocusNode? passCFocusNode;
  TextEditingController? passCTextController;
  late bool passCVisibility;
  String? Function(BuildContext, String?)? passCTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    passCVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailCFocusNode?.dispose();
    emailCTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    passCFocusNode?.dispose();
    passCTextController?.dispose();
  }
}
