import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/change_main_photo/change_main_photo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_property1_widget.dart' show EditProperty1Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProperty1Model extends FlutterFlowModel<EditProperty1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for propertyName widget.
  FocusNode? propertyNameFocusNode;
  TextEditingController? propertyNameTextController;
  String? Function(BuildContext, String?)? propertyNameTextControllerValidator;
  String? _propertyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'We need to know the name of the place...';
    }

    return null;
  }

  // State field(s) for propertyAddress widget.
  FocusNode? propertyAddressFocusNode;
  TextEditingController? propertyAddressTextController;
  String? Function(BuildContext, String?)?
      propertyAddressTextControllerValidator;
  // State field(s) for propertyNeighborhood widget.
  FocusNode? propertyNeighborhoodFocusNode;
  TextEditingController? propertyNeighborhoodTextController;
  String? Function(BuildContext, String?)?
      propertyNeighborhoodTextControllerValidator;
  // State field(s) for propertyDescription widget.
  FocusNode? propertyDescriptionFocusNode;
  TextEditingController? propertyDescriptionTextController;
  String? Function(BuildContext, String?)?
      propertyDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    propertyNameTextControllerValidator = _propertyNameTextControllerValidator;
  }

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameTextController?.dispose();

    propertyAddressFocusNode?.dispose();
    propertyAddressTextController?.dispose();

    propertyNeighborhoodFocusNode?.dispose();
    propertyNeighborhoodTextController?.dispose();

    propertyDescriptionFocusNode?.dispose();
    propertyDescriptionTextController?.dispose();
  }
}
