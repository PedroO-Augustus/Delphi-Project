object DataModule1: TDataModule1
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\pdelphi\BD\PDELPHI.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 128
    Top = 272
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM TCustomer')
    Left = 464
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 304
    Top = 272
  end
end
