object DataModule_Sapatos: TDataModule_Sapatos
  OldCreateOrder = False
  Height = 358
  Width = 353
  object FDConnection_BD: TFDConnection
    Params.Strings = (
      'Database=C:\Users\karol\Desktop\Cliente\dados.sdb'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 175
    Top = 24
  end
  object Query_Sapatos: TFDQuery
    Connection = FDConnection_BD
    SQL.Strings = (
      'create table if not exists Sapatos'
      '('
      '  id_sapato int not null,'
      '  id_marca int not null,'
      '  descricao varchar (30),'
      '  preco double (10,2) not null,'
      '  tamanho int not null,'
      '  quant int not null,'
      '  cor varchar (10),'
      '  estilo varchar (20),'
      '  desconto double (10,2) not null,'
      '  faixa int not null,'
      '  primary key (id_sapato) '
      ')')
    Left = 40
    Top = 80
  end
  object Table_Sapatos: TFDTable
    Active = True
    IndexFieldNames = 'id_sapato'
    Connection = FDConnection_BD
    UpdateOptions.UpdateTableName = 'Sapatos'
    TableName = 'Sapatos'
    Left = 176
    Top = 79
    object Table_Sapatosid_sapato: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'id_sapato'
      Origin = 'id_sapato'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Table_Sapatosid_marca: TIntegerField
      DisplayLabel = 'C'#243'digo da marca'
      DisplayWidth = 14
      FieldName = 'id_marca'
      Origin = 'id_marca'
      Required = True
    end
    object Table_Sapatosdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object Table_Sapatospreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 8
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
      currency = True
    end
    object Table_Sapatostamanho: TIntegerField
      DisplayLabel = 'Tamanho'
      DisplayWidth = 8
      FieldName = 'tamanho'
      Origin = 'tamanho'
      Required = True
    end
    object Table_Sapatosquant: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'quant'
      Origin = 'quant'
      Required = True
    end
    object Table_Sapatoscor: TStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 10
      FieldName = 'cor'
      Origin = 'cor'
      Size = 10
    end
    object Table_Sapatosestilo: TStringField
      DisplayLabel = 'Estilo'
      DisplayWidth = 15
      FieldName = 'estilo'
      Origin = 'estilo'
    end
    object Table_Sapatosdesconto: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 8
      FieldName = 'desconto'
      Origin = 'desconto'
      Required = True
      currency = True
    end
    object Table_Sapatosfaixa: TIntegerField
      DisplayLabel = 'Faixa '#233'taria'
      DisplayWidth = 10
      FieldName = 'faixa'
      Origin = 'faixa'
      Required = True
    end
    object Table_Sapatosnome_marca: TStringField
      DisplayLabel = 'Nome da marca'
      FieldKind = fkLookup
      FieldName = 'nome_marca'
      LookupDataSet = Table_Marca
      LookupKeyFields = 'id_marca'
      LookupResultField = 'nome'
      KeyFields = 'id_marca'
      Size = 30
      Lookup = True
    end
  end
  object Query_Marca: TFDQuery
    Connection = FDConnection_BD
    SQL.Strings = (
      'create table if not exists Marca'
      '('
      '  id_marca int nut null,'
      '  nome varchar (20) not null,'
      '  representante varchar (20) not null,'
      '  fone_repres varchar (14) not null,'
      '  fone_emp varchar (14) not null,'
      '  primary key (id_marca)'
      ')')
    Left = 40
    Top = 136
  end
  object Table_Marca: TFDTable
    Active = True
    IndexFieldNames = 'id_marca'
    Connection = FDConnection_BD
    UpdateOptions.UpdateTableName = 'Marca'
    TableName = 'Marca'
    Left = 176
    Top = 135
    object Table_Marcaid_marca: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_marca'
      Origin = 'id_marca'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Table_Marcanome: TStringField
      DisplayLabel = 'Nome da marca'
      DisplayWidth = 20
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
    end
    object Table_Marcarepresentante: TStringField
      DisplayLabel = 'Representante'
      DisplayWidth = 20
      FieldName = 'representante'
      Origin = 'representante'
      Required = True
    end
    object Table_Marcafone_repres: TStringField
      DisplayLabel = 'Contato repr.'
      DisplayWidth = 15
      FieldName = 'fone_repres'
      Origin = 'fone_repres'
      Required = True
      EditMask = '(00)A0000-0000;1;_'
      Size = 14
    end
    object Table_Marcafone_emp: TStringField
      DisplayLabel = 'Contato marca'
      DisplayWidth = 15
      FieldName = 'fone_emp'
      Origin = 'fone_emp'
      Required = True
      EditMask = '(00)A0000-0000;1;_'
      Size = 14
    end
  end
  object Query_Funcionario: TFDQuery
    Connection = FDConnection_BD
    SQL.Strings = (
      'create table if not exists Funcionarios'
      '('
      '  id_funcionario int not null,'
      '  nome varchar (30) not null,'
      '  data_nascimento varchar (10) not null,'
      '  telefone varchar (14) not null,'
      '  endreco varchar (50) not null,'
      '  estado_civil varchar (8),'
      '  primary key (id_funcionario)'
      ')')
    Left = 39
    Top = 192
  end
  object Table_Funcionario: TFDTable
    Active = True
    IndexFieldNames = 'id_funcionario'
    Connection = FDConnection_BD
    UpdateOptions.UpdateTableName = 'Funcionarios'
    TableName = 'Funcionarios'
    Left = 176
    Top = 192
    object Table_Funcionarioid_funcionario: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Table_Funcionarionome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object Table_Funcionariodata_nascimento: TStringField
      DisplayLabel = 'Data de nascimento'
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      Required = True
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object Table_Funcionariotelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      EditMask = '(00)A0000-0000;1;_'
      Size = 14
    end
    object Table_Funcionarioendreco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endreco'
      Origin = 'endreco'
      Required = True
      Size = 50
    end
    object Table_Funcionarioestado_civil: TStringField
      DisplayLabel = 'Estado c'#237'vil'
      FieldName = 'estado_civil'
      Origin = 'estado_civil'
      Size = 8
    end
  end
  object Query_Venda: TFDQuery
    Connection = FDConnection_BD
    SQL.Strings = (
      'create table if not exists Venda'
      '('
      '  id_venda int not null,'
      '  id_produto int not null,'
      '  id_marca int not null,'
      '  id_funcionario int not null,'
      '  data_venda varchar (10) not null,'
      '  quantidade int not null,'
      '  valor_unitario double (10,2) not null,'
      '  desconto double (10,2) not null,'
      '  forma_pagamento varchar (15),'
      '  status varchar (15),'
      '  primary key (id_venda)'
      ')')
    Left = 38
    Top = 248
  end
  object Table_Venda: TFDTable
    Active = True
    IndexFieldNames = 'id_venda'
    Connection = FDConnection_BD
    UpdateOptions.UpdateTableName = 'Venda'
    TableName = 'Venda'
    Left = 175
    Top = 248
    object Table_Vendaid_venda: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Table_Vendaid_produto: TIntegerField
      DisplayLabel = 'C'#243'digo Prod.'
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
    end
    object Table_Vendaid_marca: TIntegerField
      DisplayLabel = 'C'#243'digo marca'
      FieldName = 'id_marca'
      Origin = 'id_marca'
      Required = True
    end
    object Table_Vendaid_funcionario: TIntegerField
      DisplayLabel = 'C'#243'digo Func.'
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      Required = True
    end
    object Table_Vendadata_venda: TStringField
      DisplayLabel = 'Data de venda'
      FieldName = 'data_venda'
      Origin = 'data_venda'
      Required = True
      EditMask = '00/00/0000;1;_'
      Size = 10
    end
    object Table_Vendaquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object Table_Vendavalor_unitario: TFloatField
      DisplayLabel = 'Valor unit'#225'rio'
      FieldName = 'valor_unitario'
      Origin = 'valor_unitario'
      Required = True
      currency = True
    end
    object Table_Vendadesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      Origin = 'desconto'
      Required = True
      currency = True
    end
    object Table_Vendaforma_pagamento: TStringField
      DisplayLabel = 'Forma de pagamento'
      FieldName = 'forma_pagamento'
      Origin = 'forma_pagamento'
      Size = 15
    end
    object Table_Vendastatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Origin = 'status'
      Size = 15
    end
    object Table_Vendanome_produto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'nome_produto'
      LookupDataSet = Table_Sapatos
      LookupKeyFields = 'id_sapato'
      LookupResultField = 'descricao'
      KeyFields = 'id_produto'
      Size = 30
      Lookup = True
    end
    object Table_Vendanome_marca: TStringField
      DisplayLabel = 'Nome da marca'
      FieldKind = fkLookup
      FieldName = 'nome_marca'
      LookupDataSet = Table_Marca
      LookupKeyFields = 'id_marca'
      LookupResultField = 'nome'
      KeyFields = 'id_marca'
      Lookup = True
    end
    object Table_Vendanome_funcionario: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldKind = fkLookup
      FieldName = 'nome_funcionario'
      LookupDataSet = Table_Funcionario
      LookupKeyFields = 'id_funcionario'
      LookupResultField = 'nome'
      KeyFields = 'id_funcionario'
      Size = 30
      Lookup = True
    end
  end
end
