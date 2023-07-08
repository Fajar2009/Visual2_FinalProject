object FormGuru: TFormGuru
  Left = 191
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form Guru'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BBaru: TBitBtn
    Left = 40
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Baru'
    TabOrder = 0
  end
  object BTambah: TBitBtn
    Left = 136
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Tambah'
    Enabled = False
    TabOrder = 1
  end
  object BEdit: TBitBtn
    Left = 232
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Edit'
    Enabled = False
    TabOrder = 2
  end
  object BHapus: TBitBtn
    Left = 328
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Hapus'
    Enabled = False
    TabOrder = 3
  end
  object BCetak: TBitBtn
    Left = 424
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Cetak'
    TabOrder = 4
  end
  object BBatal: TBitBtn
    Left = 520
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Batal'
    Enabled = False
    TabOrder = 5
  end
  object BKeluar: TBitBtn
    Left = 616
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 248
    Width = 320
    Height = 120
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
