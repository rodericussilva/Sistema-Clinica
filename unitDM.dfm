object DM: TDM
  Height = 399
  Width = 667
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 88
  end
  object tbPacientes: TFDTable
    Active = True
    AfterInsert = tbPacientesAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.pacientes'
    Left = 208
    Top = 88
    object tbPacientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPacientescpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbPacientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientescelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) #####-####;1;_'
      Size = 16
    end
    object tbPacientesdata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
  end
  object tbAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.agendamentos'
    Left = 312
    Top = 88
  end
  object dsPacientes: TDataSource
    DataSet = tbPacientes
    Left = 200
    Top = 176
  end
  object dsAgendamentos: TDataSource
    DataSet = tbAgendamentos
    Left = 312
    Top = 176
  end
end
