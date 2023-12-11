import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'negative_graph_model.dart';
export 'negative_graph_model.dart';

class NegativeGraphWidget extends StatefulWidget {
  const NegativeGraphWidget({
    Key? key,
    this.label,
    this.value,
  }) : super(key: key);

  final List<String>? label;
  final List<double>? value;

  @override
  _NegativeGraphWidgetState createState() => _NegativeGraphWidgetState();
}

class _NegativeGraphWidgetState extends State<NegativeGraphWidget> {
  late NegativeGraphModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NegativeGraphModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 700.0,
        maxHeight: 400.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: FlutterFlowTheme.of(context).accent3,
            offset: Offset(0.0, 3.0),
            spreadRadius: 3.0,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).lineborder,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 600.0,
                ),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '0350tfi8' /* Negative Factor */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.show_chart,
                            color: FlutterFlowTheme.of(context).success,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.more_vert,
                            color: Color(0xFFA3BEDA),
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 498.0,
                    height: 330.0,
                    child: FlutterFlowBarChart(
                      barData: [
                        FFBarChartData(
                          yData: widget.value!,
                          color: FlutterFlowTheme.of(context).success,
                        )
                      ],
                      xLabels: widget.label!,
                      stacked: true,
                      barWidth: 45.0,
                      barBorderRadius: BorderRadius.circular(4.0),
                      groupSpace: 60.0,
                      chartStylingInfo: ChartStylingInfo(
                        enableTooltip: true,
                        backgroundColor: Color(0x00FFFFFF),
                        showBorder: false,
                      ),
                      axisBounds: AxisBounds(),
                      xAxisLabelInfo: AxisLabelInfo(
                        showLabels: true,
                        labelTextStyle: GoogleFonts.getFont(
                          'Roboto',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                        ),
                        labelInterval: 10.0,
                      ),
                      yAxisLabelInfo: AxisLabelInfo(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
