
package dev.izqalan.ukmofferjflex;
%%

%class OfferLetter
%standalone

Name = ("NAMA :").*
Faculty = ("FAKULTI :").*
Program = ("PROGRAM PENGAJIAN :").*
Session = ("SESI AKADEMIK " [0-9]*\/[0-9]*)
TuitionFee = ("YURAN KEMASUKAN :").*
RegistrationDate = ("TARIKH PENDAFTARAN :").*
%%

{Name} { System.out.printf("%s\n", yytext()); }
{Faculty} { System.out.printf("%s\n", yytext()); }
{Program} { System.out.printf("%s\n", yytext()); }
{Session} { System.out.printf("%s\n", yytext()); }
{TuitionFee} { System.out.printf("%s\n", yytext()); }
{RegistrationDate} { System.out.printf("%s\n", yytext()); }
[ \t\n\r]+     { /* do nnothing */ }
.              { /* do nothing */ }