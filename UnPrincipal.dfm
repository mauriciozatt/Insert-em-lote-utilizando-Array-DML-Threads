object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela principal'
  ClientHeight = 500
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 880
    Height = 145
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -6
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 240
      Height = 19
      Caption = 'Quantidade de Registros '#224'  inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 77
      Width = 37
      Height = 19
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtQuantidade: TEdit
      Left = 24
      Top = 48
      Width = 81
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 433
      Top = 8
      Width = 280
      Height = 61
      Caption = 'Insert Registros Via Thread Anonima'
      DragCursor = crHandPoint
      TabOrder = 1
      OnClick = Button1Click
    end
    object edtDescricao: TEdit
      Left = 24
      Top = 98
      Width = 403
      Height = 21
      TabOrder = 2
    end
    object Button2: TButton
      Left = 433
      Top = 75
      Width = 280
      Height = 44
      Caption = 'Insert Registros Via Thread (System.Threading)'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 145
    Width = 442
    Height = 314
    Align = alRight
    Caption = 'Dados task'
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitHeight = 362
    object DBGrid1: TDBGrid
      Left = 6
      Top = 15
      Width = 434
      Height = 297
      Align = alRight
      DataSource = dsDados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          ReadOnly = True
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 448
    Top = 145
    Width = 432
    Height = 314
    Align = alRight
    Caption = 'Dados Anonima'
    TabOrder = 2
    ExplicitHeight = 362
    object DBGrid2: TDBGrid
      Left = 14
      Top = 15
      Width = 416
      Height = 297
      Align = alRight
      DataSource = dsDados2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 880
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 463
    object lblTask: TLabel
      Left = 12
      Top = 6
      Width = 3
      Height = 13
    end
    object lblAnonima: TLabel
      Left = 480
      Top = 6
      Width = 3
      Height = 13
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 128
    Top = 248
  end
  object cdsDados: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 256
    object cdsDadosID: TIntegerField
      FieldName = 'ID'
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
  end
  object dsDados2: TDataSource
    DataSet = cdsDados2
    Left = 672
    Top = 248
  end
  object cdsDados2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 744
    Top = 240
    object cdsDados2ID: TIntegerField
      FieldName = 'ID'
    end
    object cdsDados2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
  end
end
