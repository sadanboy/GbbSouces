unit uMyLib.PictureHelper;

{ѧϰ��ʦ�������� My��ϵ��

 TPicture��
 ����Base64תͼƬ����
 ���Ӵ�webUrl����ͼƬ����

 =================================================
 Delphi ѧϰ��ʦ�ٷ���վ��www.XueXiDaShi.Vip
 QQ:271118321
 QQȺ:682628230

 ����⡢��Ƶ�γ̡��ĵ� ��עѧϰ��ʦ����
 =================================================
}

interface

uses
  Vcl.Graphics, System.Classes, Soap.EncdDecd, System.Net.HttpClientComponent;

type
  TPictureHelper = class helper for TPicture
    function LoadFromUrl(AUrl: string): Boolean;
    procedure LoadFromBase64(BaseStr: string);
    function ToBase64: string;
  end;

implementation

{ TPictureHelper }

procedure TPictureHelper.LoadFromBase64(BaseStr: string);
var
  WiPic: TWICImage;
  JpgStream: TMemoryStream;
  StrStream: TStringstream;
begin
  WiPic := TWICImage.Create;
  JpgStream := TMemoryStream.Create;
  StrStream := TStringstream.Create(BaseStr);
  DecodeStream(StrStream, JpgStream);
  JpgStream.Position := 0;

  try
    WiPic.LoadFromStream(JpgStream);
    self.Assign(WiPic);
  finally
    WiPic.free;
    StrStream.Free;
    JpgStream.Free;
  end;

end;

function TPictureHelper.LoadFromUrl(AUrl: string): Boolean;
var
  vTMemoryStream: TMemoryStream;
  WicImg: TWICImage;
  AResult: Boolean;
begin
  Result := False;
  try
    TThread.CreateAnonymousThread(
      procedure
      var
        vHTTPClient: TNetHTTPClient;
      begin
        vTMemoryStream := TMemoryStream.Create;
        vHTTPClient := TNetHTTPClient.Create(nil);
        vHTTPClient.ConnectionTimeout := 3000;
        vHTTPClient.ResponseTimeout := 10000;
        try
          try
            vHTTPClient.Get(AUrl, vTMemoryStream);
            AResult := True;
            try
              if vTMemoryStream.Size > 0 then
                TThread.Synchronize(TThread.Current,
                  procedure
                  begin
                    WicImg := TWICImage.Create;
                    WicImg.LoadFromStream(vTMemoryStream);
                    WicImg.ImageFormat := TWICImageFormat.wifJpeg;
                    Assign(WicImg);
                  end);
            finally
              WicImg.Free;
              vTMemoryStream.DisposeOf;
            end;
          except
            vTMemoryStream.Size := 0;
            AResult := False;
          end;
        finally
          vHTTPClient.DisposeOf;
        end;
      end).Start;
    Result := AResult;
  except
    Result := False;
  end;

end;

function TPictureHelper.ToBase64: string;
var
  m: TMemoryStream;
  s: TStringStream;
begin
  Result := '';

  m := TMemoryStream.Create;
  s := TStringStream.Create;
  try
    self.SaveToStream(m);
    EncodeStream(m, s);
    Result := s.DataString;
  finally
    m.Free;
    s.free;
  end;
end;

end.

