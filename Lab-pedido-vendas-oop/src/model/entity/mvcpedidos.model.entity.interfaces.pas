unit mvcpedidos.model.entity.interfaces;

interface

type
  iCliente = interface
    function SetCodigo(const Value: Integer): iCliente;
    function GetCodigo: Integer;
    function SetNome(const Value: String): iCliente;
    function GetNome: String;
    function SetCidade(const Value: String): iCliente;
    function GetCidade: String;
    function SetEstado(const Value: String): iCliente;
    function GetEstado: String;
  end;

  iProduto = interface
    function SetCodigo(const Value: Integer): iProduto;
    function GetCodigo: Integer;
    function SetDescricao(const Value: String): iProduto;
    function GetDescricao: String;
    function SetPrecoVenda(const Value: Currency): iProduto;
    function GetPrecoVenda: Currency;
  end;

  iPedido = interface
    function SetNumeroPedido(const Value: Integer): iPedido;
    function GetNumeroPedido: Integer;
    function SetDataEmissao(Value: TDateTime): iPedido;
    function GetDataEmissao: TDateTime;
    function SetCodigoCliente(const Value: Integer): iPedido;
    function GetCodigoCliente: Integer;
    function SetValorTotal(const Value: Currency): iPedido;
    function GetValorTotal: Currency;
  end;

  iPedidoItens = interface
    function SetId(const Value: Integer): iPedidoItens;
    function GetId: Integer;
    function SetNumeroPedido(const Value: Integer): iPedidoItens;
    function GetNumeroPedido: Integer;
    function SetCodigoProduto(const Value: Integer): iPedidoItens;
    function GetCodigoProduto: Integer;
    function SetQuantidade(const Value: Integer): iPedidoItens;
    function GetQuantidade: Integer;
    function SetValorUnitario(const Value: Currency): iPedidoItens;
    function GetValorUnitario: Currency;
    function SetValorTotal(const Value: Currency): iPedidoItens;
    function GetValorTotal: Currency;
  end;

implementation

end.
