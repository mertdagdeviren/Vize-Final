unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button4: TButton;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 notu: Real;
 vize,fin : Integer;
begin
    vize:=StrToInt (Edit1.Text);

    fin:=StrToInt(Edit2.Text);

    notu:= vize*0.4+fin*0.6;

if (notu>=50) and (fin<50)  then         //and or kullan?ld?
        begin
        Label4.Caption:=('kald? notunuz:'+FloatToStr(notu)+FloatToStr(fin));

        end
        else
        begin
           Label4.Caption:=('ge?ti notunuz:'+FloatToStr(notu) +FloatToStr(fin));
        end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 notu: Real;
 vize,fin : Integer;
begin
    vize:=StrToInt (Edit1.Text);

    fin:=StrToInt(Edit2.Text);

    notu:= vize*0.4+fin*0.6;

if (notu<50) then
     begin
       Label5.Caption:=('kald? FF notunuz:'+FloatToStr(notu));
     end;
if (notu>=50) and (notu<60) then
begin
     Label5.Caption:=(' CC notunuz:'+FloatToStr(notu));
end;

if (notu>=60) and (notu<70) then
begin
     Label5.Caption:=(' BB notunuz:'+FloatToStr(notu));
end;
  if (notu>=70) and (notu<100) then
begin
     Label5.Caption:=(' AA notunuz:'+FloatToStr(notu));
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
 notu: Real;
 vize,fin : Integer;
begin
    vize:=StrToInt (Edit1.Text);

    fin:=StrToInt(Edit2.Text);

    notu:= vize*0.4+fin*0.6;

if (notu<50)and (fin<50) then begin
       Label6.Caption:=('kald? FF notunuz:'+FloatToStr(notu)+FloatToStr(fin));
end else
   if (notu<60)and (fin<50) then begin
       Label6.Caption:=('ge?ti cc notunuz:'+FloatToStr(notu)+FloatToStr(fin));
   end else

   if (notu<70)and (fin<50) then begin
       Label6.Caption:=('ge?ti bb notunuz:'+FloatToStr(notu)+FloatToStr(fin));
   end  else

   if (notu>70)and (fin<50) then begin
       Label6.Caption:=('ge?ti aa notunuz:'+FloatToStr(notu)+FloatToStr(fin));
   end

end;

procedure TForm1.Button4Click(Sender: TObject);
var
x: Integer;
begin

x:=60;
         case x of
         0..49:Label7.Caption:='FF KALDINIZ';
         50..59:Label7.Caption:='cc ';
         60..69:Label7.Caption:='bb ';
         70..180:Label7.Caption:='aa ';
         else
         ShowMessage('yanl?? no');
         end;

end;

end.
