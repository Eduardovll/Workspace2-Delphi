unit mvcpedidos.model.connection.interfaces;

interface

uses
  Data.DB;

type
  iConnection = interface
    function Connection: TCustomConnection;
  end;

  iQuery = interface
    procedure Query (const Statement: String; Params: Array of Variant); overload;
    function Query(const Statement: Variant; Params: Array of Variant): TDataSet; overload;
  end;

implementation

end.
