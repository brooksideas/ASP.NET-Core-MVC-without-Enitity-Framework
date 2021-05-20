âd
ÖC:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Controllers\BookController.cs
	namespace		 	
MVCCRUDwithoutEF		
 
.		 
Controllers		 &
{

 
public 

class 
BookController 
:  !

Controller" ,
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
BookController 
( 
IConfiguration ,
configuration- :
): ;
{ 	
this 
. 
_configuration 
=  !
configuration" /
;/ 0
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
	DataTable 
dtbl 
= 
new  
	DataTable! *
(* +
)+ ,
;, -
using 
( 
SqlConnection  
sqlConnection! .
=/ 0
new1 4
SqlConnection5 B
(B C
_configurationC Q
.Q R
GetConnectionStringR e
(e f
$strf u
)u v
)v w
)w x
{ 
sqlConnection 
. 
Open "
(" #
)# $
;$ %
SqlDataAdapter 
sqlDa $
=% &
new' *
SqlDataAdapter+ 9
(9 :
$str: G
,G H
sqlConnectionI V
)V W
;W X
sqlDa 
. 
SelectCommand #
.# $
CommandType$ /
=0 1
CommandType2 =
.= >
StoredProcedure> M
;M N
sqlDa 
. 
Fill 
( 
dtbl 
)  
;  !
} 
Console   
.   
	WriteLine   
(   
$str   8
)  8 9
;  9 :
return!! 
View!! 
(!! 
dtbl!! 
)!! 
;!! 
}"" 	
public'' 
IActionResult'' 
Search'' #
(''# $
IFormCollection''$ 3
formCollection''4 B
)''B C
{(( 	
	DataTable)) 
dtbl)) 
=)) 
new))  
	DataTable))! *
