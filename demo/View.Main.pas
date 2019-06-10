unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  GpSQLBuilder;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
 SQL : IGpSQLBuilder;
begin
  SQL := CreateGpSQLBuilder.Select('CAMPORETORNO').From('TABELA').Where(['CAMPOCHAVE', '>= 0'])
      .&And(['CAMPOCHAVE', '= 0']);
  MEMO1.Lines.Text :=  SQL.AsString;
end;

end.
