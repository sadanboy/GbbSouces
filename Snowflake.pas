{ *
  * Twitter_Snowflake https://github.com/twitter-archive/snowflake
  * SnowFlake�Ľṹ����(ÿ������-�ֿ�):
  * 0 - 0000000000 0000000000 0000000000 0000000000 0 - 00000 - 00000 - 000000000000
  * 1λ��ʶ������long����������Java���Ǵ����ŵģ����λ�Ƿ���λ��������0��������1������idһ�������������λ��0
  * 41λʱ���(���뼶)��ע�⣬41λʱ��ز��Ǵ洢��ǰʱ���ʱ��أ����Ǵ洢ʱ��صĲ�ֵ����ǰʱ��� - ��ʼʱ���)
  * �õ���ֵ��������ĵĿ�ʼʱ��أ�һ�������ǵ�id��������ʼʹ�õ�ʱ�䣬�����ǳ�����ָ���ģ������������IdWorker���startTime���ԣ���41λ��ʱ��أ�����ʹ��69�꣬��T = (1L << 41) / (1000L * 60 * 60 * 24 * 365) = 69
  * 10λ�����ݻ���λ�����Բ�����1024���ڵ㣬����5λdatacenterId��5λworkerId
  * 12λ���У������ڵļ�����12λ�ļ���˳���֧��ÿ���ڵ�ÿ����(ͬһ������ͬһʱ���)����4096��ID���
  * �������պ�64λ��Ϊһ��Long�͡�
  * SnowFlake���ŵ��ǣ������ϰ���ʱ���������򣬲��������ֲ�ʽϵͳ�ڲ������ID��ײ(����������ID�ͻ���ID������)������Ч�ʽϸߣ������ԣ�SnowFlakeÿ���ܹ�����409.6��ID���ҡ�
  *
  * ���㷨�ο��ٷ� Twitter Snowflake �޸Ķ�����ͬʱ���������Java���Եİ汾��
  * ���ߣ�ȫ���м�� 64445322 https://www.centmap.cn/server
  * ʹ�÷�����var OrderId := IdGenerator.NextId()��IdGenerator ���ô���Ҳ�����ͷţ����Ҹ÷������̰߳�ȫ�ġ�
  * }

// �ο����ŵ����ֲ�ʽID����ϵͳ
// https://tech.meituan.com/2017/04/21/mt-leaf.html
// https://github.com/Meituan-Dianping/Leaf/blob/master/leaf-core/src/main/java/com/sankuai/inf/leaf/snowflake/SnowflakeIDGenImpl.java

unit Snowflake;

interface

uses
  System.SysUtils, System.SyncObjs;

