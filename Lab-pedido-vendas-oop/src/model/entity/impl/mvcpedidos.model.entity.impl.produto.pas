unit mvcpedidos.model.entity.impl.produto;

interface

uses
  mvcpedidos.model.entity.interfaces;

type
  TProduto = class(TInterfacedObject, iProduto)
	private
  FCodigo: Integer;
  FDescricao: String;
  FPrecoVenda: Currency;
	public
	  class function New: iProduto;
    function SetCodigo(const Value: Integer): iProduto;
    function GetCodigo: Integer;
    function SetDescricao(const Value: String): iProduto;
    function GetDescricao: String;
    function SetPrecoVenda(const Value: Currency): iProduto;
    function GetPrecoVenda: Currency;
  end;

implementation

function TProduto.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProduto.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TProduto.GetPrecoVenda: Currency;
begin
  Result := FPrecoVenda;
end;

class function TProduto.New: iProduto;
begin
  Result := Self.Create;
end;

function TProduto.SetCodigo(const Value: Integer): iProduto;
begin
  Result := Self;
  FCodigo := Value;
end;

function TProduto.SetDescricao(const Value: String): iProduto;
begin
  Result := Self;
  FDescricao := Value;
end;

function TProduto.SetPrecoVenda(const Value: Currency): iProduto;
begin
  Result := Self;
  FPrecoVenda := Value;
end;

end.
