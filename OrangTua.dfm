object FormOrtu: TFormOrtu
  Left = 203
  Top = 130
  Width = 1305
  Height = 591
  Caption = 'Form Orang tua'
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
  object Label3: TLabel
    Left = 40
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 40
    Top = 16
    Width = 18
    Height = 13
    Caption = 'NIK'
  end
  object Label1: TLabel
    Left = 40
    Top = 80
    Width = 53
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label2: TLabel
    Left = 40
    Top = 112
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object Label5: TLabel
    Left = 480
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Alamat'
  end
  object Label6: TLabel
    Left = 480
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Telpon'
  end
  object Label7: TLabel
    Left = 480
    Top = 80
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object Label8: TLabel
    Left = 480
    Top = 112
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 40
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 264
    Width = 1105
    Height = 209
    DataSource = DataModule1.DSOrtu
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object BBaru: TBitBtn
    Left = 40
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Baru'
    TabOrder = 1
    OnClick = BBaruClick
  end
  object BTambah: TBitBtn
    Left = 136
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Tambah'
    Enabled = False
    TabOrder = 2
    OnClick = BTambahClick
  end
  object BEdit: TBitBtn
    Left = 232
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Edit'
    Enabled = False
    TabOrder = 3
    OnClick = BEditClick
  end
  object BHapus: TBitBtn
    Left = 328
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Enabled = False
    TabOrder = 4
    OnClick = BHapusClick
  end
  object BCetak: TBitBtn
    Left = 424
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Cetak'
    TabOrder = 5
    OnClick = BCetakClick
  end
  object BBatal: TBitBtn
    Left = 520
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Batal'
    Enabled = False
    TabOrder = 6
    OnClick = BBatalClick
  end
  object BKeluar: TBitBtn
    Left = 616
    Top = 208
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 7
    OnClick = BKeluarClick
  end
  object ENama: TEdit
    Left = 136
    Top = 48
    Width = 281
    Height = 21
    TabOrder = 8
  end
  object ENik: TEdit
    Left = 136
    Top = 16
    Width = 281
    Height = 21
    TabOrder = 9
  end
  object EPendidikan: TEdit
    Left = 136
    Top = 80
    Width = 281
    Height = 21
    TabOrder = 10
  end
  object EPekerjaan: TEdit
    Left = 136
    Top = 112
    Width = 281
    Height = 21
    TabOrder = 11
  end
  object EAlamat: TEdit
    Left = 576
    Top = 16
    Width = 281
    Height = 21
    TabOrder = 12
  end
  object ETelp: TEdit
    Left = 576
    Top = 48
    Width = 281
    Height = 21
    TabOrder = 13
  end
  object CmbJK: TComboBox
    Left = 136
    Top = 144
    Width = 281
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'Laki-laki'
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object CmbStatus: TComboBox
    Left = 576
    Top = 112
    Width = 281
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 15
    Text = 'Aktif'
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object CmbAgama: TComboBox
    Left = 576
    Top = 80
    Width = 281
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 16
    Text = 'Islam'
    Items.Strings = (
      'Islam'
      'Kristen'
      'Budha')
  end
end
