import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'character04_model.dart';
export 'character04_model.dart';

class Character04Widget extends StatefulWidget {
  const Character04Widget({Key? key}) : super(key: key);

  @override
  _Character04WidgetState createState() => _Character04WidgetState();
}

class _Character04WidgetState extends State<Character04Widget> {
  late Character04Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Character04Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF707070),
        appBar: AppBar(
          backgroundColor: Color(0xFF48484B),
          automaticallyImplyLeading: false,
          title: Text(
            'SCP',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 10.0, 40.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(58.0),
                  child: Image.asset(
                    'assets/images/scp04.jpg',
                    width: 272.0,
                    height: 232.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  'รายละเอียด',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                child: Text(
                  'SCP-682 เป็นสิ่งมีชีวิตขนาดใหญ่ที่มีรูปร่างคล้ายมังกร มันมีผิวหนังสีเขียวขุ่นและฟันและกรงเล็บที่แหลมคม SCP-682 ทนทานต่อการทำลายล้างทุกรูปแบบ มันจะฟื้นฟูตัวเองจากความเสียหายใดๆ ก็ตาม SCP-682 ดุร้ายและก้าวร้าว มันจะโจมตีสิ่งมีชีวิตใดๆ โดยไม่คำนึงถึงขนาดหรือพลัง SCP-682 ถูกพบครั้งแรกใน [ประเทศ] SCP-682 ถูกกักกันไว้ในห้องเดี่ยวที่มีผนังเหล็กหนาและประตูเหล็กหนา เจ้าหน้าที่ที่ดูแล SCP-682 จะต้องสวมชุดเกราะป้องกันการโจมตีของ SCP-682',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL('http://scp-th.wikidot.com/scp-series-th');
                  },
                  text: 'ค้นหา',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFA18B83),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60.0, 5.0, 60.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('HomePage');
                  },
                  text: 'กลับ',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF959598),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
