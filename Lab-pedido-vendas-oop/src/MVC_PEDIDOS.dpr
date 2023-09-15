program MVC_PEDIDOS;

uses
  Vcl.Forms,
  mvcpedidos.view.principal in 'view\mvcpedidos.view.principal.pas' {Form1},
  mvcpedidos.model.entity.interfaces in 'model\entity\mvcpedidos.model.entity.interfaces.pas',
  mvcpedidos.model.entity.impl.cliente in 'model\entity\impl\mvcpedidos.model.entity.impl.cliente.pas',
  mvcpedidos.model.entity.impl.produto in 'model\entity\impl\mvcpedidos.model.entity.impl.produto.pas',
  mvcpedidos.model.entity.impl.pedido in 'model\entity\impl\mvcpedidos.model.entity.impl.pedido.pas',
  mvcpedidos.model.entity.impl.pedidoitens in 'model\entity\impl\mvcpedidos.model.entity.impl.pedidoitens.pas',
  mvcpedidos.model.entity.impl.entity in 'model\entity\impl\mvcpedidos.model.entity.impl.entity.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
