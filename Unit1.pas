unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, ExtCtrls, Buttons, ToolWin;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    StatusBar1: TStatusBar;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    Bevel1: TBevel;
    Timer1: TTimer;
    procedure N6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.N6Click(Sender: TObject);
begin
  Application.Terminate;     //Завершение работы приложения
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then   //Если компонент OpenDialog1 запущен то
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);   //В строки поля Memo1 загрузить из файла
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  MessageBeep (MB_OK);
  Form2.ShowModal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 with StatusBar1 do
 begin
  Panels[0].Text := 'Дата: ' + DateToStr(Now);
  Panels[1].Text := 'Время: ' + TimeToStr(Now);
 end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

end.
