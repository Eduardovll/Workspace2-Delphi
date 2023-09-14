program MVC_PEDIDOS;

uses
  Vcl.Forms,
  mvcpedidos.view.principal in 'mvcpedidos.view.principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
