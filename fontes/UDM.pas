unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery1idUsuario: TFDAutoIncField;
    FDQuery1nome: TStringField;
    FDQuery1cpf: TStringField;
    FDQuery1telefone: TStringField;
    FDQuery1email: TStringField;
    FDQuery1senha: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  with FDConnection1 do
  begin
{$IF DEFINED(IOS) or DEFINED(ANDROID)}
    Params.Values['Database'] := GetHomePath + PathDelim + 'posto.s3db';
    Connected := True;
{$ENDIF}
{$IFDEF MSWINDOWS}
    Params.Values['Database'] :=
      'C:\Mobile\projeto posto gasolina\projeto-posto-gasolina\bd\posto.s3db';
    Connected := True;
{$ENDIF}
  end;
end;

end.