type
  TSnowflakeIdWorker = class(TObject)
  private const
    // ������69��
    MaxYears = 69;
    // ����id��ռ��λ��
    WorkerIdBits = 5;
    // ���ݱ�ʶid��ռ��λ��
    DatacenterIdBits = 5;
    // ������id��ռ��λ��
    SequenceBits = 12;
    // ����ID������12λ
    WorkerIdShift = SequenceBits;
    // ���ݱ�ʶid������17λ(12+5)
    DatacenterIdShift = SequenceBits + WorkerIdBits;
    // ʱ���������22λ(5+5+12)
    TimestampLeftShift = SequenceBits + WorkerIdBits + DatacenterIdBits;
{$WARNINGS OFF}
    // �������е����룬����Ϊ4095 (0b111111111111=0xfff=4095)
    SequenceMask = -1 xor (-1 shl SequenceBits);
    // ֧�ֵ�������id
    MaxWorkerId = -1 xor (-1 shl WorkerIdBits);
    // ֧�ֵ�������ݱ�ʶid������� 31
    MaxDatacenterId = -1 xor (-1 shl DatacenterIdBits);
{$WARNINGS ON}
  private type
    TWorkerID = 0 .. MaxWorkerId;
    TDatacenterId = 0 .. MaxDatacenterId;
  strict private
    FWorkerID: TWorkerID;
    FDatacenterId: TDatacenterId;
    FEpoch: Int64;
    FSequence: Int64;
    FLastTimeStamp: Int64;
    FStartTimeStamp: Int64;
    FUnixTimestamp: Int64;
    FIsHighResolution: Boolean;
    /// <summary>
    /// ��������һ�����룬ֱ������µ�ʱ���
    /// </summary>
    /// <param name="ATimestamp ">�ϴ�����ID��ʱ���</param>
    /// <returns>��ǰʱ��� </returns>
    function WaitUntilNextTime(ATimestamp: Int64): Int64;
    /// <summary>
    /// �����Ժ���Ϊ��λ�ĵ�ǰʱ��
    /// </summary>
    /// <remarks>
    /// ʱ��ı���ʽΪ��ǰ�����ʱ���1970��1��1��0ʱ0��0������ĺ�����
    /// </remarks>
    function CurrentMilliseconds: Int64; inline;
    function CurrentTimeStamp: Int64; inline;
    function ElapsedMilliseconds: Int64; inline;
  private
    class var FLock: TSpinLock;
    class var FInstance: TSnowflakeIdWorker;
    class function GetInstance: TSnowflakeIdWorker; static;
    class constructor Create;
    class destructor Destroy;
  protected
    function GetEpoch: TDateTime;
    procedure SetEpoch(const Value: TDateTime);
  public
    constructor Create; overload;
    /// <summary>
    /// �����һ��ID (�÷������̰߳�ȫ��)
    /// </summary>
    function NextId: Int64;inline;
    /// <summary>
    /// ��������ID(0~31)
    /// </summary>
    property WorkerID: TWorkerID read FWorkerID write FWorkerID;
    /// <summary>
    /// ��������ID(0~31)
    /// </summary>
    property DatacenterId: TDatacenterId read FDatacenterId write FDatacenterId;
    /// <summary>
    /// ��ʼʱ��
    /// </summary>
    property Epoch: TDateTime read GetEpoch write SetEpoch;

    class property Instance: TSnowflakeIdWorker read GetInstance;
  end;

function IdGenerator: TSnowflakeIdWorker;

const
  ERROR_CLOCK_MOVED_BACKWARDS = 'Clock moved backwards. Refusing to generate id for %d milliseconds';
  ERROR_EPOCH_INVALID         = 'Epoch can not be greater than current';

implementation

uses
  System.Math, System.TimeSpan
{$IF defined(MSWINDOWS)}
    , Winapi.Windows
{$ELSEIF defined(MACOS)}
    , Macapi.Mach
{$ELSEIF defined(POSIX)}
    , Posix.Time
{$ENDIF}
    , System.DateUtils;

function IdGenerator: TSnowflakeIdWorker;
begin
  Result := TSnowflakeIdWorker.GetInstance;
end;

{ TSnowflakeIdWorker }

constructor TSnowflakeIdWorker.Create;
{$IF defined(MSWINDOWS)}
var
  Frequency: Int64;
{$ENDIF}
begin
  inherited;
{$IF defined(MSWINDOWS)}
  FIsHighResolution := QueryPerformanceFrequency(Frequency);
{$ELSEIF defined(POSIX)}
  FIsHighResolution := True;
{$ENDIF}
  FSequence := 0;
  FWorkerID := 1;
  FDatacenterId := 1;
  FLastTimeStamp := -1;
  FEpoch := DateTimeToUnix(EncodeDate(2019, 12, 12), True) * MSecsPerSec;
  FUnixTimestamp := DateTimeToUnix(Now, True) * MSecsPerSec;
  FStartTimeStamp := CurrentTimeStamp;
end;

class destructor TSnowflakeIdWorker.Destroy;
begin
  FreeAndNil(FInstance);
end;

class constructor TSnowflakeIdWorker.Create;
begin
  FInstance := nil;
  FLock := TSpinLock.Create(False);
end;

