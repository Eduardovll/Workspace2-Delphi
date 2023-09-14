unit mvcpedidos.model.entity.impl.entity;

interface

uses
  mvcpedidos.model.entity.interfaces;

type
  TEntity = class(TInterfacedObject, iEntity)
	private
    FCliente: iCliente;
    FProduto: iProduto;
    FPedido : iPedido;
    FPedidoItens: iPedidoItens;
	public
	  class function New: iEntity;
    function Cliente: iCliente;
    function Produto: iProduto;
    function Pedido : iPedido;
    function PedidoItens: iPedidoItens;
  end;

implementation

uses
  mvcpedidos.model.entity.impl.cliente, mvcpedidos.model.entity.impl.pedido,
  mvcpedidos.model.entity.impl.pedidoitens,
  mvcpedidos.model.entity.impl.produto;


function TEntity.Cliente: iCliente;
begin
  if not Assigned(FCliente) then
    FCliente := TCliente.New;
  Result := FCliente;
end;

class function TEntity.New: iEntity;
begin
  Result := Self.Create;
end;

function TEntity.Pedido: iPedido;
begin
  if not Assigned(FPedido) then
    FPedido := TPedido.New;
  Result := FPedido;
end;

function TEntity.PedidoItens: iPedidoItens;
begin
  if not Assigned(FPedidoItens) then
    FPedidoItens := TPedidoItens.New;
  Result := FPedidoItens
end;

function TEntity.Produto: iProduto;
begin
  if not Assigned(FProduto) then
    FProduto := TProduto.New;
  Result := FProduto;
end;

end.
