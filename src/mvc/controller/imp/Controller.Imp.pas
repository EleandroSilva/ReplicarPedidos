{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Controller.Imp;

interface

uses
  Controller.Interfaces,
  Model.Factory.DAO.Interfaces;

type
  TController = class(TInterfacedObject, iController)
    private
      FFactoryDAO : iFactoryDAO;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;

      function FactoryDAO : iFactoryDAO;
  end;

implementation

uses
  Model.Factory.DAO.Imp;

{ TConroller }

constructor TController.Create;
begin
  //
end;

destructor TController.Destroy;
begin
  inherited;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.FactoryDAO: iFactoryDAO;
begin
  if not Assigned(FFactoryDAO) then
    FFactoryDAO := TFactoryDAO.New;

  Result := FFactoryDAO;
end;



end.
