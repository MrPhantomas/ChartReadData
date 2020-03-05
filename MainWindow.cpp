//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainWindow.h"
#include <fstream>
#include <list>
#include <string>
#include <sstream>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
//Procedure for close programm
void __fastcall TMainForm::btnExitClick(TObject *Sender)
{
	MainForm->Close();
}
//---------------------------------------------------------------------------
//Procedure for Open txt file
void __fastcall TMainForm::btnFindFileClick(TObject *Sender)
{
	OpenDialog1->Filter ="txt|*.txt";
	if (OpenDialog1->Execute())
	{
		lineEditFilePath->Text = OpenDialog1->FileName;
	}
}
//---------------------------------------------------------------------------
//Procedure for read txt file  an output data in a chart
void __fastcall TMainForm::btnOpenFileClick(TObject *Sender)
{
	std::ifstream fin(lineEditFilePath->Text.c_str());
	std::list<std::string> lst;
	if (fin.is_open())
	{
        Series2->Clear();
		std::string str;
		while (!fin.eof())
		{
			getline(fin,str);
			lst.push_back(str);
		}
		fin.close();
		double t,y;
		while(lst.size())
		{
			try
			{
				std::string buf;
				std::stringstream ss(lst.front());
				lst.pop_front();
				if(ss>>buf) t = std::stod(buf); else throw 0;
				if(ss>>buf) y = std::stod(buf); else throw 0;
				Series2->AddXY(t,y);
			}
			catch(...){}
        }
	}
    else ShowMessage("Ошибка! Файл не открылся!");



}
//---------------------------------------------------------------------------

