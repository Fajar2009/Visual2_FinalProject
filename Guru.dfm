object FormGuru: TFormGuru
  Left = 191
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form Walikelas'
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
    Left = 64
    Top = 32
    Width = 18
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 64
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 64
    Top = 96
    Width = 63
    Height = 13
    Caption = 'Jenis kelamin'
  end
  object Label4: TLabel
    Left = 64
    Top = 128
    Width = 32
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 496
    Top = 32
    Width = 53
    Height = 13
    Caption = 'No. Telpon'
  end
  object Label6: TLabel
    Left = 496
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label7: TLabel
    Left = 496
    Top = 96
    Width = 53
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label8: TLabel
    Left = 496
    Top = 128
    Width = 71
    Height = 13
    Caption = 'Mata Pelajaran'
  end
  object BBaru: TBitBtn
    Left = 40
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Baru'
    TabOrder = 0
    OnClick = BBaruClick
  end
  object BTambah: TBitBtn
    Left = 136
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Tambah'
    Enabled = False
    TabOrder = 1
    OnClick = BTambahClick
  end
  object BEdit: TBitBtn
    Left = 232
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Edit'
    Enabled = False
    TabOrder = 2
    OnClick = BEditClick
  end
  object BHapus: TBitBtn
    Left = 328
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Enabled = False
    TabOrder = 3
    OnClick = BHapusClick
  end
  object BCetak: TBitBtn
    Left = 424
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Cetak'
    TabOrder = 4
    OnClick = BCetakClick
  end
  object BBatal: TBitBtn
    Left = 520
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Batal'
    Enabled = False
    TabOrder = 5
    OnClick = BBatalClick
  end
  object BKeluar: TBitBtn
    Left = 616
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = BKeluarClick
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 248
    Width = 1177
    Height = 297
    DataSource = DataModule1.DSWalikelas
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ENik: TEdit
    Left = 152
    Top = 32
    Width = 265
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object ENama: TEdit
    Left = 152
    Top = 64
    Width = 265
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object EAlamat: TEdit
    Left = 152
    Top = 128
    Width = 265
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object CmbJk: TComboBox
    Left = 152
    Top = 96
    Width = 265
    Height = 21
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 11
    Text = 'Laki-Laki'
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object ETelp: TEdit
    Left = 584
    Top = 32
    Width = 265
    Height = 21
    Enabled = False
    TabOrder = 12
  end
  object EPendidikan: TEdit
    Left = 584
    Top = 96
    Width = 265
    Height = 21
    Enabled = False
    TabOrder = 13
  end
  object EMatpel: TEdit
    Left = 584
    Top = 128
    Width = 265
    Height = 21
    Enabled = False
    TabOrder = 14
  end
  object CmbStatus: TComboBox
    Left = 584
    Top = 64
    Width = 265
    Height = 21
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 15
    Text = 'Aktif'
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
end
