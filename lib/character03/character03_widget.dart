import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'character03_model.dart';
export 'character03_model.dart';

class Character03Widget extends StatefulWidget {
  const Character03Widget({Key? key}) : super(key: key);

  @override
  _Character03WidgetState createState() => _Character03WidgetState();
}

class _Character03WidgetState extends State<Character03Widget> {
  late Character03Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Character03Model());
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
                    'assets/images/scp03.jpg',
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
                  'SCP-096 เป็นมนุษย์ชายสูง 2.3 เมตร น้ำหนัก 90 กิโลกรัม SCP-096 มีผิวซีด ผมยาวสีขาว และดวงตาสีดำสนิท SCP-096 จะไม่ทำร้ายใครจนกว่าจะเห็นใบหน้าของใครบางคน หาก SCP-096 เห็นใบหน้าของใครบางคน มันจะเริ่มวิ่งไปยังเหยื่อด้วยความเร็วสูงสุด เหยื่อจะถูก SCP-096 ฆ่าอย่างโหดเหี้ยมโดยไม่มีความปรานี SCP-096 ถูกพบครั้งแรกใน [เมือง] ประเทศ [ประเทศ] SCP-096 ถูกกักกันไว้ในห้องเดี่ยวที่มีผนังหนาและกล้องรักษาความปลอดภัยหลายตัว เจ้าหน้าที่ที่ดูแล SCP-096 จะต้องสวมหน้ากากเพื่อหลีกเลี่ยงการทำให้ SCP-096 โกรธ',
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