())* +
)))+ ,
;)), -
using** 
(** 
SqlConnection**  
sqlConnection**! .
=**/ 0
new**1 4
SqlConnection**5 B
(**B C
_configuration**C Q
.**Q R
GetConnectionString**R e
(**e f
$str**f u
)**u v
)**v w
)**w x
{++ 
sqlConnection,, 
.,, 
Open,, "
(,," #
),,# $
;,,$ %
string-- 
query-- 
=-- 
$"-- !
$str--! B
"--B C
+--C D
formCollection--E S
[--S T
$str--T _
]--_ `
+--a b
$str--c f
;--f g
SqlDataAdapter.. 
cmd.. "
=..# $
new..% (
SqlDataAdapter..) 7
(..7 8
query..8 =
,..= >
sqlConnection..? L
)..L M
;..M N
cmd// 
.// 
SelectCommand// !
.//! "
CommandType//" -
=//. /
CommandType//0 ;
.//; <
Text//< @
;//@ A
cmd00 
.00 
Fill00 
(00 
dtbl00 
)00 
;00 
}11 
return22 
View22 
(22 
dtbl22 
)22 
;22 
}33 	
public66 
IActionResult66 
	AddOrEdit66 &
(66& '
int66' *
?66* +
id66, .
)66. /
{77 	
BookViewModel88 
bookViewModel88 '
=88( )
new88* -
BookViewModel88. ;
(88; <
)88< =
;88= >
if99 
(99 
id99 
>99 
$num99 
)99 
bookViewModel:: 
=:: 
FetchBookByID::  -
(::- .
id::. 0
)::0 1
;::1 2
return;; 
View;; 
(;; 
bookViewModel;; %
);;% &
;;;& '
}<< 	
[AA 	
HttpPostAA	 
]AA 
[BB 	$
ValidateAntiForgeryTokenBB	 !
]BB! "
publicCC 
IActionResultCC 
	AddOrEditCC &
(CC& '
intCC' *
idCC+ -
,CC- .
[CC/ 0
BindCC0 4
(CC4 5
$strCC5 P
)CCP Q
]CCQ R
BookViewModelCCS `
bookViewModelCCa n
)CCn o
{DD 	
ifEE 
(EE 

ModelStateEE 
.EE 
IsValidEE "
)EE" #
{FF 
usingGG 
(GG 
SqlConnectionGG $
sqlConnectionGG% 2
=GG3 4
newGG5 8
SqlConnectionGG9 F
(GGF G
_configurationGGG U
.GGU V
GetConnectionStringGGV i
(GGi j
$strGGj y
)GGy z
)GGz {
)GG{ |
{HH 
sqlConnectionII !
.II! "
OpenII" &
(II& '
)II' (
;II( )

SqlCommandJJ 
sqlCmdJJ %
=JJ& '
newJJ( +

SqlCommandJJ, 6
(JJ6 7
$strJJ7 F
,JJF G
sqlConnectionJJH U
)JJU V
;JJV W
sqlCmdKK 
.KK 
CommandTypeKK &
=KK' (
CommandTypeKK) 4
.KK4 5
StoredProcedureKK5 D
;KKD E
sqlCmdLL 
.LL 

ParametersLL %
.LL% &
AddWithValueLL& 2
(LL2 3
$strLL3 ;
,LL; <
bookViewModelLL= J
.LLJ K
BookIDLLK Q
)LLQ R
;LLR S
sqlCmdMM 
.MM 

ParametersMM %
.MM% &
AddWithValueMM& 2
(MM2 3
$strMM3 :
,MM: ;
bookViewModelMM< I
.MMI J
TitleMMJ O
)MMO P
;MMP Q
sqlCmdNN 
.NN 

ParametersNN %
.NN% &
AddWithValueNN& 2
(NN2 3
$strNN3 ;
,NN; <
bookViewModelNN= J
.NNJ K
AuthorNNK Q
)NNQ R
;NNR S
sqlCmdOO 
.OO 

ParametersOO %
.OO% &
AddWithValueOO& 2
(OO2 3
$strOO3 :
,OO: ;
bookViewModelOO< I
.OOI J
PriceOOJ O
)OOO P
;OOP Q
sqlCmdPP 
.PP 
ExecuteNonQueryPP *
(PP* +
)PP+ ,
;PP, -
}QQ 
returnRR 
RedirectToActionRR '
(RR' (
nameofRR( .
(RR. /
IndexRR/ 4
)RR4 5
)RR5 6
;RR6 7
}SS 
returnTT 
ViewTT 
(TT 
bookViewModelTT %
)TT% &
;TT& '
}UU 	
publicXX 
IActionResultXX 
DeleteXX #
(XX# $
intXX$ '
?XX' (
idXX) +
)XX+ ,
{YY 	
BookViewModelZZ 
bookViewModelZZ '
=ZZ( )
FetchBookByIDZZ* 7
(ZZ7 8
idZZ8 :
)ZZ: ;
;ZZ; <
return[[ 
View[[ 
([[ 
bookViewModel[[ %
)[[% &
;[[& '
}\\ 	
[__ 	
HttpPost__	 
,__ 

ActionName__ 
(__ 
$str__ &
)__& '
]__' (
[`` 	$
ValidateAntiForgeryToken``	 !
]``! "
publicaa 
IActionResultaa 
DeleteConfirmedaa ,
(aa, -
intaa- 0
idaa1 3
)aa3 4
{bb 	
usingcc 
(cc 
SqlConnectioncc  
sqlConnectioncc! .
=cc/ 0
newcc1 4
SqlConnectioncc5 B
(ccB C
_configurationccC Q
.ccQ R
GetConnectionStringccR e
(cce f
$strccf u
)ccu v
)ccv w
)ccw x
{dd 
sqlConnectionee 
.ee 
Openee "
(ee" #
)ee# $
;ee$ %

SqlCommandff 
sqlCmdff !
=ff" #
newff$ '

SqlCommandff( 2
(ff2 3
$strff3 C
,ffC D
sqlConnectionffE R
)ffR S
;ffS T
sqlCmdgg 
.gg 
CommandTypegg "
=gg# $
CommandTypegg% 0
.gg0 1
StoredProceduregg1 @
;gg@ A
sqlCmdhh 
.hh 

Parametershh !
.hh! "
AddWithValuehh" .
(hh. /
$strhh/ 7
,hh7 8
idhh9 ;
)hh; <
;hh< =
sqlCmdii 
.ii 
ExecuteNonQueryii &
(ii& '
)ii' (
;ii( )
}jj 
returnkk 
RedirectToActionkk #
(kk# $
nameofkk$ *
(kk* +
Indexkk+ 0
)kk0 1
)kk1 2
;kk2 3
}ll 	
[nn 	
	NonActionnn	 
]nn 
publicoo 
BookViewModeloo 
FetchBookByIDoo *
(oo* +
intoo+ .
?oo. /
idoo0 2
)oo2 3
{pp 	
BookViewModelqq 
bookViewModelqq '
=qq( )
newqq* -
BookViewModelqq. ;
(qq; <
)qq< =
;qq= >
usingrr 
(rr 
SqlConnectionrr  
sqlConnectionrr! .
=rr/ 0
newrr1 4
SqlConnectionrr5 B
(rrB C
_configurationrrC Q
.rrQ R
GetConnectionStringrrR e
(rre f
$strrrf u
)rru v
)rrv w
)rrw x
{ss 
	DataTablett 
dtbltt 
=tt  
newtt! $
	DataTablett% .
(tt. /
)tt/ 0
;tt0 1
sqlConnectionuu 
.uu 
Openuu "
(uu" #
)uu# $
;uu$ %
SqlDataAdaptervv 
sqlDavv $
=vv% &
newvv' *
SqlDataAdaptervv+ 9
(vv9 :
$strvv: H
,vvH I
sqlConnectionvvJ W
)vvW X
;vvX Y
sqlDaww 
.ww 
SelectCommandww #
.ww# $
CommandTypeww$ /
=ww0 1
CommandTypeww2 =
.ww= >
StoredProcedureww> M
;wwM N
sqlDaxx 
.xx 
SelectCommandxx #
.xx# $

Parametersxx$ .
.xx. /
AddWithValuexx/ ;
(xx; <
$strxx< D
,xxD E
idxxF H
)xxH I
;xxI J
sqlDayy 
.yy 
Fillyy 
(yy 
dtblyy 
)yy  
;yy  !
ifzz 
(zz 
dtblzz 
.zz 
Rowszz 
.zz 
Countzz #
==zz$ &
$numzz' (
)zz( )
{{{ 
bookViewModel|| !
.||! "
BookID||" (
=||) *
Convert||+ 2
.||2 3
ToInt32||3 :
(||: ;
dtbl||; ?
.||? @
Rows||@ D
[||D E
$num||E F
]||F G
[||G H
$str||H P
]||P Q
.||Q R
ToString||R Z
(||Z [
)||[ \
)||\ ]
;||] ^
bookViewModel}} !
.}}! "
Title}}" '
=}}( )
dtbl}}* .
.}}. /
Rows}}/ 3
[}}3 4
$num}}4 5
]}}5 6
[}}6 7
$str}}7 >
]}}> ?
.}}? @
ToString}}@ H
(}}H I
)}}I J
;}}J K
bookViewModel~~ !
.~~! "
Author~~" (
=~~) *
dtbl~~+ /
.~~/ 0
Rows~~0 4
[~~4 5
$num~~5 6
]~~6 7
[~~7 8
$str~~8 @
]~~@ A
.~~A B
ToString~~B J
(~~J K
)~~K L
;~~L M
bookViewModel !
.! "
Price" '
=( )
Convert* 1
.1 2
ToInt322 9
(9 :
dtbl: >
.> ?
Rows? C
[C D
$numD E
]E F
[F G
$strG N
]N O
.O P
ToStringP X
(X Y
)Y Z
)Z [
;[ \
}
ÄÄ 
return
ÅÅ 
bookViewModel
ÅÅ $
;
ÅÅ$ %
}
ÇÇ 
}
ÉÉ 	
}
ÑÑ 
}ÖÖ ß
ÖC:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Controllers\HomeController.cs
	namespace 	
