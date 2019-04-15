unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.MultiView,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts;

type
  TFMain = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    SpdBMenu: TSpeedButton;
    MVMenu: TMultiView;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    BtnLogin: TButton;
    BtnCadastro: TButton;
    BtnConsulta: TButton;
    BtnIndece: TButton;
    ImageControlMenu: TImageControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.fmx}

end.
