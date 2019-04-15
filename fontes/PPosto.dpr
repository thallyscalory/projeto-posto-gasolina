program PPosto;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'UMain.pas' {FMain},
  UDM in 'UDM.pas' {DataModule1: TDataModule},
  UUsuario in 'UUsuario.pas' {FUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFUsuario, FUsuario);
  Application.Run;
end.
