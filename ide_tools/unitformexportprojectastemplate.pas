unit unitFormExportProjectAsTemplate;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  Buttons;

type

  { TFormExportProjectAsTemplate }

  TFormExportProjectAsTemplate = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditTheme: TEdit;
    EditThemeExt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private

  public
    PathToTemplateFolder: string;
  end;

var
  FormExportProjectAsTemplate: TFormExportProjectAsTemplate;

implementation

{$R *.lfm}

{ TFormExportProjectAsTemplate }

procedure TFormExportProjectAsTemplate.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage('Warning: Make sure that the project you want to use as template works perfectly.'+  sLineBreak +
               sLineBreak + 'Warning: Project Options/SearchPaths  -Fu  will not be exported!' + sLineBreak +
               sLineBreak + 'Warning: secondary gApp.CreateForm in  ".lpr"  will not be exported** !' + sLineBreak +
               sLineBreak +'The Current Project will be saved as LAMW template/theme in the Folder:'+ SLineBreak +
               PathToTemplateFolder+ SLineBreak + 'and can be selected in the next [LAMW] "New Project" as Theme!'+

               SLineBreak +SLineBreak +'Have Fun!' + sLineBreak + sLineBreak + sLineBreak +
               sLineBreak + '** hint: If need, put all secondary gApp.CreateForm in [main form] "OnActivityCreate" event.');

end;

procedure TFormExportProjectAsTemplate.SpeedButton2Click(Sender: TObject);
begin
   ShowMessage('Please,  don''t use these characters:   "." ou " " or "-" or "_" ' +sLineBreak+
               'and, also, not valid file naming...');
end;

end.

