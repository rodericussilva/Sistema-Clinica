object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 474
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object Label2: TLabel
    Left = 16
    Top = 203
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 16
    Top = 259
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label4: TLabel
    Left = 144
    Top = 203
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object label5: TLabel
    Left = 19
    Top = 315
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object TLabel
    Left = 168
    Top = 315
    Width = 91
    Height = 15
    Caption = 'Data do Cadastro'
  end
  object Label6: TLabel
    Left = 364
    Top = 120
    Width = 97
    Height = 15
    Caption = 'Buscar pelo Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 27
      Width = 240
      Height = 32
      Caption = 'Cadasto de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object txtId: TDBEdit
    Left = 16
    Top = 224
    Width = 89
    Height = 23
    DataField = 'id'
    DataSource = DM.dsPacientes
    TabOrder = 1
  end
  object txtCpf: TDBEdit
    Left = 144
    Top = 224
    Width = 179
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsPacientes
    MaxLength = 14
    TabOrder = 2
  end
  object txtNome: TDBEdit
    Left = 16
    Top = 280
    Width = 313
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsPacientes
    TabOrder = 3
  end
  object txtCelular: TDBEdit
    Left = 19
    Top = 336
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsPacientes
    MaxLength = 15
    TabOrder = 4
  end
  object txtData: TDBEdit
    Left = 168
    Top = 336
    Width = 161
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.dsPacientes
    ReadOnly = True
    TabOrder = 5
  end
  object Grid: TDBGrid
    Left = 364
    Top = 170
    Width = 264
    Height = 289
    DataSource = DM.dsPacientes
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome Cadastrado'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 19
    Top = 128
    Width = 310
    Height = 49
    DataSource = DM.dsPacientes
    TabOrder = 7
  end
  object txtBusca: TEdit
    Left = 364
    Top = 141
    Width = 264
    Height = 23
    TabOrder = 8
    OnChange = txtBuscaChange
  end
end
