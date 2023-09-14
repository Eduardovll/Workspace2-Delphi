unit mvcpedidos.model.entity.impl.pedido;

interface

uses
  System.SysUtils,
  mvcpedidos.model.entity.interfaces;

type
  TPedido = class(TInterfacedObject, iPedido)
	private
  FNumeroPedido: Integer;
  FDataEmissao: TDateTime;
  FCodigoCliente: Integer;
  FValorTotal: Currency;
	public
	  class function New: iPedido;
    function SetNumeroPedido(const Value: Integer): iPedido;
    function GetNumeroPedido: Integer;
    function SetDataEmissao(Value: TDateTime): iPedido;
    function GetDataEmissao: TDateTime;
    function SetCodigoCliente(const Value: Integer): iPedido;
    function GetCodigoCliente: Integer;
    function SetValorTotal(const Value: Currency): iPedido;
    function GetValorTotal: Currency;
  end;

implementation

function TPedido.GetCodigoCliente: Integer;
begin
  Result := FCodigoCliente;
end;

function TPedido.GetDataEmissao: TDateTime;
begin
  Result := FDataEmissao;
end;

function TPedido.GetNumeroPedido: Integer;
begin
  Result := FNumeroPedido;
end;

function TPedido.GetValorTotal: Currency;
begin
  Result := FValorTotal;
end;

class function TPedido.New: iPedido;
begin
  Result := Self.Create;
end;

function TPedido.SetCodigoCliente(const Value: Integer): iPedido;
begin
  Result := Self;
  FCodigoCliente := Value;
end;

function TPedido.SetDataEmissao(Value: TDateTime): iPedido;
begin
  Result := Self;
  FDataEmissao := Value;
end;

function TPedido.SetNumeroPedido(const Value: Integer): iPedido;
begin
  Result := Self;
  FNumeroPedido := Value;
end;

function TPedido.SetValorTotal(const Value: Currency): iPedido;
begin
  Result := Self;
  FValorTotal := Value;
end;

end.
