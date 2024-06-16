unit FormCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    lblIgual: TLabel;
    lblResultado: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);


  private
    { Private declarations }

    function somar(valor1, valor2 : Float32): Float32;
    function subtrair(valor1, valor2 : Float32) : Float32;
    function multiplicar(valor1, valor2: float32): Float32;
    function dividir(valor1, valor2: float32): Float32;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

    procedure TForm1.btnDividirClick(Sender: TObject);
    var
      resultado : Float32;
  begin
       resultado := dividir(StrToFloatDef(edtValor1.text,0),StrToFloatDef(edtValor2.Text,0));
       lblResultado.Caption := resultado.ToString ;
  end;

  procedure TForm1.btnMultiplicarClick(Sender: TObject);
    var
      resultado: Float32;
  begin
        resultado := multiplicar(StrToFloatDef(edtValor1.Text, 0), StrToFloatDef(edtValor2.Text,0));
        lblResultado.Caption := resultado.ToString ;
  end;

  procedure TForm1.btnSomarClick(Sender: TObject);
    var
      resultado: Float32;
  begin
   resultado := somar(StrToFloatDef(edtValor1.Text, 0), StrToFloatDef(edtValor2.Text, 0));
    lblResultado.Caption := resultado.ToString	;
  end;


  procedure TForm1.btnSubtrairClick(Sender: TObject);
  var
    resultado: float32;
  begin
       resultado:= subtrair(StrToFloatDef(edtValor1.Text, 0), StrToFloatDef(edtValor2.Text, 0));
       lblResultado.Caption := resultado.ToString;
  end;



//Fun��es

//Somar
  function TForm1.somar(valor1: Float32; valor2: Float32): Float32;
      begin
        result :=  valor1 + valor2;
      end;

  //Subtrair
  function TForm1.subtrair(valor1, valor2: Float32): Float32;
    begin
       result:= valor1 - valor2;
    end;

    //Multiplicar
  function TForm1.multiplicar(valor1, valor2: float32): Float32;
  begin
       result:= valor1 * valor2;
  end;

  //dividir
  function TForm1.dividir(valor1, valor2: float32): Float32;
  begin
       Result := valor1 / valor2;
  end;

end.


