object FormHubungan: TFormHubungan
  Left = 381
  Top = 21
  Width = 905
  Height = 675
  Caption = 'Form Hubungan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 59
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label2: TLabel
    Left = 48
    Top = 56
    Width = 83
    Height = 13
    Caption = 'Nama Wali Siswa'
  end
  object Label3: TLabel
    Left = 48
    Top = 88
    Width = 83
    Height = 13
    Caption = 'Status Hubungan'
  end
  object Label4: TLabel
    Left = 48
    Top = 120
    Width = 55
    Height = 13
    Caption = 'Keterangan'
  end
  object Label5: TLabel
    Left = 48
    Top = 152
    Width = 54
    Height = 13
    Caption = 'Status Wali'
  end
  object BBaru: TBitBtn
    Left = 48
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Baru'
    TabOrder = 0
    OnClick = BBaruClick
  end
  object BTambah: TBitBtn
    Left = 160
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Tambah'
    Enabled = False
    TabOrder = 1
    OnClick = BTambahClick
  end
  object BEdit: TBitBtn
    Left = 272
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Edit'
    Enabled = False
    TabOrder = 2
    OnClick = BEditClick
  end
  object BHapus: TBitBtn
    Left = 384
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Enabled = False
    TabOrder = 3
    OnClick = BHapusClick
  end
  object BCetak: TBitBtn
    Left = 496
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Cetak'
    TabOrder = 4
    OnClick = BCetakClick
  end
  object BBatal: TBitBtn
    Left = 608
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Batal'
    Enabled = False
    TabOrder = 5
    OnClick = BBatalClick
  end
  object BKeluar: TBitBtn
    Left = 720
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = BKeluarClick
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 272
    Width = 761
    Height = 281
    DataSource = DataModule1.DSHub
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object CmbNamaSiswa: TComboBox
    Left = 192
    Top = 24
    Width = 297
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 8
  end
  object CmbNamaWaliSiswa: TComboBox
    Left = 192
    Top = 56
    Width = 297
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 9
  end
  object CmbStatusHub: TComboBox
    Left = 192
    Top = 88
    Width = 297
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 10
    Text = 'Kandung'
    Items.Strings = (
      'Kandung'
      'Tiri'
      'Angkat')
  end
  object CmbKet: TComboBox
    Left = 192
    Top = 120
    Width = 297
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 11
    Text = 'Ayah'
    Items.Strings = (
      'Ayah'
      'Ibu'
      'Paman'
      'Bibi'
      'Kakek'
      'Nenek'
      'Saudara')
  end
  object CmbStatusWali: TComboBox
    Left = 192
    Top = 152
    Width = 297
    Height = 21
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 12
    Text = 'Hidup'
    Items.Strings = (
      'Hidup'
      'Meninggal')
  end
end
