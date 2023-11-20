unit UnitCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TformCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txtId: TDBEdit;
    txtCpf: TDBEdit;
    txtNome: TDBEdit;
    txtCelular: TDBEdit;
    txtData: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    label5: TLabel;
    Grid: TDBGrid;
    DBNavigator1: TDBNavigator;
    txtBusca: TEdit;
    Label6: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPacientes: TformCadPacientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadPacientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then Close;
end;

procedure TformCadPacientes.txtBuscaChange(Sender: TObject);
begin
  DM.tbPacientes.Locate('nome', txtBusca.Text, [loPartialKey]);
end;

end.
