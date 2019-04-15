object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 384
  Width = 546
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Mobile\projeto posto gasolina\projeto-posto-gasolina' +
        '\bd\posto.s3db'
      'OpenMode=ReadWrite'
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuario')
    Left = 40
    Top = 88
    object FDQuery1idUsuario: TFDAutoIncField
      FieldName = 'idUsuario'
      Origin = 'idUsuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQuery1cpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object FDQuery1telefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 13
    end
    object FDQuery1email: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 30
    end
    object FDQuery1senha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 100
    end
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 432
    Top = 24
  end
end
