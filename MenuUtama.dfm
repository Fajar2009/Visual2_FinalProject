object FormMainMenu: TFormMainMenu
  Left = 448
  Top = 179
  Width = 1305
  Height = 675
  Caption = 'Menu Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 104
    Top = 144
    object S1: TMenuItem
      Caption = 'Siswa'
      object DataSiswa1: TMenuItem
        Caption = 'Data Siswa'
        OnClick = DataSiswa1Click
      end
    end
    object User1: TMenuItem
      Caption = 'Ortu'
      object DataOrangTua1: TMenuItem
        Caption = 'Data Orang Tua'
        OnClick = DataOrangTua1Click
      end
    end
    object User2: TMenuItem
      Caption = 'Walikelas'
      object DataGuru1: TMenuItem
        Caption = 'Data Walikelas'
        OnClick = DataGuru1Click
      end
    end
    object Point1: TMenuItem
      Caption = 'Semester'
      object DataSemester1: TMenuItem
        Caption = 'Data Semester'
      end
    end
    object User3: TMenuItem
      Caption = 'Poin'
      object DataLaporan1: TMenuItem
        Caption = 'Data Poin'
        OnClick = DataLaporan1Click
      end
    end
    object User4: TMenuItem
      Caption = 'User'
      object DataUser1: TMenuItem
        Caption = 'Data User'
        OnClick = DataUser1Click
      end
    end
    object Kelas1: TMenuItem
      Caption = 'Kelas'
      object DataKelas1: TMenuItem
        Caption = 'Data Kelas'
        OnClick = DataKelas1Click
      end
    end
  end
end
