import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_factor_model.dart';
export 'top_factor_model.dart';

class TopFactorWidget extends StatefulWidget {
  const TopFactorWidget({
    Key? key,
    this.label,
    this.value,
  }) : super(key: key);

  final List<String>? label;
  final List<double>? value;

  @override
  _TopFactorWidgetState createState() => _TopFactorWidgetState();
}

class _TopFactorWidgetState extends State<TopFactorWidget> {
  late TopFactorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopFactorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList = [
      Color(0xFF2F93F3),
      Color(0xFFF23985),
      Color(0xFFFFB400),
      Color(0xFF56CA00),
      Color(0xFF497594),
      Color(0xFF31E1B1),
      Color(0xFFFF65E8),
      Color(0xFF1C4386),
      Color(0xFF6E9EFA),
      Color(0xFFFF5C51)
    ];
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 500.0,
          height: 300.0,
          child: Stack(
            children: [
              FlutterFlowPieChart(
                data: FFPieChartData(
                  values: widget.value!,
                  colors: chartPieChartColorsList,
                  radius: [45.0],
                ),
                donutHoleRadius: 90.0,
                sectionLabelStyle: FlutterFlowTheme.of(context).headlineSmall,
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, 0.50),
                child: FlutterFlowChartLegendWidget(
                  entries: widget.label!
                      .asMap()
                      .entries
                      .map(
                        (label) => LegendEntry(
                          chartPieChartColorsList[
                              label.key % chartPieChartColorsList.length],
                          label.value,
                        ),
                      )
                      .toList(),
                  width: 250.0,
                  height: 250.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                  textPadding:
                      EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  borderWidth: 0.1,
                  borderColor: Colors.transparent,
                  indicatorSize: 10.0,
                  indicatorBorderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
