unit uConst;

interface

type
  // �Ż�״̬
  TOTState = (otNone, otSel_PiaoBai, otSelInverse_PiaoBai, otSel_Crop, otSel_Fill, otEraser, otText, otDraw_Line, otDraw_Arrow, otDraw_Polyline, otDraw_Rectangle, otM_PiaoBai, otM_PiaoBai_Sel, otDraw_Rect, otChange_Brightness, otChange_Contrast);

  TExportAllOptions = (oCode, oStem, oAnswer, oAnnex, oLabel, oQuestionType, oDifficulty, oSrc, oLine, oKind);

  TExportOptions = set of TExportAllOptions;

  TMyImportFieldArray = array of array of string;

const
  // �ļ���·��
  iniFN: string = 'conf_client.ini';
  labelFN: string = 'c_fieldlabel.txt';

  // ����С��λ��
  decimal_count: Integer = 5;

  // usersFN: string = 'c_users.txt';

  serversFN: string = 'c_servers.txt';
  viewerFN: string = 'prjImageViewer.exe';
  ResizeWarningFN: string = 'custom\ResizeAllImagesInfo.txt';
  backImageFN: string = 'custom\back.png';
  LayoutDir: string = 'layout\';
  FaceImageFN: string = 'custom\face.png';
  // ���ڸ�ʽ
  DateStr: string = 'yyyy-MM-dd';

  // �����ļ�
  reasonFN: string = 'custom\reason.rvf';
  headerFN: string = 'custom\header.rvf';
  headerFN0: string = 'custom\header0.rvf';
  footerFN: string = 'custom\footer.rvf';
  WaterMarkFN: string = 'custom\waterMark.png';
  // ���Ӵ���
  ConnectError: string = '���������Ӵ���';

  //
  prefix_rbnTab = 'rbnTab';
  prefix_page = 'ts';
  prefix_frame = 'fraModule';
  prefix_bar = 'bar';
  EditModuleSymbol: string = 'InputCapture';

  // ��¼��¼�˺���������
  UserLimit: Integer = 8;
  WeekDayArr: array[0..6] of string = ('��', 'һ', '��', '��', '��', '��', '��');

  // ����
  CaptureLimitSingle: Integer = 31;
  // Ĭ������
  DefaultPassword: string = '123456';

  // OfficeViewer ProgID
  OViewerProgID: string = 'OA.OACtrl.1';
  OViewerFN: string = 'icuviewer.dll';

  // ������Դ����
  ExamSrcTableNameArr: array[0..1] of string = ('t_link_question_pack', 't_link_question_paper');
  ExamStatProcNameArr: array[0..1] of string = ('proc_stat_exam4pack_label', 'proc_stat_exam4paper_label');
  ExamStatPriorityProcNameArr: array[0..1] of string = ('proc_stat_exam4pack_priority', 'proc_stat_exam4paper_priority');
  ExamPriorityTableNameArr: array[0..1] of string = ('t_exam_priority_point', 't_exam_priority_thought');
  ExamAccuracyTableNameArr: array[0..1] of string = ('t_accuracy_point', 't_accuracy_thought');
  // ������Ŀԭʼ�ļ�����
  SaveQuestionTableNameArr: array[0..3] of string = ('t_book', 't_pack', 't_paper', 't_resource_out');

  // ȫ�Ա�ʶ
  AllCorrectSymbol: string = '0';

  //����Band���
  ChildBandWidth: Integer = 58;

  MESSAGEBOX_TITLE= 'ϵͳ��ʾ' ;
   SYS_ERRORLOG_FILE = 'ErrorLog.log'; // ������־�ļ���
  SYS_SETUP_INI_FILE = 'Setup.ini'; // ���ݿ���������
  SYS_LOCAL_INI_FILE = 'DsClient.ini'; // ���ػ��桢��������
  SYS_AVI_FILE = 'avi\progress.avi'; // avi �ļ��������ڴ������ȱ�ʱ��ʾ��ʾ

implementation

end.

