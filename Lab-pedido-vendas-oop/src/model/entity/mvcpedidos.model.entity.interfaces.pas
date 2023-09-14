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

implementation

end.