MVCCRUDwithoutEF
 
. 
Controllers &
{ 
public 

class 
HomeController 
:  !

Controller" ,
{		 
private

 
readonly

 
ILogger

  
<

  !
HomeController

! /
>

/ 0
_logger

1 8
;

8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
}   
}!! 
áC:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Data\MVCCRUDwithoutEFContext.cs
	namespace 	
MVCCRUDwithoutEF
 
. 
Data 
{ 
public 

class #
MVCCRUDwithoutEFContext (
:) *
	DbContext+ 4
{ 
public #
MVCCRUDwithoutEFContext &
(& '
DbContextOptions' 7
<7 8#
MVCCRUDwithoutEFContext8 O
>O P
optionsQ X
)X Y
: 
base 
( 
options 
) 
{		 	
}

 	
public 
DbSet 
< 
MVCCRUDwithoutEF %
.% &
Models& ,
., -
BookViewModel- :
>: ;
BookViewModel< I
{J K
getL O
;O P
setQ T
;T U
}V W
} 
} ∏

C:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Models\BookViewModel.cs
	namespace 	
MVCCRUDwithoutEF
 
. 
Models !
{ 
public 

class 
BookViewModel 
{ 
[ 	
Key	 
] 
public		 
int		 
BookID		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
[

 	
Required

	 
]

 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
Author 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Range	 
( 
$num 
, 
int 
. 
MaxValue 
, 
ErrorMessage  ,
=- .
$str/ U
)U V
]V W
public 
int 
Price 
{ 
get 
; 
set  #
;# $
}% &
} 
} ”
ÄC:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Models\ErrorViewModel.cs
	namespace 	
MVCCRUDwithoutEF
 
. 
Models !
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 –

rC:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Program.cs
	namespace 	
MVCCRUDwithoutEF
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} «
rC:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Startup.cs
	namespace 	
MVCCRUDwithoutEF
 
{ 
public		 

class		 
Startup		 
{

 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. %
UseDeveloperExceptionPage -
(- .
). /
;/ 0
} 
else 
{   
app!! 
.!! 
UseExceptionHandler!! '
(!!' (
$str!!( 5
)!!5 6
;!!6 7
}"" 
app## 
.## 
UseStaticFiles## 
(## 
)##  
;##  !
app%% 
.%% 

UseRouting%% 
(%% 
)%% 
;%% 
app'' 
.'' 
UseAuthorization''  
(''  !
)''! "
;''" #
app)) 
.)) 
UseEndpoints)) 
()) 
	endpoints)) &
=>))' )
{** 
	endpoints++ 
.++ 
MapControllerRoute++ ,
(++, -
name,, 
:,, 
$str,, #
,,,# $
pattern-- 
:-- 
$str-- E
)--E F
;--F G
}.. 
).. 
;.. 
}// 	
}00 
}11 