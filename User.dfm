object FormUser: TFormUser
  Left = 290
  Top = 56
  Width = 831
  Height = 622
  Caption = 'Form User'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 26
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 32
    Top = 128
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 272
    Width = 681
    Height = 193
    DataSource = DataModule1.DSUser
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object BBaru: TBitBtn
    Left = 32
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Baru'
    TabOrder = 1
    OnClick = BBaruClick
  end
  object BTambah: TBitBtn
    Left = 128
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Tambah'
    Enabled = False
    TabOrder = 2
    OnClick = BTambahClick
  end
  object BEdit: TBitBtn
    Left = 224
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Edit'
    Enabled = False
    TabOrder = 3
    OnClick = BEditClick
  end
  object BHapus: TBitBtn
    Left = 320
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Enabled = False
    TabOrder = 4
    OnClick = BHapusClick
  end
  object BCetak: TBitBtn
    Left = 416
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Cetak'
    TabOrder = 5
    OnClick = BCetakClick
  end
  object BBatal: TBitBtn
    Left = 512
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Batal'
    Enabled = False
    TabOrder = 6
    OnClick = BBatalClick
  end
  object BKeluar: TBitBtn
    Left = 608
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 7
    OnClick = BKeluarClick
  end
  object EUsername: TEdit
    Left = 104
    Top = 32
    Width = 289
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object EPass: TEdit
    Left = 104
    Top = 64
    Width = 289
    Height = 21
    Enabled = False
    PasswordChar = '*'
    TabOrder = 9
  end
  object CmbLevel: TComboBox
    Left = 104
    Top = 96
    Width = 289
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 10
    Text = 'Admin'
    Items.Strings = (
      'Admin'
      'Guru'
      'Walikelas')
  end
  object CmbStatus: TComboBox
    Left = 104
    Top = 128
    Width = 289
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 11
    Text = 'Aktif'
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
end
