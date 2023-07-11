object FormSemester: TFormSemester
  Left = 582
  Top = 103
  Width = 845
  Height = 675
  Caption = 'Form Semester'
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
    Left = 32
    Top = 24
    Width = 59
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 77
    Height = 13
    Caption = 'Nama Walikelas'
  end
  object Label4: TLabel
    Left = 32
    Top = 120
    Width = 82
    Height = 13
    Caption = 'Nama Orang Tua'
  end
  object Label5: TLabel
    Left = 32
    Top = 152
    Width = 57
    Height = 13
    Caption = 'Nama Kelas'
  end
  object Label6: TLabel
    Left = 392
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 392
    Top = 56
    Width = 44
    Height = 13
    Caption = 'Semester'
  end
  object Label8: TLabel
    Left = 392
    Top = 88
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 392
    Top = 120
    Width = 65
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object BBaru: TBitBtn
    Left = 32
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Baru'
    TabOrder = 0
    OnClick = BBaruClick
  end
  object BTambah: TBitBtn
    Left = 144
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Tambah'
    Enabled = False
    TabOrder = 1
    OnClick = BTambahClick
  end
  object BEdit: TBitBtn
    Left = 256
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Edit'
    Enabled = False
    TabOrder = 2
    OnClick = BEditClick
  end
  object BHapus: TBitBtn
    Left = 368
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Enabled = False
    TabOrder = 3
    OnClick = BHapusClick
  end
  object BCetak: TBitBtn
    Left = 480
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Cetak'
    TabOrder = 4
    OnClick = BCetakClick
  end
  object BBatal: TBitBtn
    Left = 592
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Batal'
    Enabled = False
    TabOrder = 5
    OnClick = BBatalClick
  end
  object BKeluar: TBitBtn
    Left = 704
    Top = 200
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = BKeluarClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 264
    Width = 769
    Height = 265
    DataSource = DataModule1.DSSemester
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object CmbNamaSiswa: TComboBox
    Left = 128
    Top = 24
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 8
  end
  object CmbNamaPoin: TComboBox
    Left = 128
    Top = 56
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 9
  end
  object CmbNamaWali: TComboBox
    Left = 128
    Top = 88
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 10
  end
  object CmbNamaOrtu: TComboBox
    Left = 128
    Top = 120
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 11
  end
  object CmbNamaKelas: TComboBox
    Left = 128
    Top = 152
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 12
  end
  object CmbStatus: TComboBox
    Left = 488
    Top = 88
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 13
    Text = 'Aktif'
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object CmbSemester: TComboBox
    Left = 488
    Top = 56
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 14
    Text = 'Genap'
    Items.Strings = (
      'Genap'
      'Ganjil')
  end
  object CmbTingkat: TComboBox
    Left = 488
    Top = 120
    Width = 225
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 15
    Text = 'X'
    Items.Strings = (
      'X'
      'XI'
      'XII')
  end
  object DtpTanggal: TDateTimePicker
    Left = 488
    Top = 24
    Width = 225
    Height = 21
    Date = 45118.573923032410000000
    Time = 45118.573923032410000000
    Enabled = False
    TabOrder = 16
  end
end
