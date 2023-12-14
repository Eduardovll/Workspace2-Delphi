unit mvcpedidos.model.connection.impl.firedac;

interface

uses
  System.SysUtils,
  Data.DB,                      //Dependecias utiliza��o FireDac
  Datasnap.DBClient,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, //Fim Dependecias
  mvcpedidos.model.connection.interfaces;

type
  TConnectionFiredac = class(TInterfacedObject, iConnection)
	private
    FConn: TFDConnection;

    constructor Create;
    destructor Destroy; override;
	public
	  class function New: iConnection;
    function Connection: TCustomConnection;
  end;

implementation

{ TMyClass }

function TConnectionFiredac.Connection: TCustomConnection;
begin
  Result := FConn;
end;

constructor TConnectionFiredac.Create;
begin
  FConn:= TFDConnection.Create(nil);
  try

  except
    raise Exception.Create('Erro ao tentar se conectar a base de dados!');
  end;
end;

destructor TConnectionFiredac.Destroy;
begin
  FConn.Free;
  inherited;
end;

class function TConnectionFiredac.New: iConnection;
begin
  Result := Self.Create;
end;

end.
