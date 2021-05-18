¡V
…C:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Controllers\BookController.cs
	namespace 	
MVCCRUDwithoutEF
 
. 
Controllers &
{		 
public

 

class

 
BookController

 
:

  !

Controller

" ,
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
BookController 
( 
IConfiguration ,
configuration- :
): ;
{ 	
this 
. 
_configuration 
=  !
configuration" /
;/ 0
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
	DataTable 
dtbl 
= 
new  
	DataTable! *
(* +
)+ ,
;, -
using 
( 
SqlConnection  
sqlConnection! .
=/ 0
new1 4
SqlConnection5 B
(B C
_configurationC Q
.Q R
GetConnectionStringR e
(e f
$strf u
)u v
)v w
)w x
{ 
sqlConnection 
. 
Open "
(" #
)# $
;$ %
SqlDataAdapter 
sqlDa $
=% &
new' *
SqlDataAdapter+ 9
(9 :
$str: G
,G H
sqlConnectionI V
)V W
;W X
sqlDa 
. 
SelectCommand #
.# $
CommandType$ /
=0 1
CommandType2 =
.= >
StoredProcedure> M
;M N
sqlDa 
. 
Fill 
( 
dtbl 
)  
;  !
} 
return 
View 
( 
dtbl 
) 
; 
} 	
public$$ 
IActionResult$$ 
	AddOrEdit$$ &
($$& '
int$$' *
?$$* +
id$$, .
)$$. /
{%% 	
BookViewModel&& 
bookViewModel&& '
=&&( )
new&&* -
BookViewModel&&. ;
(&&; <
)&&< =
;&&= >
if'' 
('' 
id'' 
>'' 
$num'' 
)'' 
bookViewModel(( 
=(( 
FetchBookByID((  -
(((- .
id((. 0
)((0 1
;((1 2
return)) 
View)) 
()) 
bookViewModel)) %
)))% &
;))& '
}** 	
[// 	
HttpPost//	 
]// 
[00 	$
ValidateAntiForgeryToken00	 !
]00! "
public11 
IActionResult11 
	AddOrEdit11 &
(11& '
int11' *
id11+ -
,11- .
[11/ 0
Bind110 4
(114 5
$str115 P
)11P Q
]11Q R
BookViewModel11S `
bookViewModel11a n
)11n o
{22 	
if33 
(33 

ModelState33 
.33 
IsValid33 "
)33" #
{44 
using55 
(55 
SqlConnection55 $
sqlConnection55% 2
=553 4
new555 8
SqlConnection559 F
(55F G
_configuration55G U
.55U V
GetConnectionString55V i
(55i j
$str55j y
)55y z
)55z {
)55{ |
{66 
sqlConnection77 !
.77! "
Open77" &
(77& '
)77' (
;77( )

SqlCommand88 
sqlCmd88 %
=88& '
new88( +

SqlCommand88, 6
(886 7
$str887 F
,88F G
sqlConnection88H U
)88U V
;88V W
sqlCmd99 
.99 
CommandType99 &
=99' (
CommandType99) 4
.994 5
StoredProcedure995 D
;99D E
sqlCmd:: 
.:: 

Parameters:: %
.::% &
AddWithValue::& 2
(::2 3
$str::3 ;
,::; <
bookViewModel::= J
.::J K
BookID::K Q
)::Q R
;::R S
sqlCmd;; 
.;; 

Parameters;; %
.;;% &
AddWithValue;;& 2
(;;2 3
$str;;3 :
,;;: ;
bookViewModel;;< I
.;;I J
Title;;J O
);;O P
;;;P Q
sqlCmd<< 
.<< 

Parameters<< %
.<<% &
AddWithValue<<& 2
(<<2 3
$str<<3 ;
,<<; <
bookViewModel<<= J
.<<J K
Author<<K Q
)<<Q R
;<<R S
sqlCmd== 
.== 

Parameters== %
.==% &
AddWithValue==& 2
(==2 3
$str==3 :
,==: ;
bookViewModel==< I
.==I J
Price==J O
)==O P
;==P Q
sqlCmd>> 
.>> 
ExecuteNonQuery>> *
(>>* +
)>>+ ,
;>>, -
}?? 
return@@ 
RedirectToAction@@ '
(@@' (
nameof@@( .
(@@. /
Index@@/ 4
)@@4 5
)@@5 6
;@@6 7
}AA 
returnBB 
ViewBB 
(BB 
bookViewModelBB %
)BB% &
;BB& '
}CC 	
publicFF 
IActionResultFF 
DeleteFF #
(FF# $
intFF$ '
?FF' (
idFF) +
)FF+ ,
{GG 	
BookViewModelHH 
bookViewModelHH '
=HH( )
FetchBookByIDHH* 7
(HH7 8
idHH8 :
)HH: ;
;HH; <
returnII 
ViewII 
(II 
bookViewModelII %
)II% &
;II& '
}JJ 	
[MM 	
HttpPostMM	 
,MM 

ActionNameMM 
(MM 
$strMM &
)MM& '
]MM' (
[NN 	$
ValidateAntiForgeryTokenNN	 !
]NN! "
publicOO 
IActionResultOO 
DeleteConfirmedOO ,
(OO, -
intOO- 0
idOO1 3
)OO3 4
{PP 	
usingQQ 
(QQ 
SqlConnectionQQ  
sqlConnectionQQ! .
=QQ/ 0
newQQ1 4
SqlConnectionQQ5 B
(QQB C
_configurationQQC Q
.QQQ R
GetConnectionStringQQR e
(QQe f
$strQQf u
)QQu v
)QQv w
)QQw x
{RR 
sqlConnectionSS 
.SS 
OpenSS "
(SS" #
)SS# $
;SS$ %

SqlCommandTT 
sqlCmdTT !
=TT" #
newTT$ '

SqlCommandTT( 2
(TT2 3
$strTT3 C
,TTC D
sqlConnectionTTE R
)TTR S
;TTS T
sqlCmdUU 
.UU 
CommandTypeUU "
=UU# $
CommandTypeUU% 0
.UU0 1
StoredProcedureUU1 @
;UU@ A
sqlCmdVV 
.VV 

ParametersVV !
.VV! "
AddWithValueVV" .
(VV. /
$strVV/ 7
,VV7 8
idVV9 ;
)VV; <
;VV< =
sqlCmdWW 
.WW 
ExecuteNonQueryWW &
(WW& '
)WW' (
;WW( )
}XX 
returnYY 
RedirectToActionYY #
(YY# $
nameofYY$ *
(YY* +
IndexYY+ 0
)YY0 1
)YY1 2
;YY2 3
}ZZ 	
[\\ 	
	NonAction\\	 
]\\ 
public]] 
BookViewModel]] 
FetchBookByID]] *
(]]* +
int]]+ .
?]]. /
id]]0 2
)]]2 3
{^^ 	
BookViewModel__ 
bookViewModel__ '
=__( )
new__* -
BookViewModel__. ;
(__; <
)__< =
;__= >
using`` 
(`` 
SqlConnection``  
sqlConnection``! .
=``/ 0
new``1 4
SqlConnection``5 B
(``B C
_configuration``C Q
.``Q R
GetConnectionString``R e
(``e f
$str``f u
)``u v
)``v w
)``w x
{aa 
	DataTablebb 
dtblbb 
=bb  
newbb! $
	DataTablebb% .
(bb. /
)bb/ 0
;bb0 1
sqlConnectioncc 
.cc 
Opencc "
(cc" #
)cc# $
;cc$ %
SqlDataAdapterdd 
sqlDadd $
=dd% &
newdd' *
SqlDataAdapterdd+ 9
(dd9 :
$strdd: H
,ddH I
sqlConnectionddJ W
)ddW X
;ddX Y
sqlDaee 
.ee 
SelectCommandee #
.ee# $
CommandTypeee$ /
=ee0 1
CommandTypeee2 =
.ee= >
StoredProcedureee> M
;eeM N
sqlDaff 
.ff 
SelectCommandff #
.ff# $

Parametersff$ .
.ff. /
AddWithValueff/ ;
(ff; <
$strff< D
,ffD E
idffF H
)ffH I
;ffI J
sqlDagg 
.gg 
Fillgg 
(gg 
dtblgg 
)gg  
;gg  !
ifhh 
(hh 
dtblhh 
.hh 
Rowshh 
.hh 
Counthh #
==hh$ &
$numhh' (
)hh( )
{ii 
bookViewModeljj !
.jj! "
BookIDjj" (
=jj) *
Convertjj+ 2
.jj2 3
ToInt32jj3 :
(jj: ;
dtbljj; ?
.jj? @
Rowsjj@ D
[jjD E
$numjjE F
]jjF G
[jjG H
$strjjH P
]jjP Q
.jjQ R
ToStringjjR Z
(jjZ [
)jj[ \
)jj\ ]
;jj] ^
bookViewModelkk !
.kk! "
Titlekk" '
=kk( )
dtblkk* .
.kk. /
Rowskk/ 3
[kk3 4
$numkk4 5
]kk5 6
[kk6 7
$strkk7 >
]kk> ?
.kk? @
ToStringkk@ H
(kkH I
)kkI J
;kkJ K
bookViewModelll !
.ll! "
Authorll" (
=ll) *
dtblll+ /
.ll/ 0
Rowsll0 4
[ll4 5
$numll5 6
]ll6 7
[ll7 8
$strll8 @
]ll@ A
.llA B
ToStringllB J
(llJ K
)llK L
;llL M
bookViewModelmm !
.mm! "
Pricemm" '
=mm( )
Convertmm* 1
.mm1 2
ToInt32mm2 9
(mm9 :
dtblmm: >
.mm> ?
Rowsmm? C
[mmC D
$nummmD E
]mmE F
[mmF G
$strmmG N
]mmN O
.mmO P
ToStringmmP X
(mmX Y
)mmY Z
)mmZ [
;mm[ \
}nn 
returnoo 
bookViewModeloo $
;oo$ %
}pp 
}qq 	
}rr 
}ss §
…C:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Controllers\HomeController.cs
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
}!! ð
‡C:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Data\MVCCRUDwithoutEFContext.cs
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
} ¸

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
} 
} Ó
€C:\Users\user\Source\Repos\ASP.NET-Core-MVC-without-Enitity-Framework\MVCCRUDwithoutEF\MVCCRUDwithoutEF\Models\ErrorViewModel.cs
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
}		 Ð

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
} Ç
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