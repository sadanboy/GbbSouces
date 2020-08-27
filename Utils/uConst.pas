unit uConst;

interface

type
  // 优化状态
  TOTState = (otNone, otSel_PiaoBai, otSelInverse_PiaoBai, otSel_Crop, otSel_Fill, otEraser, otText, otDraw_Line, otDraw_Arrow, otDraw_Polyline, otDraw_Rectangle, otM_PiaoBai, otM_PiaoBai_Sel, otDraw_Rect, otChange_Brightness, otChange_Contrast);

  TExportAllOptions = (oCode, oStem, oAnswer, oAnnex, oLabel, oQuestionType, oDifficulty, oSrc, oLine, oKind);

  TExportOptions = set of TExportAllOptions;

  TMyImportFieldArray = array of array of string;

const
  // 文件及路径
  iniFN: string = 'conf_client.ini';
  labelFN: string = 'c_fieldlabel.txt';

  // 保留小数位数
  decimal_count: Integer = 5;

  // usersFN: string = 'c_users.txt';

  serversFN: string = 'c_servers.txt';
  viewerFN: string = 'prjImageViewer.exe';
  ResizeWarningFN: string = 'custom\ResizeAllImagesInfo.txt';
  backImageFN: string = 'custom\back.png';
  LayoutDir: string = 'layout\';
  FaceImageFN: string = 'custom\face.png';
  // 日期格式
  DateStr: string = 'yyyy-MM-dd';

  // 报表文件
  reasonFN: string = 'custom\reason.rvf';
  headerFN: string = 'custom\header.rvf';
  headerFN0: string = 'custom\header0.rvf';
  footerFN: string = 'custom\footer.rvf';
  WaterMarkFN: string = 'custom\waterMark.png';
  // 连接错误
  ConnectError: string = '服务器连接错误！';

  //
  prefix_rbnTab = 'rbnTab';
  prefix_page = 'ts';
  prefix_frame = 'fraModule';
  prefix_bar = 'bar';
  EditModuleSymbol: string = 'InputCapture';

  // 记录登录账号数量限制
  UserLimit: Integer = 8;
  WeekDayArr: array[0..6] of string = ('日', '一', '二', '三', '四', '五', '六');

  // 截题
  CaptureLimitSingle: Integer = 31;
  // 默认密码
  DefaultPassword: string = '123456';

  // OfficeViewer ProgID
  OViewerProgID: string = 'OA.OACtrl.1';
  OViewerFN: string = 'icuviewer.dll';

  // 测试来源表名
  ExamSrcTableNameArr: array[0..1] of string = ('t_link_question_pack', 't_link_question_paper');
  ExamStatProcNameArr: array[0..1] of string = ('proc_stat_exam4pack_label', 'proc_stat_exam4paper_label');
  ExamStatPriorityProcNameArr: array[0..1] of string = ('proc_stat_exam4pack_priority', 'proc_stat_exam4paper_priority');
  ExamPriorityTableNameArr: array[0..1] of string = ('t_exam_priority_point', 't_exam_priority_thought');
  ExamAccuracyTableNameArr: array[0..1] of string = ('t_accuracy_point', 't_accuracy_thought');
  // 保存题目原始文件表名
  SaveQuestionTableNameArr: array[0..3] of string = ('t_book', 't_pack', 't_paper', 't_resource_out');

  // 全对标识
  AllCorrectSymbol: string = '0';

  //数量Band宽度
  ChildBandWidth: Integer = 58;

  MESSAGEBOX_TITLE= '系统提示' ;
   SYS_ERRORLOG_FILE = 'ErrorLog.log'; // 错误日志文件名
  SYS_SETUP_INI_FILE = 'Setup.ini'; // 数据库连接配置
  SYS_LOCAL_INI_FILE = 'DsClient.ini'; // 本地缓存、个性配置
  SYS_AVI_FILE = 'avi\progress.avi'; // avi 文件名，用于创建进度表时显示提示

implementation

end.

