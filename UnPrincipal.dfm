object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela principal'
  ClientHeight = 398
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 145
    Align = alTop
    TabOrder = 0
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
      Width = 41
      Height = 23
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 24
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 464
      Top = 17
      Width = 201
      Height = 102
      Caption = 'Inserir Registros via Thread'
      DragCursor = crHandPoint
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 24
      Top = 98
      Width = 403
      Height = 21
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 688
    Height = 252
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 686
      Height = 250
      Align = alClient
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
  object cdsDados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 64
    Top = 200
    object cdsDadosID: TIntegerField
      FieldName = 'ID'
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 128
    Top = 248
  end
end
