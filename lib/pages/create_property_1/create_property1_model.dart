import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create_property1_widget.dart' show CreateProperty1Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProperty1Model extends FlutterFlowModel<CreateProperty1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for propertyName widget.
  FocusNode? propertyNameFocusNode;
  TextEditingController? propertyNameTextController;
  String? Function(BuildContext, String?)? propertyNameTextControllerValidator;
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
  void initState(BuildContext context) {}

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