class function TSnowflakeIdWorker.GetInstance: TSnowflakeIdWorker;
begin
  FLock.Enter;
  try
    if FInstance = nil then
      FInstance := TSnowflakeIdWorker.Create;
    Result := FInstance;
  finally
    FLock.Exit;
  end;
end;

function TSnowflakeIdWorker.CurrentTimeStamp: Int64;
{$IF defined(POSIX) and not defined(MACOS)}
var
  res: timespec;
{$ENDIF}
begin
{$IF defined(MSWINDOWS)}
  if FIsHighResolution then
    QueryPerformanceCounter(Result)
  else
    Result := GetTickCount * Int64(TTimeSpan.TicksPerMillisecond);
{$ELSEIF defined(MACOS)}
  Result := Int64(AbsoluteToNanoseconds(mach_absolute_time) div 100);
{$ELSEIF defined(POSIX)}
  clock_gettime(CLOCK_MONOTONIC, @res);
  Result := (Int64(1000000000) * res.tv_sec + res.tv_nsec) div 100;
{$ENDIF}
end;

function TSnowflakeIdWorker.ElapsedMilliseconds: Int64;
begin
  Result := (CurrentTimeStamp - FStartTimeStamp) div TTimeSpan.TicksPerMillisecond;
end;

function TSnowflakeIdWorker.GetEpoch: TDateTime;
begin
  Result := UnixToDateTime(FEpoch div MSecsPerSec, True);
end;

function TSnowflakeIdWorker.NextId: Int64;
var
  Offset: Integer;
  Timestamp: Int64;
begin
  FLock.Enter;
  try
    Timestamp := CurrentMilliseconds();

    // �����ǰʱ��С����һ��ID���ɵ�ʱ�����˵��ϵͳʱ�ӻ��˹����ʱ��Ӧ���׳��쳣
    if (Timestamp < FLastTimeStamp) then
    begin
      Offset := FLastTimeStamp - Timestamp;
      if Offset <= 5 then
      begin
        // ʱ��ƫ���СС��5ms����ȴ�����ʱ��
        System.SysUtils.Sleep(Offset shr 1);

        Timestamp := CurrentMilliseconds();
        // ����С�ڣ����쳣���ϱ�
        if Timestamp < FLastTimeStamp then
          raise Exception.CreateFmt(ERROR_CLOCK_MOVED_BACKWARDS, [FLastTimeStamp - Timestamp]);
      end;
    end;

    // �����ͬһʱ�����ɵģ�����к���������
    if (FLastTimeStamp = Timestamp) then
    begin
      FSequence := (FSequence + 1) and SequenceMask;
      // �������������
      if (FSequence = 0) then
        // ��������һ������,����µ�ʱ���
        Timestamp := WaitUntilNextTime(FLastTimeStamp);
    end
    // ʱ����ı䣬��������������
    else
      FSequence := 0;

    // �ϴ�����ID��ʱ���
    FLastTimeStamp := Timestamp;

    // ��λ��ͨ��������ƴ��һ�����64λ��ID
    Result := ((Timestamp - FEpoch) shl TimestampLeftShift)
      or (DatacenterId shl DatacenterIdShift)
      or (WorkerID shl WorkerIdShift)
      or FSequence;
  finally
    FLock.Exit;
  end;
end;

function TSnowflakeIdWorker.WaitUntilNextTime(ATimestamp: Int64): Int64;
var
  Timestamp: Int64;
begin
  Timestamp := CurrentMilliseconds();
  while Timestamp <= ATimestamp do
    Timestamp := CurrentMilliseconds();

  Result := Timestamp;
end;

procedure TSnowflakeIdWorker.SetEpoch(const Value: TDateTime);
begin
  if Value > Now then
    raise Exception.Create(ERROR_EPOCH_INVALID);

  if YearsBetween(Now, Value) <= MaxYears then
    FEpoch := DateTimeToUnix(Value, True) * MSecsPerSec;
end;

function TSnowflakeIdWorker.CurrentMilliseconds: Int64;
begin
  Result := FUnixTimestamp + ElapsedMilliseconds;
end;

end.
