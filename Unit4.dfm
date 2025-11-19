object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Servidor ZKTeco - Push Test Server'
  ClientHeight = 635
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 376
    Width = 31
    Height = 15
    Caption = 'Porta:'
  end
  object Label2: TLabel
    Left = 8
    Top = 408
    Width = 79
    Height = 15
    Caption = 'SN (para cmd):'
  end
  object ImgFace: TImage
    Left = 8
    Top = 470
    Width = 120
    Height = 120
    Center = True
    Proportional = True
    Stretch = True
  end
  object MemoLog: TMemo
    Left = 8
    Top = 8
    Width = 984
    Height = 360
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object edtPort: TEdit
    Left = 56
    Top = 372
    Width = 80
    Height = 23
    TabOrder = 1
    Text = '8011'
  end
  object BtnStart: TButton
    Left = 150
    Top = 372
    Width = 100
    Height = 28
    Caption = 'Iniciar Servidor'
    TabOrder = 2
    OnClick = BtnStartClick
  end
  object BtnStop: TButton
    Left = 260
    Top = 372
    Width = 100
    Height = 28
    Caption = 'Parar Servidor'
    TabOrder = 3
    OnClick = BtnStopClick
  end
  object BtnTestUser: TButton
    Left = 370
    Top = 372
    Width = 180
    Height = 28
    Caption = 'Testar Cadastro Usu'#195#161'rio'
    TabOrder = 4
    OnClick = BtnTestUserClick
  end
  object BtnRequestLogs: TButton
    Left = 560
    Top = 372
    Width = 180
    Height = 28
    Caption = 'Solicitar Registros (ATTLOG)'
    TabOrder = 5
    OnClick = BtnRequestLogsClick
  end
  object edtCmdSN: TEdit
    Left = 100
    Top = 404
    Width = 200
    Height = 23
    TabOrder = 6
    Text = 'CP9L231460658'
  end
  object edtRawCmd: TEdit
    Left = 8
    Top = 436
    Width = 760
    Height = 23
    TabOrder = 7
    Text = 
      'C:1:DATA UPDATE user CardNo=12345'#9'Pin=1'#9'Password=234'#9'Name=Gustav' +
      'o'#9'Privilege=0'
  end
  object btnSendRawCmd: TButton
    Left = 774
    Top = 439
    Width = 200
    Height = 28
    Caption = 'Enviar Raw Command'
    TabOrder = 8
    OnClick = btnSendRawCmdClick
  end
  object BtnTestFace: TBitBtn
    Left = 568
    Top = 408
    Width = 172
    Height = 25
    Caption = 'Enviar Face Teste'
    TabOrder = 9
    OnClick = BtnTestFaceClick
  end
  object BtnTestFaceUrl: TBitBtn
    Left = 748
    Top = 408
    Width = 172
    Height = 25
    Caption = 'Enviar Face via URL'
    TabOrder = 13
    OnClick = BtnTestFaceUrlClick
  end
  object BtnRequestUsers: TButton
    Left = 760
    Top = 372
    Width = 180
    Height = 28
    Caption = 'Solicitar Usu'#195#161'rios (USER)'
    TabOrder = 10
    OnClick = BtnRequestUsersClick
  end
  object BtnDeleteUser: TButton
    Left = 568
    Top = 465
    Width = 180
    Height = 28
    Caption = 'Apagar Usu'#195#161'rio (DELETE)'
    TabOrder = 11
    OnClick = BtnDeleteUserClick
  end
  object BtnRequestFace: TButton
    Left = 150
    Top = 470
    Width = 180
    Height = 28
    Caption = 'Solicitar Face (BIOPHOTO)'
    TabOrder = 12
    OnClick = BtnRequestFaceClick
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    DefaultPort = 8011
    OnCommandOther = IdHTTPServer1CommandOther
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 872
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DataSource=sch'
      'Database=sch'
      'User_Name=postgres'
      'Password=prodata'
      
        'ODBCAdvanced=SERVER=10.1.1.99;PORT=5432;SSLmode=prefer;ReadOnly=' +
        '0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;RowVersioning=0;Sh' +
        'owSystemTables=0;ConnSettings=;Fetch=100;UnknownSizes=0;MaxVarch' +
        'arSize=255;MaxLongVarcharSize=8190;Debug=0;CommLog=0;UseDeclareF' +
        'etch=0;TextAsLongVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=1' +
        ';Parse=0;ExtraSysTablePrefixes=dd_;LFConversion=1;UpdatableCurso' +
        'rs=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=0;UseServerSidePre' +
        'pare=1;LowerCaseIdentifier=0;GssAuthUseGSS=0;XaOpt=1'
      'DriverID=ODBC')
    FormatOptions.AssignedValues = [fvCheckPrecision, fvADOCompatibility]
    FormatOptions.CheckPrecision = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
end
