import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'property_details_copy_widget.dart' show PropertyDetailsCopyWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class PropertyDetailsCopyModel
    extends FlutterFlowModel<PropertyDetailsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel1;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel2;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel3;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel4;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel5;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel6;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel7;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel8;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel9;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel10;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel11;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    amenitityIndicatorModel1 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel2 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel3 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel4 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel5 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel6 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel7 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel8 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel9 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel10 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel11 =
        createModel(context, () => AmenitityIndicatorModel());
  }

  @override
  void dispose() {
    amenitityIndicatorModel1.dispose();
    amenitityIndicatorModel2.dispose();
    amenitityIndicatorModel3.dispose();
    amenitityIndicatorModel4.dispose();
    amenitityIndicatorModel5.dispose();
    amenitityIndicatorModel6.dispose();
    amenitityIndicatorModel7.dispose();
    amenitityIndicatorModel8.dispose();
    amenitityIndicatorModel9.dispose();
    amenitityIndicatorModel10.dispose();
    amenitityIndicatorModel11.dispose();
  }
}
