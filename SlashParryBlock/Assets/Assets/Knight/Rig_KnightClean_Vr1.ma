//Maya ASCII 2018ff09 scene
//Name: Rig_KnightClean_Vr1.ma
//Last modified: Fri, Jul 26, 2019 10:25:10 AM
//Codeset: 1252
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "6F823CFB-44CD-5F54-7D89-BA83F9E83D1F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 84.259572922856862 147.16451354125658 214.82488812066924 ;
	setAttr ".r" -type "double3" 1420.4616466930697 -2513.0000000001605 -2.0027750574890799e-16 ;
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".rpt" -type "double3" -5.5511552099771254e-12 3.2036639457228873e-12 -4.6369748355013517e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0A63B094-4449-975D-A35C-9C9989DB36BE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 230.2413746290224;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 11.0943 99.8406 -1.1276000000000002 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "2BB9990A-4AB8-3C32-ACA7-679B82155384";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -50.47524526636203 1000.1 5.3246975122230538 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BBF7E077-4B39-FEB6-78F4-49B0F97B6DE7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 46.162496290904109;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "CA590993-4E26-CE02-1FEF-9AA24912F85F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.088000365758452 69.860692026682216 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D70B9447-4141-3154-0E99-CB98D51E0E16";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 143.82563446906556;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "386E7734-4BEF-1F96-AB6F-E08FCB7ADBB8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 7.4943633922254342 0.62630838237962472 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "80FDFACD-472F-FF82-33FC-81B0B8244501";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 120.11102271399872;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Root_JNT";
	rename -uid "53C5EE95-48B7-C83A-0FE8-89AE43C7D3C2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.867802726708604 1.2498004761199046 89.975301975164086 ;
	setAttr ".radi" 2;
createNode joint -n "Cog_JNT" -p "Root_JNT";
	rename -uid "5196A3B0-4993-22B8-722D-B2973FEAD114";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0939205319270471 0.29087609618384447 -13.638692823420582 ;
	setAttr ".radi" 1.050135317414242;
createNode joint -n "Spine1_JNT" -p "Cog_JNT";
	rename -uid "D1506587-47A2-B5C0-48D8-6EAB7180FF86";
	setAttr ".t" -type "double3" 10.615080532634352 -1.2128739498105381e-15 5.1504778213127745e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 11.09944030327779 ;
	setAttr ".radi" 2;
createNode joint -n "Spine2_JNT" -p "Spine1_JNT";
	rename -uid "56AC5E6B-4394-24A0-A165-079F280CF107";
	setAttr ".t" -type "double3" 10.237651609052264 4.7739590058881731e-15 3.3653635433950058e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 177.30423172087714 0.28776262142108283 9.8806109064150149 ;
	setAttr ".radi" 1.3790203052508279;
createNode joint -n "Spine3_JNT" -p "Spine2_JNT";
	rename -uid "7EBD8834-49EF-F6AD-9091-08B0B559935D";
	setAttr ".t" -type "double3" 9.7098363309817159 7.1054273576010019e-15 8.4654505627668186e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.8497726278750477 1.2689332045084296 -1.9997042465179342 ;
	setAttr ".radi" 0.85727393358362969;
createNode joint -n "Neck_JNT" -p "Spine3_JNT";
	rename -uid "157C1B9F-4D5E-091D-5F5C-388EB84BF707";
	setAttr ".t" -type "double3" 9.7933495620288369 -1.0658141036401503e-14 -7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 176.33731989712751 0.44528025897625256 15.115349167740423 ;
	setAttr ".radi" 1.530629588681184;
createNode joint -n "Head1_JNT" -p "Neck_JNT";
	rename -uid "CA94AE95-4D6B-45F7-3675-1180E85C12BB";
	setAttr ".t" -type "double3" 22.270398535961164 3.5527136788005009e-15 1.1407541578023483e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 87.461104195394356 0.18389238486569259 6.9282228452305761 ;
	setAttr ".radi" 1.4787909309169074;
createNode joint -n "Head_end_JNT" -p "Head1_JNT";
	rename -uid "A04F2B8F-49A1-AF53-D56F-73A6DA61105F";
	setAttr ".t" -type "double3" 28.359311559282858 -0.0015562067650309683 -0.48439585103960087 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.6483686868666 4.0018432778575246 -0.019449643827558875 ;
	setAttr ".radi" 1.4787909309169074;
createNode orientConstraint -n "Head1_JNT_orientConstraint1" -p "Head1_JNT";
	rename -uid "4CB221EA-47F9-11C9-65A5-47ABA27FA868";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.5622212432391388e-13 179.99999999999466 -89.815926926551995 ;
	setAttr ".o" -type "double3" -179.99999999999466 0 90.184073073448019 ;
	setAttr ".rsrr" -type "double3" -180 180.00000000000003 180 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Neck_JNT_orientConstraint1" -p "Neck_JNT";
	rename -uid "EC69AC08-4762-B271-6121-CCAE653DDD72";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.8344431158245452e-13 -92.538882719388297 -83.063623175047425 ;
	setAttr ".o" -type "double3" 92.557577382566734 6.9295345982231353 90.308770163701965 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905471e-15 1.5902773407317587e-14 -1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Clav1_R_JNT" -p "Spine3_JNT";
	rename -uid "64D64CBA-4CCE-077B-DEC1-B28D9C3DCEFE";
	setAttr ".t" -type "double3" 5.6251741472784431 -1.1075689371249879 4.978043375812657 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.41796606000494 -85.782046625705533 98.776824280734218 ;
	setAttr ".radi" 0.71163766518019811;
createNode joint -n "Clav2_R_JNT" -p "Clav1_R_JNT";
	rename -uid "3868D132-4A6C-2453-A05D-BDA931D8A412";
	setAttr ".t" -type "double3" 6.3764911710157532 2.8421709430404007e-14 6.8833827526759706e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.7450437145516503 0.19520501887890992 -75.276138348097632 ;
	setAttr ".radi" 0.79031156568160732;
createNode joint -n "Shoulder_R_JNT" -p "Clav2_R_JNT";
	rename -uid "4E8A261C-4F03-9097-3C4D-67A675551B02";
	setAttr ".t" -type "double3" 5.3922796736841008 7.1054273576010019e-15 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.42927927642139729 -1.3004147171886351 57.047461666419231 ;
	setAttr ".radi" 1.1553021647631385;
createNode joint -n "Elbow_R_JNT" -p "Shoulder_R_JNT";
	rename -uid "5D87F0AC-4CD3-7553-7C37-8B934DD90E42";
	setAttr ".t" -type "double3" 14.119292397792735 4.2632564145606011e-14 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.38270444518715108 1.2432906540174835 1.1547664756707432 ;
	setAttr ".radi" 1.4375375936831492;
createNode joint -n "Wrist_R_JNT" -p "Elbow_R_JNT";
	rename -uid "06FF440A-4642-BEE5-E715-228304444139";
	setAttr ".t" -type "double3" 19.730116732571695 -1.4210854715202004e-14 2.4424906541753444e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.24568810745457303 -0.74258538449243994 -1.2010988861701861 ;
	setAttr ".radi" 0.68981279569919962;
createNode joint -n "Palm_R_JNT" -p "Wrist_R_JNT";
	rename -uid "622F1A8A-4600-B2C0-63D6-74A7317F66D6";
	setAttr ".t" -type "double3" 3.1547132491051482 -2.8421709430404007e-14 7.9936057773011271e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.34806271416817763 1.0419801108307447 -0.1664781636345454 ;
	setAttr ".radi" 0.70404546804486756;
createNode joint -n "Middle1_R_JNT" -p "Palm_R_JNT";
	rename -uid "515FB4EE-482D-DBAB-183E-608A51C4247F";
	setAttr ".t" -type "double3" 13.572971302388087 -1.2212453270876722e-14 -3.6415315207705135e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.11787765088515184 -0.35282549116404077 -0.0050491843243467647 ;
	setAttr ".radi" 0.7812393938681913;
createNode joint -n "Middle2_R_JNT" -p "Middle1_R_JNT";
	rename -uid "68DBB4F7-4742-735C-67BD-07A4812B2AC8";
	setAttr ".t" -type "double3" 6.0546373359186152 -1.5653064589623158e-14 8.3928965054526033e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.33409521766325462 -1.1173187596845138 1.8254116356825036 ;
	setAttr ".radi" 0.76691882119614796;
createNode joint -n "Middle3_R_JNT" -p "Middle2_R_JNT";
	rename -uid "783B127D-4042-EBB7-6F1D-78B5B42E6A43";
	setAttr ".t" -type "double3" 6.4117485213300602 -7.9299183828828476e-15 8.6165330682534555e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.23402088906940297 -0.90646276690436089 2.1687978361555755 ;
	setAttr ".radi" 0.72168812520680725;
createNode joint -n "Middle_end_R_JNT" -p "Middle3_R_JNT";
	rename -uid "2AED638A-456E-D90B-CEAD-8988AE972E9B";
	setAttr ".t" -type "double3" 6.304495959004667 3.8076999125152064e-15 1.4973121577396028e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.72168812520680725;
createNode orientConstraint -n "Middle3_R_JNT_orientConstraint1" -p "Middle3_R_JNT";
	rename -uid "02574439-4EE1-5997-4DB7-91BB8FAD4C9E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle3_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.2970699560343405e-14 -1.7735319561676517e-15 -179.99999999999994 ;
	setAttr ".o" -type "double3" 0 0 179.99999999999994 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Middle2_R_JNT_orientConstraint1" -p "Middle2_R_JNT";
	rename -uid "1359994A-41EB-FFEC-A89A-5FA7CF36627C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle2_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.8266048511357936e-14 -4.6279555423637659e-16 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Middle1_R_JNT_orientConstraint1" -p "Middle1_R_JNT";
	rename -uid "F8A8A690-49BD-EDF1-10DD-C8A1514F0672";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle1_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.1479814553407384e-14 -1.9973485957650664e-14 180 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode joint -n "Ring1_R_JNT" -p "Palm_R_JNT";
	rename -uid "CD84F82E-4C7E-6D93-235A-8CB450AF399B";
	setAttr ".t" -type "double3" 12.582586434329947 0.21833666656104356 4.729142101698141 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.4168201683552439 -16.237641818015295 -0.2632143094904682 ;
	setAttr ".radi" 0.7036829976875163;
createNode joint -n "Ring2_R_JNT" -p "Ring1_R_JNT";
	rename -uid "2D922B12-48A4-203D-BDB3-10A47F53D0FE";
	setAttr ".t" -type "double3" 5.0491932747306265 -1.9483189634148111e-15 3.8785058254208454e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.40147797769447741 1.1757073453587208 -0.89614631600428107 ;
	setAttr ".radi" 0.76041416223093561;
createNode joint -n "Ring3_R_JNT" -p "Ring2_R_JNT";
	rename -uid "7F5ECE5A-4268-993D-E011-40BFECB690CD";
	setAttr ".t" -type "double3" 5.8852616515531437 1.0015817861085843e-14 9.6010575676868661e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.044766465144786494 0.18677543897129287 5.3728362911934733 ;
	setAttr ".radi" 0.69152281934220883;
createNode joint -n "Ring_end_R_JNT" -p "Ring3_R_JNT";
	rename -uid "4D58BFDD-4243-DDDA-D073-07BD5ACF0AEE";
	setAttr ".t" -type "double3" 6.349153998606198 -9.3894435234093787e-15 -8.811221195145578e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.92841173496289486 0.031837959594930423 -4.8754753198724492 ;
	setAttr ".radi" 0.69152281934220883;
createNode orientConstraint -n "Ring3_R_JNT_orientConstraint1" -p "Ring3_R_JNT";
	rename -uid "94609F2F-4136-CA03-7959-4283F939B436";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring3_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.1681306397392655e-16 3.5848019390733563e-14 -179.99999999999994 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ring2_R_JNT_orientConstraint1" -p "Ring2_R_JNT";
	rename -uid "F41C1EB9-40D2-80F5-B835-32A86AA6839B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring2_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.3914926731402795e-15 2.8088428831196239e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ring1_R_JNT_orientConstraint1" -p "Ring1_R_JNT";
	rename -uid "04441EA7-4AD0-98E0-DF3B-A3884D81A4C9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring1_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.1927080055488187e-14 7.6221495979604233e-15 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode joint -n "Index1_R_JNT" -p "Palm_R_JNT";
	rename -uid "D9AB26C1-4538-E9EE-4195-BFB9AB29CE9D";
	setAttr ".t" -type "double3" 13.010858867280788 -0.23866150822397003 -4.4555382999688637 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.8014938699041423 17.20301912203821 -0.48990442954313518 ;
	setAttr ".radi" 0.68981986417496044;
createNode joint -n "Index2_R_JNT" -p "Index1_R_JNT";
	rename -uid "78034B48-4771-AB65-C609-6499A42A6C7E";
	setAttr ".t" -type "double3" 4.6084315792709631 1.5496166413544498e-14 -4.2626574780061542e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.58728864388105295 -1.8570756740161709 0.52828597256304277 ;
	setAttr ".radi" 0.7735761821785766;
createNode joint -n "Index3_R_JNT" -p "Index2_R_JNT";
	rename -uid "B93A903B-4615-9F06-140F-B79E8B4CCD79";
	setAttr ".t" -type "double3" 5.8551938240659851 1.9104571645043503e-14 1.3628598724338165e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.28850675988694002 -1.0484174093550929 2.1562316896454843 ;
	setAttr ".radi" 0.6848781568005442;
createNode joint -n "Index_end_R_JNT" -p "Index3_R_JNT";
	rename -uid "7EBE1E5B-4169-9D1F-3701-BA8CE82C2184";
	setAttr ".t" -type "double3" 6.0798786525081283 1.1468658575507021e-14 9.6277328190478483e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.6848781568005442;
createNode orientConstraint -n "Index3_R_JNT_orientConstraint1" -p "Index3_R_JNT";
	rename -uid "708E40D0-45EB-A1FD-8348-A0B7ED9F4AEF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index3_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.7597857434628384e-14 -5.1513183000070506e-15 -179.99999999999994 ;
	setAttr ".o" -type "double3" 0 0 179.99999999999994 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Index2_R_JNT_orientConstraint1" -p "Index2_R_JNT";
	rename -uid "EC8820FF-4B2E-23B1-DC39-BB9567C6AED0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index2_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.5902773407317584e-14 -1.6787986380185767e-15 -179.99999999999994 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Index1_R_JNT_orientConstraint1" -p "Index1_R_JNT";
	rename -uid "3A05F553-477B-9038-E59C-1F8718718774";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index1_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.7708320221952783e-15 -8.4110762474640639e-15 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode joint -n "Thumb1_R_JNT" -p "Palm_R_JNT";
	rename -uid "2EBD76B7-4351-1BCF-FCD6-7FAC90CCF1D7";
	setAttr ".t" -type "double3" 1.0814902702640836 -0.56380629979091168 -3.7839537918289072 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.656785047510827 38.393983840332403 -16.727960266567965 ;
	setAttr ".radi" 0.7620061678851503;
createNode joint -n "Thumb2_R_JNT" -p "Thumb1_R_JNT";
	rename -uid "125AB608-4BF5-B561-FB52-A9B87DD651B3";
	setAttr ".t" -type "double3" 7.17090469311895 -4.7760618168111128e-16 -6.2495512175088093e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.59063388143581452 -1.3365453955832793 3.0124413599271733 ;
	setAttr ".radi" 0.75693555088801878;
createNode joint -n "Thumb3_R_JNT" -p "Thumb2_R_JNT";
	rename -uid "63CD4CA7-4D68-380A-2057-8A89D6EC7403";
	setAttr ".t" -type "double3" 5.500769225229285 8.3734514677651383e-15 -1.9436589034989207e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.46657710171790784 -0.98562193427320555 -1.4967454348726612 ;
	setAttr ".radi" 0.69802330671161705;
createNode joint -n "Thumb_end_R_JNT" -p "Thumb3_R_JNT";
	rename -uid "C73E854A-4012-8A1C-9026-88A99F98CA97";
	setAttr ".t" -type "double3" 6.18647699879733 -1.7988457778160058e-14 1.2612291489968654e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.4397355816069195 -1.3523529976624902 -2.6911261485405498 ;
	setAttr ".radi" 0.69802330671161705;
createNode orientConstraint -n "Thumb3_R_JNT_orientConstraint1" -p "Thumb3_R_JNT";
	rename -uid "11E1E4AD-4F46-A0C4-9D85-2CA5B45FD5CE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb3_R_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.5046868116525185e-14 4.1315374252106775e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Thumb2_R_JNT_orientConstraint1" -p "Thumb2_R_JNT";
	rename -uid "5495FCA1-4438-5938-8692-C28B91A761C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb2_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.6499127410092025e-14 7.1313999498439776e-14 -179.99999999999994 ;
	setAttr ".o" -type "double3" 0 0 179.99999999999994 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Thumb1_R_JNT_orientConstraint1" -p "Thumb1_R_JNT";
	rename -uid "EB4ED721-45A5-AA1D-217A-608CF4C24823";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb1_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.272221872585405e-14 5.5858491593203012e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode joint -n "Pinky1_R_JNT" -p "Palm_R_JNT";
	rename -uid "C4138D57-4F79-5BDE-7998-7C806C936158";
	setAttr ".t" -type "double3" 9.6676580318461305 -0.42348965615879308 7.8392311583344885 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 12.150193223747456 -36.939947787427819 -1.2405039907551096 ;
	setAttr ".radi" 0.68976811561707441;
createNode joint -n "Pinky2_R_JNT" -p "Pinky1_R_JNT";
	rename -uid "2E611A64-4A05-E80F-64A9-E78DE0B10D7C";
	setAttr ".t" -type "double3" 4.9147812635928574 -5.8896871524504341e-15 4.661973905487036e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.74512696965146485 2.5763429418275607 -0.49889917558851232 ;
	setAttr ".radi" 0.67765168177410318;
createNode joint -n "Pinky3_R_JNT" -p "Pinky2_R_JNT";
	rename -uid "3917248E-4582-36B2-129D-7FADBE40AA1C";
	setAttr ".t" -type "double3" 4.7040016247759908 -8.2822175396978075e-16 -1.6519388041605621e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.25314111802499356 0.87152544039461599 -0.076900779160661709 ;
	setAttr ".radi" 0.67765168177410318;
createNode joint -n "Pinky_end_R_JNT" -p "Pinky3_R_JNT";
	rename -uid "55535D0E-4D2F-4DFD-3C68-0A9F0F48C2E8";
	setAttr ".t" -type "double3" 4.8291462813373656 4.0241388726369784e-15 -2.8027269299890245e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.67765168177410384;
createNode orientConstraint -n "Pinky3_R_JNT_orientConstraint1" -p "Pinky3_R_JNT";
	rename -uid "68D3238D-4551-8799-A710-DCA78721D15D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinky3_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -7.0071595325993079e-15 2.3253778000924116e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 179.99999999999994 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Pinky2_R_JNT_orientConstraint1" -p "Pinky2_R_JNT";
	rename -uid "88CCBD6C-43EA-A1B5-972C-F09F6A064231";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinky2_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.7631068795214301e-14 -6.782750278951036e-16 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Pinky1_R_JNT_orientConstraint1" -p "Pinky1_R_JNT";
	rename -uid "9C0CCD73-4D32-47CB-BE61-37AD46D5E5D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinky1_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -6.3611093629270335e-15 2.087239009710433e-15 180 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wrist_R_JNT_orientConstraint1" -p "Wrist_R_JNT";
	rename -uid "A3305C1B-49B4-CB97-FB97-13959879A6AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 9.9392333795729932e-17 -7.866747919410862e-15 -179.99999999999991 ;
	setAttr ".o" -type "double3" 0 0 179.99999999999991 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Elbow_R_JNT_orientConstraint1" -p "Elbow_R_JNT";
	rename -uid "DF4327DD-4139-A76D-F144-41B817AF6BC4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.5842006786891115e-15 -1.3106587516704757e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Shoulder_R_JNT_orientConstraint1" -p "Shoulder_R_JNT";
	rename -uid "461E3F3A-41E0-3E78-62F7-0A984F2A94AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.3296431821571199e-14 -1.2821611059649794e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Clav2_R_JNT_orientConstraint1" -p "Clav2_R_JNT";
	rename -uid "03C587CD-40B4-96B5-509A-A18AFBA2D7F7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clav2_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -9.6410563781862916e-15 -2.2711148272325425e-14 180.00000000000003 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 0 0 360 ;
	setAttr -k on ".w0";
createNode joint -n "Clav1_L_JNT" -p "Spine3_JNT";
	rename -uid "CC6AE861-4BD1-6238-F4A9-8D8F29FD157A";
	setAttr ".t" -type "double3" 5.7718432920319316 -2.1261838367418981 -4.4514575163053944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.2978546514276077 81.760672898932086 -82.107751368114137 ;
	setAttr ".radi" 0.71163766518019811;
createNode joint -n "Clav2_L_JNT" -p "Clav1_L_JNT";
	rename -uid "A89E2F8E-4EA6-CA5B-2835-77B8CACD73D1";
	setAttr ".t" -type "double3" 6.3765279669189878 -3.8464199563401949e-15 -1.8638240026325713e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.74509848978037352 -0.19521885425723981 -75.275970097716169 ;
	setAttr ".radi" 0.79031156568160732;
createNode joint -n "Shoulder_L_JNT" -p "Clav2_L_JNT";
	rename -uid "58D022E3-4408-BB81-1282-F4824D2543CF";
	setAttr ".t" -type "double3" 5.3922757223736095 3.6673901290018825e-15 -2.0766447363993585e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.42928858131734038 1.3004322006934033 57.047358284629425 ;
	setAttr ".radi" 1.1553021647631385;
createNode joint -n "Elbow_L_JNT" -p "Shoulder_L_JNT";
	rename -uid "C1BA39C4-48B4-5F27-158E-6AAE5197EB59";
	setAttr ".t" -type "double3" 14.119285348339714 -4.0756418159635061e-16 1.4577905537345459e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.3827049450998975 -1.2432916286471443 1.1548983325179187 ;
	setAttr ".radi" 1.4375375936831492;
createNode joint -n "Wrist_L_JNT" -p "Elbow_L_JNT";
	rename -uid "1FA16935-436F-BBD1-7580-BDA0F56C694B";
	setAttr ".t" -type "double3" 19.730097603996409 2.339170484085186e-14 1.6268449362980258e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.24567467296511611 0.74260860369289872 -1.1996219399999644 ;
	setAttr ".radi" 0.68981279569919962;
createNode joint -n "Palm_L_JNT" -p "Wrist_L_JNT";
	rename -uid "3F3CD5F5-4B42-325F-181E-198AA187D9CB";
	setAttr ".t" -type "double3" 3.1547274009650978 -1.1568898461786834e-15 -6.1167205266218945e-15 ;
	setAttr ".r" -type "double3" -3.0031238355859721e-16 1.6391970050218468e-15 1.6398958573688478e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.34806812913572982 -1.0419932635064828 -0.16799722419159566 ;
	setAttr ".radi" 0.70404546804486756;
createNode joint -n "Middle1_L_JNT" -p "Palm_L_JNT";
	rename -uid "E5252C9D-4328-61BF-A238-18AE927812CD";
	setAttr ".t" -type "double3" 13.572988130448048 -3.2418512319054571e-14 -2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.11788184725572962 0.35282811396279273 -0.0054837295701551875 ;
	setAttr ".radi" 0.7812393938681913;
createNode joint -n "Middle2_L_JNT" -p "Middle1_L_JNT";
	rename -uid "B7D3BF5A-4569-5860-63C0-4798BE581A9E";
	setAttr ".t" -type "double3" 6.0545986524175159 2.8614168643165345e-15 -4.4678587375635842e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.33408193510437484 1.117292756348599 1.8261559484160803 ;
	setAttr ".radi" 0.76691882119614796;
createNode joint -n "Middle3_L_JNT" -p "Middle2_L_JNT";
	rename -uid "4ECE2DF8-416E-1EEE-E25D-92B2BB5F265C";
	setAttr ".t" -type "double3" 6.411748326314747 -9.8125212928155374e-16 -6.3121160922290886e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.23401248077244877 0.90644708339403535 2.1687970967985355 ;
	setAttr ".radi" 0.72168812520680725;
createNode joint -n "Middle_end_L_JNT" -p "Middle3_L_JNT";
	rename -uid "9610ED4C-4484-BA26-6FFD-B493699D0F9E";
	setAttr ".t" -type "double3" 6.3044961507562185 -2.4898546746681046e-16 -2.7730949746819306e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.72168812520680725;
createNode orientConstraint -n "Middle3_L_JNT_orientConstraint1" -p "Middle3_L_JNT";
	rename -uid "CE31D81F-4F54-77C2-E504-0A849BA08042";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle3_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.323431161294886e-16 6.0411902885220129e-16 -3.9912234039849805e-16 ;
	setAttr ".rsrr" -type "double3" -3.975693351829396e-16 3.7272125173400599e-16 1.391337372618733e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Middle2_L_JNT_orientConstraint1" -p "Middle2_L_JNT";
	rename -uid "DB1891BE-416E-CBA1-CDBE-5F9AFDB7C14C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle2_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.6151254241806922e-16 4.0999337690740637e-16 -3.1813311840712951e-15 ;
	setAttr ".rsrr" -type "double3" 1.3977046940025217e-16 1.7626609196587356e-16 6.3634388707503693e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Middle1_L_JNT_orientConstraint1" -p "Middle1_L_JNT";
	rename -uid "899EBABD-41DB-0446-98DC-589BE11DA9FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle1_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.4309384764786919e-16 1.3436050596794851e-15 -1.7690670661729144e-15 ;
	setAttr ".rsrr" -type "double3" 1.6500680415307563e-16 9.3296712494335562e-16 1.095805333239276e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Ring_L_JNT" -p "Palm_L_JNT";
	rename -uid "93BAF20F-44E1-43A4-7DB7-6EB620848F8D";
	setAttr ".t" -type "double3" 12.582534844749333 0.21826842044016814 -4.7291381146825451 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.4165455999960717 16.237671965305346 -0.26224378032017348 ;
	setAttr ".radi" 0.7036829976875163;
createNode joint -n "Ling2_L_JNT" -p "Ring_L_JNT";
	rename -uid "A1F612AD-4095-8F74-2396-D9B7A8EBC4B9";
	setAttr ".t" -type "double3" 5.0491986356648679 6.8710936208107616e-15 -1.6127880010218668e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.4015022866816958 -1.1757252931635414 -0.89782213815732348 ;
	setAttr ".radi" 0.76041416223093561;
createNode joint -n "Ling3_L_JNT" -p "Ling2_L_JNT";
	rename -uid "0E4D0665-40B3-CC75-7E6C-6794705168A5";
	setAttr ".t" -type "double3" 5.8853171566534952 -1.8127012682537048e-14 9.698311252660189e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.044725055041763377 -0.18660743937173463 5.3739617148863932 ;
	setAttr ".radi" 0.69152281934220883;
createNode joint -n "Ling_end_L_JNT" -p "Ling3_L_JNT";
	rename -uid "0CD720A1-4960-8540-F2BE-7E98FBB948F6";
	setAttr ".t" -type "double3" 6.3490866350680655 2.25388325162402e-14 -4.2884481908514807e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.69152281934220883;
createNode orientConstraint -n "Ling3_L_JNT_orientConstraint1" -p "Ling3_L_JNT";
	rename -uid "407B4CB6-4B81-75F3-55F8-7898A1E6A266";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring3_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.5720473546038052e-15 3.9096906301681669e-16 3.1878586591179399e-15 ;
	setAttr ".rsrr" -type "double3" -8.1020282095679511e-15 6.7652789702760977e-15 1.7503654861786826e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ling2_L_JNT_orientConstraint1" -p "Ling2_L_JNT";
	rename -uid "5229C8BD-413E-ECE8-C7FE-CFB6F8BCF9CD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring2_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.1497652947915152e-15 -4.5693295954765774e-15 1.2991665130753443e-14 ;
	setAttr ".rsrr" -type "double3" -8.8397056869581723e-15 1.8076980709099307e-15 2.6227928582957326e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ring_L_JNT_orientConstraint1" -p "Ring_L_JNT";
	rename -uid "B20E119C-4435-57B9-FA20-39925E17BCDC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring1_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 9.0695504588608146e-16 -9.2279569908477627e-15 -7.2556403670886469e-15 ;
	setAttr ".rsrr" -type "double3" -2.5220804700667736e-15 -3.4787316828507214e-15 
		6.0629323615398285e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Index1_L_JNT" -p "Palm_L_JNT";
	rename -uid "39D0A6BD-4BFD-6389-CA78-63B08C42E0E4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.801621333693384 -17.203097271676388 -0.49016585595325457 ;
	setAttr ".radi" 0.68981986417496044;
createNode joint -n "Index2_L_JNT" -p "Index1_L_JNT";
	rename -uid "6FF4F03D-4DB1-7EA8-8FCC-D5B3F133DEC7";
	setAttr ".t" -type "double3" 4.6084344190733439 1.0822814692439544e-14 2.0026399971933423e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.58734384814436613 1.8572562730331104 0.52862737085565481 ;
	setAttr ".radi" 0.7735761821785766;
createNode joint -n "Index3_L_JNT" -p "Index2_L_JNT";
	rename -uid "2A38C93F-4C64-77DD-2AD5-B494C9384558";
	setAttr ".t" -type "double3" 5.8552165615372305 -8.73449917723749e-15 -1.7334185370182671e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.28851164678582841 1.0484638492600495 2.1565778829898337 ;
	setAttr ".radi" 0.6848781568005442;
createNode joint -n "Index_end_L_JNT" -p "Index3_L_JNT";
	rename -uid "FE3FF994-424C-3DFF-84B5-9FA33F742596";
	setAttr ".t" -type "double3" 6.0798696871232574 6.6347746763044686e-15 -1.1725812513888392e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.6848781568005442;
createNode orientConstraint -n "Index3_L_JNT_orientConstraint1" -p "Index3_L_JNT";
	rename -uid "CBC0E1B1-438E-0A67-EA79-42B1AE317380";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index_3_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.0875097273495978e-15 1.8171714027248345e-14 4.0611086386850993e-16 ;
	setAttr ".rsrr" -type "double3" -4.0875097273495978e-15 1.8171714027248345e-14 4.0611086386850993e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Index2_L_JNT_orientConstraint1" -p "Index2_L_JNT";
	rename -uid "C837C8FE-4203-0C5A-1A88-FE95D99BC216";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index2_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.1636069829119573e-15 1.0676522605659823e-14 1.4700747370475417e-14 ;
	setAttr ".rsrr" -type "double3" -4.1636069829119573e-15 1.0676522605659823e-14 1.4700747370475417e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index1_L_JNT_parentConstraint1" -p "Index1_L_JNT";
	rename -uid "C6F296F1-438A-9E0E-C705-25BE35B2A1EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index1_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.1735498378916418e-07 -1.4504315259955547e-06 
		1.0551552165338762e-07 ;
	setAttr ".tg[0].tor" -type "double3" 8.7465253740246719e-15 -1.9083328088781101e-14 
		-1.9480897423964041e-14 ;
	setAttr ".lr" -type "double3" -8.2122915798725923e-15 2.3239170045615268e-14 1.9282112756372571e-14 ;
	setAttr ".rst" -type "double3" 13.010816979136514 -0.23868905984330979 4.4555368583460364 ;
	setAttr ".rsrr" -type "double3" -8.2122915798725923e-15 2.3239170045615268e-14 1.9282112756372571e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Thumb1_L_JNT" -p "Palm_L_JNT";
	rename -uid "0078F789-42A7-0EEF-0D21-9880AAC97958";
	setAttr ".t" -type "double3" 1.081443673235384 -0.5638423203975691 3.7839522402937176 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 23.65677671727796 -38.393889529209531 -16.727955177301428 ;
	setAttr ".radi" 0.7620061678851503;
createNode joint -n "Thumb2_L_JNT" -p "Thumb1_L_JNT";
	rename -uid "B6808ABE-4092-B5F2-58B3-098399A5C5D8";
	setAttr ".t" -type "double3" 7.1709225523986699 -5.4352658696386848e-15 4.5128882049513472e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.5908122679913983 1.3369837834468015 3.0130601667327142 ;
	setAttr ".radi" 0.75693555088801878;
createNode joint -n "Thumb3_L_JNT" -p "Thumb2_L_JNT";
	rename -uid "132D1D5B-4090-AC03-57A5-D482CF2977A5";
	setAttr ".t" -type "double3" 5.5007564967102329 9.348305946081592e-15 -3.8778659103289037e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.46618781803615472 0.98477767550484074 -1.4977885915365532 ;
	setAttr ".radi" 0.69802330671161705;
createNode joint -n "Thumb_end_L_JNT" -p "Thumb3_L_JNT";
	rename -uid "A7719FC8-41DA-C5FB-9D44-318EB5EF033C";
	setAttr ".t" -type "double3" 6.1865144572691273 -5.1140536200110335e-15 -1.635627397411632e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.69802330671161705;
createNode orientConstraint -n "Thumb3_L_JNT_orientConstraint1" -p "Thumb3_L_JNT";
	rename -uid "4A40B366-4518-EBA6-3C9C-11867E49C927";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb3_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 4.2676583323543663e-15 7.4513190242490004e-15 -1.0270799993095201e-14 ;
	setAttr ".rsrr" -type "double3" 1.6868742651394882e-14 2.0316414229934439e-14 -3.9469627553415634e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Thumb2_L_JNT_orientConstraint1" -p "Thumb2_L_JNT";
	rename -uid "88B79DAF-4BEA-D83A-49A4-5C9F65EB7BCC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb2_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -7.4544250346801232e-15 3.8092111927215398e-14 -1.7387446393391376e-14 ;
	setAttr ".rsrr" -type "double3" 4.6962877718484715e-15 5.1031751383247635e-14 -5.6467269637701871e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Thumb1_L_JNT_orientConstraint1" -p "Thumb1_L_JNT";
	rename -uid "7F1405E3-4904-0E4E-91FF-8A9CFC1546A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb1_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.2722218725854064e-14 2.7034714792439888e-14 -5.5659706925611512e-15 ;
	setAttr ".rsrr" -type "double3" 2.0673605429512861e-14 4.8901028227501562e-14 7.1562480332929198e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Pinky1_L_JNT" -p "Palm_L_JNT";
	rename -uid "11083591-474C-98AE-A0A6-1D80F60E8BE8";
	setAttr ".t" -type "double3" 9.6676403734436995 -0.42352203941710798 -7.8392272583708795 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -12.149883351626755 36.939804828476667 -1.2400357336035186 ;
	setAttr ".radi" 0.68976811561707441;
createNode joint -n "Pinky2_L_JNT" -p "Pinky1_L_JNT";
	rename -uid "CEDDF3AB-4EAD-4FA4-242C-5EAC98BF9DF8";
	setAttr ".t" -type "double3" 4.9147978862309261 3.7939770757324005e-15 -7.4918675050609368e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.74497352680721618 -2.5757681051651673 -0.49945592769727248 ;
	setAttr ".radi" 0.67765168177410318;
createNode joint -n "Pinky3_L_JNT" -p "Pinky2_L_JNT";
	rename -uid "5E7D1D47-4D2D-DC5F-8E2F-C7BC5EE488CE";
	setAttr ".t" -type "double3" 4.7040115036423931 -2.1692122817106408e-14 9.1549353818318191e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.25344903535825936 -0.87257618579973628 -0.076799600741371529 ;
	setAttr ".radi" 0.67765168177410318;
createNode joint -n "Pinky_end_L_JNT" -p "Pinky3_L_JNT";
	rename -uid "9ABE062E-459A-6FCC-E671-D99E704F972E";
	setAttr ".t" -type "double3" 4.8291262615508259 -4.57482181116725e-15 9.2284442891263363e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.67765168177410384;
createNode orientConstraint -n "Pinky3_L_JNT_orientConstraint1" -p "Pinky3_L_JNT";
	rename -uid "6D68F6DD-47AE-94CA-7E85-919C4B5C450B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinky3_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.0838326336555806e-14 -1.8972142621629717e-15 -6.7089825312121035e-16 ;
	setAttr ".rsrr" -type "double3" -2.0208383304627156e-14 -1.8824607126151659e-15 
		8.8804720738665774e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Pinky2_L_JNT_orientConstraint1" -p "Pinky2_L_JNT";
	rename -uid "36924DD6-440C-0008-B936-A39326EA8D34";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinky2_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.9930471268397037e-15 -1.2002400808442771e-14 -7.7432840047739739e-15 ;
	setAttr ".rsrr" -type "double3" -1.5227216138549703e-14 -1.1983376494552181e-14 
		1.7145177579764291e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Pinky1_L_JNT_orientConstraint1" -p "Pinky1_L_JNT";
	rename -uid "CF0BD6C7-4198-E809-F0AD-7AA63C9B0779";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinky1_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.1866313435061684e-14 -2.3854160110976374e-14 -1.630034274250053e-14 ;
	setAttr ".rsrr" -type "double3" 1.361674973001568e-14 -1.8536670252904558e-14 -6.3611093629270367e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Wrist_L_JNT_orientConstraint1" -p "Wrist_L_JNT";
	rename -uid "424164EE-4078-46FC-D3FA-579420E1E04F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.4415949164969028e-16 1.9567865716035303e-16 -7.9766230384116137e-16 ;
	setAttr ".rsrr" -type "double3" -1.9878466759146975e-16 6.6779224269009402e-17 1.5107246485647814e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Elbow_L_JNT_orientConstraint1" -p "Elbow_L_JNT";
	rename -uid "D3AF25B7-47E1-2750-7B1F-60A572A5E0E7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -9.3490913976613114e-16 3.7582726216512242e-16 -8.7387603479468759e-15 ;
	setAttr ".rsrr" -type "double3" -3.6340322044065559e-16 6.2508459926223889e-16 7.1593540437240285e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Shoulder_L_JNT_orientConstraint1" -p "Shoulder_L_JNT";
	rename -uid "840571A8-4E6B-58D7-7A94-DC8976E3A39F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -6.9574633657014429e-16 -1.6896696745274936e-15 -6.3750864098670602e-15 ;
	setAttr ".rsrr" -type "double3" -4.9696166897867459e-16 -1.6896696745274934e-15 
		6.3502383264181257e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Clav2_L_JNT_orientConstraint1" -p "Clav2_L_JNT";
	rename -uid "4A3832AA-4322-512D-044D-639FA66E7EBD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clav2_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 9.4422717105948169e-16 -1.5902773407317582e-15 -1.9075563062703309e-14 ;
	setAttr ".rsrr" -type "double3" 1.0933156717530838e-15 -8.9453100416161419e-16 4.2707643427854759e-18 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Spine3_JNT_orientConstraint1" -p "Spine3_JNT";
	rename -uid "FBF765F1-4AF1-E37C-3D0B-7AAB84276ACF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine3_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.4657779158347714e-13 83.77150620535771 -81.806790282432459 ;
	setAttr ".o" -type "double3" -83.707789762497669 -8.1445168806618504 89.105051826496748 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 6.3611093629270335e-15 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Spine2_JNT_orientConstraint1" -p "Spine2_JNT";
	rename -uid "DCABFFDF-4268-AFF0-AF98-6AAC6B492FF1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine2_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.8903872700704332e-11 92.711072265398258 -83.904692048096962 ;
	setAttr ".o" -type "double3" -92.726462872040941 -6.0884599877451091 90.28939501792226 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635183e-15 -9.5416640443905503e-15 
		1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Spine1_JNT_orientConstraint1" -p "Spine1_JNT";
	rename -uid "3F778A59-4586-3BC5-4D54-6A9895366BB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine1_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -86.207926161894534 -89.999999999997499 0 ;
	setAttr ".o" -type "double3" 89.999999999999829 3.7920738381054737 89.999999999997513 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 1.9083328088781101e-14 -1.0593375115320381e-30 ;
	setAttr -k on ".w0";
createNode joint -n "Hip_R_JNT" -p "Cog_JNT";
	rename -uid "AAD0A0FB-469E-DA61-8B48-F6828860F54C";
	setAttr ".t" -type "double3" -0.011974138278318947 -0.0031841729219905801 -11.635942873254862 ;
	setAttr ".r" -type "double3" -1.0295239568783641 0.34666595801076294 -0.06020665842502284 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -165.76467190584495 4.7317838598427784 176.87908729044415 ;
	setAttr ".radi" 2;
createNode joint -n "Knee1_R_JNT" -p "Hip_R_JNT";
	rename -uid "A8F75C8F-4852-EE81-39A7-D5A32AE3C771";
	setAttr ".t" -type "double3" 30.236050319736638 -3.4416913763379853e-15 -8.4376949871511897e-15 ;
	setAttr ".r" -type "double3" 9.3337961646400451e-08 3.7671571194148074e-06 -1.704251096965813e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 158.34860348217725 -5.3734213952241401 -31.877322293649968 ;
	setAttr ".radi" 0.57074466785569755;
createNode joint -n "Knee2_R_JNT" -p "Knee1_R_JNT";
	rename -uid "1DCA7C2C-4108-E820-4848-88B9928F1121";
	setAttr ".t" -type "double3" 2.2723484618249952 2.6350926267773047e-15 -1.5561115070419953e-15 ;
	setAttr ".r" -type "double3" -1.4882306470533081e-22 7.3307297905722612e-07 -3.5270405693235072e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.2973082981198241 -2.0047837582747055 6.3693900694023302 ;
	setAttr ".radi" 1.8259507565136428;
createNode joint -n "Ankle_R_JNT" -p "Knee2_R_JNT";
	rename -uid "BDC0447D-4CFE-0C64-7E0F-6EA894366374";
	setAttr ".t" -type "double3" 26.967646947607303 2.7644553313166398e-14 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0.33760429332587338 -1.0325463309046059 0.053772651749200394 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.7691873618274689 168.83558920386659 88.026467085605418 ;
	setAttr ".radi" 1.6685149212951718;
createNode joint -n "Toe_R_JNT" -p "Ankle_R_JNT";
	rename -uid "D44E4B13-41C6-D933-AA26-EC92443CCE3D";
	setAttr ".t" -type "double3" 22.786486589133556 -1.4432899320127035e-15 1.4918621893400541e-15 ;
	setAttr ".r" -type "double3" 1.2074182606523084e-06 3.0568059005190993e-07 -3.4013865410160885e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.0081615217758076019 1.623314383442821 18.710156438591966 ;
	setAttr ".radi" 1.211114569164828;
createNode joint -n "Toe_end_JNT" -p "Toe_R_JNT";
	rename -uid "2F1897F9-431B-725E-8F64-6DABC37F1CFE";
	setAttr ".t" -type "double3" 14.748215003853339 6.4834176351803742e-15 -2.259604709839682e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.211114569164828;
createNode ikEffector -n "effector3" -p "Toe_R_JNT";
	rename -uid "530542F1-4065-F4CF-13A3-E4AF285C90C9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "Ankle_R_JNT";
	rename -uid "002427CE-4E56-D18B-C64B-1C88885CD4FE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "Knee2_R_JNT";
	rename -uid "7CE9F769-4FF4-95B0-720D-A1B1BE4CDF18";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Hip_L_JNT" -p "Cog_JNT";
	rename -uid "2F9C035D-4318-0BD1-B34C-91AABA21EF10";
	setAttr ".t" -type "double3" -0.012013855415837327 -0.0031906651990549761 11.635979820003755 ;
	setAttr ".r" -type "double3" -1.0666717923025224 0.3591518613665457 -0.06249397774233726 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -165.76467190584 4.73178385984387 -3.1209127095554594 ;
	setAttr ".radi" 2;
createNode joint -n "Knee1_L_JNT" -p "Hip_L_JNT";
	rename -uid "5940B885-4624-0584-DD61-398F50F0DA59";
	setAttr ".t" -type "double3" -30.235986347431808 -1.3616894868562213e-05 1.147216779706639e-05 ;
	setAttr ".r" -type "double3" 9.8047884518582192e-08 3.7681641141467631e-06 -1.7045357862748892e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 158.34860348217731 -5.3734213952240992 -31.877322293649989 ;
	setAttr ".radi" 0.57074466785569755;
createNode joint -n "Knee2_L_JNT" -p "Knee1_L_JNT";
	rename -uid "AE18975A-4557-8806-C6A5-BDB42D6B6EA1";
	setAttr ".t" -type "double3" -2.2723246441060923 3.8351051183660445e-06 -4.2111445530679248e-05 ;
	setAttr ".r" -type "double3" -1.611032471453356e-12 7.3199301098457934e-07 -3.5239790440129523e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.2973082981196882 -2.0047837582746864 6.3693900694022778 ;
	setAttr ".radi" 1.8259507565136428;
createNode joint -n "Ankle_L_JNT" -p "Knee2_L_JNT";
	rename -uid "8D2D9081-4854-10C8-25C1-5380B1F3DA4D";
	setAttr ".t" -type "double3" -26.967693381901512 1.1369860633436701e-05 1.468427232076408e-05 ;
	setAttr ".r" -type "double3" 0.34976775135771604 -1.0698017170434031 0.055598629442303996 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.7691873618274943 168.83558920386645 88.026467085605447 ;
	setAttr ".radi" 1.6685149212951718;
createNode joint -n "Toe_L_JNT" -p "Ankle_L_JNT";
	rename -uid "9B231D2D-43A8-30D8-E22E-7BB2AE753ED7";
	setAttr ".t" -type "double3" -22.786449554458414 7.2668949506748959e-06 3.1123688602363586e-05 ;
	setAttr ".r" -type "double3" 1.2074348372278749e-06 5.4832217040629848e-07 -3.5805073152528065e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.0081615217772136213 1.6233143834428241 18.71015643859193 ;
	setAttr ".radi" 1.211114569164828;
createNode joint -n "Toe_end_JNT" -p "Toe_L_JNT";
	rename -uid "35430C1D-4AD5-7016-D014-669B3944A1DB";
	setAttr ".t" -type "double3" -14.748209009565663 8.6477223693037786e-06 -6.7015511088897028e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.211114569164828;
createNode ikEffector -n "effector4" -p "Toe_L_JNT";
	rename -uid "1DBAE4D1-45C2-A36D-AEED-6BB068C8745A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.748209009565663 8.6477223693037786e-06 -6.7015511088897028e-05 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "Ankle_L_JNT";
	rename -uid "62EFE696-4E76-2E59-1974-DEB53A5668DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -22.786449554458414 7.2668949506748959e-06 3.1123688602363586e-05 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "Knee2_L_JNT";
	rename -uid "51E0C6F5-44A8-BEBB-A441-718C13AEB2B2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.967693381901512 1.1369860633436701e-05 1.468427232076408e-05 ;
	setAttr ".hd" yes;
createNode orientConstraint -n "Cog_JNT_orientConstraint1" -p "Cog_JNT";
	rename -uid "755DC6AB-460B-9E3F-CA9F-9D8BA72CCC7A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hips_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -75.108485858617385 -89.999999999997485 0 ;
	setAttr ".o" -type "double3" 89.999999999999332 14.891514141382618 89.999999999997385 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-14 -3.1805546814635195e-15 1.5902773407317584e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Cog_JNT_pointConstraint1" -p "Cog_JNT";
	rename -uid "4B12A90F-4A9B-27EE-5969-E88B4A9186F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hips_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 64.322040170254269 -9.2976253363019623e-09 -1.5688493594512298e-09 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Root_JNT_pointConstraint1" -p "Root_JNT";
	rename -uid "9AD8E4EB-4744-A01A-28F1-ECAF9F3F1AB2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Root_Ctrl_Group";
	rename -uid "FEA4B377-49F0-B764-E769-B28E24369AFF";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "Root_Ctrl" -p "Root_Ctrl_Group";
	rename -uid "15F5AF6E-4AF7-EEA5-9789-F28356484105";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "Root_CtrlShape" -p "Root_Ctrl";
	rename -uid "5CDA4E30-4614-270B-3818-75AFAEE33E2F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-74.849629342606477 0 5.4528899718370836
		-44.909777605563889 0 -24.486961765205507
		-44.909777605563889 0 -9.5170358966842112
		-14.969925868521296 0 -9.5170358966842112
		-14.969925868521296 0 -39.456887633726801
		-29.939851737042591 0 -39.456887633726801
		0 0 -69.396739370769382
		29.939851737042591 0 -39.456887633726801
		14.969925868521296 0 -39.456887633726801
		14.969925868521296 0 -9.5170358966842112
		44.909777605563889 0 -9.5170358966842112
		44.909777605563889 0 -24.486961765205507
		74.849629342606477 0 5.4528899718370836
		44.909777605563889 0 35.392741708879676
		44.909777605563889 0 20.422815840358378
		14.969925868521296 0 20.422815840358378
		14.969925868521296 0 50.36266757740097
		29.939851737042591 0 50.36266757740097
		0 0 80.302519314443572
		-29.939851737042591 0 50.36266757740097
		-14.969925868521296 0 50.36266757740097
		-14.969925868521296 0 20.422815840358378
		-44.909777605563889 0 20.422815840358378
		-44.909777605563889 0 35.392741708879676
		-74.849629342606477 0 5.4528899718370836
		;
createNode transform -n "Hips_Ctrl" -p "Root_Ctrl";
	rename -uid "2AC58594-42D8-161F-01E8-61870DEA69D8";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 0.027720179408788681 64.306732177734375 -1.4029539823532104 ;
	setAttr ".sp" -type "double3" 0.027720179408788681 64.306732177734375 -1.4029539823532104 ;
createNode nurbsCurve -n "Hips_CtrlShape" -p "Hips_Ctrl";
	rename -uid "45DEF6DE-40EA-6D13-71CF-7991A94C4CB8";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.8432072792384453 0.36991445855795746 
		5.417705101699994 -2.4633073358870661e-16 -3.8862619859178125 6.5954001173984658 
		2.8432072792384488 0.36991445855795746 5.417705101699994 4.0209022949369242 0.10080905992550981 
		1.7763568394002505e-15 2.8432072792384488 -1.8563505889665208 -5.2102721586861342 
		4.0245584642661925e-16 3.3736869987853311 -6.3879671743846096 -2.8432072792384453 
		-1.8563505889665208 -5.2102721586861342 -4.0209022949369206 0.10080905992550981 1.1102230246251565e-15 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "Spine1_Ctrl" -p "Hips_Ctrl";
	rename -uid "E6649928-4FFE-EEE4-AF50-15AF965A84CC";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 0.027720179408788681 74.565292358398438 -4.1309199333190918 ;
	setAttr ".sp" -type "double3" 0.027720179408788681 74.565292358398438 -4.1309199333190918 ;
createNode nurbsCurve -n "Spine1_CtrlShape" -p "Spine1_Ctrl";
	rename -uid "4DAF5E6F-4EC5-62F1-4CC7-81A5D66F659E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.461142424466068 75.106900688507565 -16.207522572363509
		0.027720179408790242 71.606699133619188 -23.139832507104995
		-16.405702065648491 75.106900688507565 -16.207522572363501
		-22.925663077832841 73.61277076175142 0.52855409066320669
		-16.405702065648491 72.631456919586341 17.264630753689922
		0.027720179408786124 76.523851699711543 24.196940688431443
		16.461142424466068 72.631456919586341 17.264630753689918
		22.981103436650411 73.61277076175142 0.52855409066321146
		16.461142424466068 75.106900688507565 -16.207522572363509
		0.027720179408790242 71.606699133619188 -23.139832507104995
		-16.405702065648491 75.106900688507565 -16.207522572363501
		;
createNode transform -n "Spine2_Ctrl" -p "Spine1_Ctrl";
	rename -uid "A59949C9-4ECE-8C71-A3AD-DF82EEFD2589";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 0.027720179408788681 84.780532836914063 -4.8079957962036133 ;
	setAttr ".sp" -type "double3" 0.027720179408788681 84.780532836914063 -4.8079957962036133 ;
createNode nurbsCurve -n "Spine2_CtrlShape" -p "Spine2_Ctrl";
	rename -uid "80C8148B-4FE2-1E51-DFAB-5D908D90DA14";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.279049982958565 84.780532836914063 -13.957543680884427
		0.027720179408790329 82.246841022765253 -20.430362448511268
		-14.223609624140988 84.780532836914063 -13.957543680884424
		-20.126703710623204 83.437794303657782 -0.45814762734833447
		-14.223609624140988 82.687232350280723 13.317335586004743
		0.027720179408787078 86.248633247196011 19.790154353631607
		14.279049982958565 82.687232350280723 13.317335586004742
		20.182144069440785 83.437794303657782 -0.45814762734833003
		14.279049982958565 84.780532836914063 -13.957543680884427
		0.027720179408790329 82.246841022765253 -20.430362448511268
		-14.223609624140988 84.780532836914063 -13.957543680884424
		;
createNode transform -n "Spine3_Ctrl" -p "Spine2_Ctrl";
	rename -uid "492D75AC-409A-F637-08B8-B8AE131F64F5";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -0.021046347916126251 94.435478210449219 -3.7781336307525635 ;
	setAttr ".sp" -type "double3" -0.021046347916126251 94.435478210449219 -3.7781336307525635 ;
createNode nurbsCurve -n "Spine3_CtrlShape" -p "Spine3_Ctrl";
	rename -uid "F86B598F-464A-893F-574A-0796EDF63476";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.092726141999636 99.958966185329771 -12.414418881450231
		-0.021046347916124586 95.721497609383974 -16.316418373993606
		-12.134818837831887 99.958966185329771 -12.414418881450228
		-23.91463901092208 102.88731089320049 -0.83509769083843288
		-14.242375504358883 95.735227398748606 13.1588033557155
		-0.021046347916128878 98.652150486569298 17.995410199885757
		14.200282808526635 95.735227398748606 13.158803355715497
		23.872546315089828 102.88731089320049 -0.83509769083842933
		12.092726141999636 99.958966185329771 -12.414418881450231
		-0.021046347916124586 95.721497609383974 -16.316418373993606
		-12.134818837831887 99.958966185329771 -12.414418881450228
		;
createNode transform -n "Clav2_R_LOC" -p "Spine3_Ctrl";
	rename -uid "393DDDD7-4C7A-0728-2BAE-5B8C961996F8";
	setAttr ".t" -type "double3" -11.136355981105504 99.840615257573262 -1.127600617321771 ;
	setAttr ".r" -type "double3" -2.690276657431093 -179.29540655070596 75.334338731973048 ;
	setAttr ".s" -type "double3" 1 1 -0.99999999999999989 ;
createNode locator -n "Clav2_R_LOCShape" -p "Clav2_R_LOC";
	rename -uid "2AB4E3B4-4CC2-D082-5C08-BF9C4F1C99EE";
	setAttr -k off ".v";
createNode transform -n "Clav2_R_Ctrl" -p "Clav2_R_LOC";
	rename -uid "72CEF98D-4288-9E9D-F617-6AA30CB88A5F";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.01063110703957193 -0.040638608984885138 0.0020411064428766945 ;
	setAttr ".sp" -type "double3" -0.01063110703957193 -0.040638608984885138 0.0020411064428766945 ;
createNode nurbsCurve -n "Clav2_R_CtrlShape" -p "Clav2_R_Ctrl";
	rename -uid "0FA15A2B-4200-7A9F-376F-F09CEDDDBF81";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 41 0 no 3
		42 0 2 4.0871430000000002 6.1743430000000004 8.2614889999999992 10.348646 12.435838
		 14.522990999999999 16.610143000000001 18.697337999999998 20.784490000000002 22.871642000000001
		 24.958836000000002 27.045988999999999 29.133140999999998 31.220334999999999 33.307487999999999
		 35.394638999999998 37.481833999999999 39.568986000000002 41.686399999999999 48.748496000000003
		 55.810591000000002 58.009692000000001 59.575055999999996 61.140450999999999 62.705815999999999
		 64.271180999999999 65.836574999999996 67.401939999999996 68.967304999999996 70.532698999999994
		 72.098063999999994 73.663428999999994 75.228823000000006 76.794188000000005 78.359554000000003
		 79.924946000000006 81.490313999999998 83.055674999999994 84.621072999999996 86.186430999999999
		
		42
		6.6153498712013032 -2.3454010347540191 -18.598032742803834
		7.9050019111202801 -2.6833068713401431 -18.598032742803834
		7.3757157349906208 -3.9682289000829414 -18.531139504220587
		6.5352506609293783 -5.0752419026976057 -18.468774853219347
		5.4394868451175 -5.9308526576144018 -18.415080120142616
		4.1554708193177987 -6.4649858027820102 -18.374173511153298
		2.7772549074447141 -6.6536296053273603 -18.348341247586113
		1.396351382837608 -6.4842563662704116 -18.339298658443052
		0.10981536237268585 -5.9547252783298923 -18.348341247586113
		-0.99882345428463282 -5.1144927514608689 -18.374173511153298
		-1.8559451346741156 -4.0193532995832655 -18.415080120142616
		-2.3913699740350012 -2.7363496122359621 -18.468774853219347
		-2.5810035048166355 -1.3594371948477644 -18.531139504220587
		-2.4122543874448041 0.019950296429811942 -18.598032742803834
		-1.882922428667726 1.304860329515428 -18.664925981387086
		-1.0424670269967891 2.4118758664238698 -18.727290632388325
		0.053302592249252712 3.2674851007644108 -18.78098536546506
		1.337315393918928 3.8016190906965903 -18.821891974454381
		2.715533240269977 3.9902623863831863 -18.847724238021563
		4.096435455194225 3.8208894904804183 -18.856766827164623
		4.4537577568764988 5.1846450910935928 -18.925247193004626
		7.9938509733224237 2.083315836184795 -18.823104134245373
		3.3878183900589249 1.116378935247397 -18.720961075486109
		3.7589249446979807 2.5327459146257354 -18.792083289903676
		2.7232477654260663 2.6597762385080728 -18.785301372302513
		1.6895855859378344 2.5182931068039593 -18.765927158456368
		0.72657578883796248 2.1176931818812648 -18.735247225970507
		-0.095251839933894189 1.4759853322641234 -18.694976127650691
		-0.72559337609227725 0.64572505219252463 -18.648202704082781
		-1.122592030309491 -0.31795824340300527 -18.598032742803834
		-1.2491545207118691 -1.3524993792131141 -18.547862781524888
		-1.1069287127046579 -2.3851824885975006 -18.501089357956982
		-0.70536017510852389 -3.3474362624461094 -18.460818259637165
		-0.062518465837868575 -4.1687904527808257 -18.430138327151308
		0.76895927262611963 -4.7989648320600651 -18.410764113305163
		1.7338620591844602 -5.1961128338707709 -18.403982195704
		2.7695403822886817 -5.3231434574522289 -18.410764113305163
		3.8032012721248805 -5.1816599878422913 -18.430138327151308
		4.7662136485287476 -4.7810607387312487 -18.460818259637165
		5.5880367635185735 -4.139351706443712 -18.501089357956982
		6.2183847479371224 -3.309093115901284 -18.547862781524888
		6.6153498712013032 -2.3454010347540191 -18.598032742803834
		;
createNode transform -n "Shoulder_R_LOC" -p "Clav2_R_Ctrl";
	rename -uid "EE78AA3A-4B4C-BEF3-B335-F5B02CC2CF7C";
	setAttr ".t" -type "double3" 5.3922796736841008 7.1054273576010019e-15 -1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" -0.42927927642140495 1.3004147171886273 57.047461666419224 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 1.0000000000000002 ;
createNode locator -n "Shoulder_R_LOCShape" -p "Shoulder_R_LOC";
	rename -uid "3F242B82-44A2-601A-69D1-AF958433B0EF";
	setAttr -k off ".v";
createNode transform -n "Shoulder_R_Ctrl" -p "Shoulder_R_LOC";
	rename -uid "831065BA-4917-BC1C-4001-D0B3E9E3A64F";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.039924122999632772 -0.013192786315045169 0.0010369134711678551 ;
	setAttr ".sp" -type "double3" -0.039924122999632772 -0.013192786315045169 0.0010369134711680772 ;
createNode nurbsCurve -n "Shoulder_R_CtrlShape" -p "Shoulder_R_Ctrl";
	rename -uid "97BC955A-4120-A899-2DD4-B596003C82F0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5871011515398425 8.4351932738033355 -5.9713108690151389
		3.2802512234234769 1.7285339835284361 -8.7234525568434762
		4.1037826868276142 -4.9350929616529839 -5.9035427015288189
		4.5752819795310842 -7.6522252718484793 0.83655374835505725
		4.4185512105175171 -4.8312036905076496 7.5485797041689313
		3.7254011386338917 1.8754555997672213 10.300721391997275
		2.9018696752297455 8.5390825449486698 7.480811536682614
		2.4303703825262737 11.256214855144165 0.74071508679873732
		2.5871011515398425 8.4351932738033355 -5.9713108690151389
		3.2802512234234769 1.7285339835284361 -8.7234525568434762
		4.1037826868276142 -4.9350929616529839 -5.9035427015288189
		;
createNode transform -n "Elbow_R_LOC" -p "Shoulder_R_Ctrl";
	rename -uid "524C1A64-41E1-5DEB-6746-65B598D9F72F";
	setAttr ".t" -type "double3" 14.119292397792734 4.2632564145606011e-14 -1.5543122344752192e-15 ;
	setAttr ".r" -type "double3" 0.3827044451871815 -1.2432906540174848 1.1547664756707339 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999922 ;
createNode locator -n "Elbow_R_LOCShape" -p "Elbow_R_LOC";
	rename -uid "CC68A6E0-4067-C24C-F931-27923A7BC7F2";
	setAttr -k off ".v";
createNode transform -n "Elbow_R_Ctrl" -p "Elbow_R_LOC";
	rename -uid "2E868696-4619-8AEE-19BB-4A986046CF6A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.040158398014224828 -0.0124077526474764 0.0019916430339841362 ;
	setAttr ".sp" -type "double3" -0.040158398014224828 -0.0124077526474764 0.0019916430339841362 ;
createNode nurbsCurve -n "Elbow_R_CtrlShape" -p "Elbow_R_Ctrl";
	rename -uid "24A9B67A-459E-92C3-1CA4-9FBC6452410B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.56169812736730096 5.981966301541803 -6.7745590160738027
		-0.051718937715579782 -0.17183040647762482 -9.1413076365647399
		0.43789135455940809 -6.1918088961924127 -6.4485520822722533
		0.620325680520462 -8.5515474135220302 -0.27367203674538931
		0.38871648626198918 -5.8687431386689326 5.7661715153732072
		-0.12126270338971024 0.28505356935043835 8.1329201358641523
		-0.61087299566472009 6.3050320590652689 5.4401645815716577
		-0.79330732162577 8.6647705763948437 -0.73471546395520448
		-0.56169812736730096 5.981966301541803 -6.7745590160738027
		-0.051718937715579782 -0.17183040647762482 -9.1413076365647399
		0.43789135455940809 -6.1918088961924127 -6.4485520822722533
		;
createNode transform -n "Wrist_R_LOC" -p "Elbow_R_Ctrl";
	rename -uid "FFC036A5-4B5B-61A5-16C6-718478C835B1";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 19.730116732571698 -1.4210854715202004e-14 -5.1070259132757201e-15 ;
	setAttr ".r" -type "double3" -0.24568810745457065 0.74258538449244582 -1.2010988861701744 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "Wrist_R_LOCShape" -p "Wrist_R_LOC";
	rename -uid "34CEA538-4F3D-EC35-2464-7581FBE1B021";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.7763568394002505e-15 -1.4210854715202004e-14 2.2204460492503131e-16 ;
createNode transform -n "Wrist_R_Ctrl" -p "Wrist_R_LOC";
	rename -uid "74AFE582-4E42-2A98-C83A-6D95A83ECBFD";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.039932476857863719 -0.013253100961733821 0.0014176793738494009 ;
	setAttr ".sp" -type "double3" -0.039932476857863719 -0.013253100961733821 0.0014176793738494009 ;
createNode nurbsCurve -n "Wrist_R_CtrlShape" -p "Wrist_R_Ctrl";
	rename -uid "7AEA8D53-4219-F8F5-82EA-069FA3BDF064";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.425031059831614 7.4890822520433886 -8.7581933882480598
		-0.91401555506794807 -0.089417486933058399 -11.555008682763876
		-0.38704018167990561 -7.4191631122609607 -8.1617658451169444
		-0.15279996636155424 -10.206489045368045 -0.56618050917546503
		-0.34850965039322013 -6.8186175573944325 6.782356449428244
		-0.85952515515689321 0.75988218158205711 9.5791717439440696
		-1.3865005285449286 8.0896278069099452 6.1859289062971303
		-1.6207407438632551 10.876953740016972 -1.4096564296443512
		-1.425031059831614 7.4890822520433886 -8.7581933882480598
		-0.91401555506794807 -0.089417486933058399 -11.555008682763876
		-0.38704018167990561 -7.4191631122609607 -8.1617658451169444
		;
createNode transform -n "Thumb1_R_LOC" -p "Wrist_R_Ctrl";
	rename -uid "E3093FA8-4DFD-AA02-DEDF-299020B3E2CF";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 4.1655678854271176 -0.58972228686482708 3.7995007008365631 ;
	setAttr ".r" -type "double3" 24.474901802417115 -39.288878439156875 -17.404390326930375 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999956 ;
createNode locator -n "Thumb1_R_LOCShape" -p "Thumb1_R_LOC";
	rename -uid "5B7B31C5-4D3B-E48D-C35E-CEB17E316BB6";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.7763568394002505e-15 0 0 ;
createNode transform -n "Thumb1_R_Ctrl" -p "Thumb1_R_LOC";
	rename -uid "B747C8FD-47CD-E2C3-3AFC-FE9EA90FAB5C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 1.0543472737294177 0.53390068310480387 0.077822979506237289 ;
	setAttr ".sp" -type "double3" 1.0543472737294177 0.53390068310480387 0.077822979506237289 ;
createNode nurbsCurve -n "Thumb1_R_CtrlShape" -p "Thumb1_R_Ctrl";
	rename -uid "2B2294A7-4916-2F17-590B-E8982E3AC693";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.39783215303660757 0.42335443560929775 4.6022337908280555
		-0.72834738571989277 4.2753707459569767 -0.1410314531392487
		5.2788801086378925 4.4047160834233665 -0.0082985898079002141
		5.5942535485236329 0.93897216060946675 4.0243260602880753
		-0.39783215303660757 0.42335443560929775 4.6022337908280555
		-0.56799417049426815 -3.844324763603197 1.3872805715020924
		-0.89850940317767947 0.0076915467445530794 -3.3559846724651052
		-0.72834738571989277 4.2753707459569767 -0.1410314531392487
		-0.39783215303660757 0.42335443560929775 4.6022337908280555
		-0.56799417049426815 -3.844324763603197 1.3872805715020924
		5.6184576519552367 -3.2302859451068286 0.73582874887173944
		5.5942535485236329 0.93897216060946675 4.0243260602880753
		5.2788801086378925 4.4047160834233665 -0.0082985898079002141
		5.3030842120695096 0.2354579777070569 -3.2967959012242503
		5.6184576519552367 -3.2302859451068286 0.73582874887173944
		5.3030842120695096 0.2354579777070569 -3.2967959012242503
		-0.89850940317767947 0.0076915467445530794 -3.3559846724651052
		;
createNode transform -n "Thumb2_R_LOC" -p "Thumb1_R_Ctrl";
	rename -uid "7A50CD62-4978-78F6-0676-D98D2E405ABC";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 7.1709046931189553 -1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -0.59063388143579032 1.3365453955833086 3.0124413599271693 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "Thumb2_R_LOCShape" -p "Thumb2_R_LOC";
	rename -uid "94AB606E-45AC-47B5-C6CD-8AA1428BB697";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.7763568394002505e-15 0 -1.0658141036401503e-14 ;
createNode transform -n "Thumb2_R_Ctrl" -p "Thumb2_R_LOC";
	rename -uid "00559293-4BCC-01D5-7BC5-7285D3276777";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.026901576470370614 -0.011885937163583549 0.03012100017957664 ;
	setAttr ".sp" -type "double3" -0.026901576470370614 -0.011885937163583549 0.03012100017957664 ;
createNode nurbsCurve -n "Thumb2_R_CtrlShape" -p "Thumb2_R_Ctrl";
	rename -uid "74A66D9B-457C-D2B2-0542-1DB9B8491B1F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.87832654110992436 1.1074842606816873 3.6454027566366527
		-0.5477956685658576 4.1239058649241684 -0.31774654739534824
		4.4733906135751678 3.5462896307250134 -0.3752161296614247
		4.1497347008859649 0.59260884483643395 3.5055006555727672
		-0.87832654110992436 1.1074842606816873 3.6454027566366527
		-1.2984739061030099 -2.8333377843648435 0.61093407838963998
		-0.96794303355886413 0.18308381987772293 -3.352215225642464
		-0.5477956685658576 4.1239058649241684 -0.31774654739534824
		-0.87832654110992436 1.1074842606816873 3.6454027566366527
		-1.2984739061030099 -2.8333377843648435 0.61093407838963998
		3.7383262964785047 -3.2662450828401575 0.53414817032564699
		4.1497347008859649 0.59260884483643395 3.5055006555727672
		4.4733906135751678 3.5462896307250134 -0.3752161296614247
		4.0619822091676525 -0.31256429695149279 -3.3465686149085023
		3.7383262964785047 -3.2662450828401575 0.53414817032564699
		4.0619822091676525 -0.31256429695149279 -3.3465686149085023
		-0.96794303355886413 0.18308381987772293 -3.352215225642464
		;
createNode transform -n "Thumb3_R_LOC" -p "Thumb2_R_Ctrl";
	rename -uid "90646A96-4EF5-5814-DA57-F3922D16AC97";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 5.5007692252292868 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -0.46657710171795425 0.98562193427318867 -1.4967454348726656 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode locator -n "Thumb3_R_LOCShape" -p "Thumb3_R_LOC";
	rename -uid "B399142A-4364-4C9A-2C0D-9FB68D735188";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -1.0658141036401503e-14 1.4210854715202004e-14 1.0658141036401503e-14 ;
createNode transform -n "Thumb3_R_ctrl" -p "Thumb3_R_LOC";
	rename -uid "22DEF281-4297-743B-8539-34B41797C959";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.027106603458229017 -0.012779193761076613 0.029507611279196766 ;
	setAttr ".sp" -type "double3" -0.027106603458229017 -0.012779193761076613 0.029507611279196766 ;
createNode nurbsCurve -n "Thumb3_R_ctrlShape" -p "Thumb3_R_ctrl";
	rename -uid "1045BB75-4795-C51B-A40B-CAA54349CC6E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.91377270423945589 0.23830228405645926 3.337162379489115
		-0.70586885992351256 3.4963364886559418 -0.60421223399589152
		6.1743819968570435 2.7622936408156278 0.086136510426644719
		6.0376519758631986 0.61961519896500761 2.6782205357106434
		-0.91377270423945589 0.23830228405645926 3.337162379489115
		-0.77488081586242075 -3.4658186616958631 0.35023431708450659
		-0.56697697154645077 -0.2077844570963947 -3.5911402964005923
		-0.70586885992351256 3.4963364886559418 -0.60421223399589152
		-0.91377270423945589 0.23830228405645926 3.337162379489115
		-0.77488081586242075 -3.4658186616958631 0.35023431708450659
		5.8184718550208103 -1.9634172779292243 0.53146277203989456
		6.0376519758631986 0.61961519896500761 2.6782205357106434
		6.1743819968570435 2.7622936408156278 0.086136510426644719
		5.955201876014705 0.17926116392122537 -2.0606212532441539
		5.8184718550208103 -1.9634172779292243 0.53146277203989456
		5.955201876014705 0.17926116392122537 -2.0606212532441539
		-0.56697697154645077 -0.2077844570963947 -3.5911402964005923
		;
createNode transform -n "Index1_R_LOC" -p "Wrist_R_Ctrl";
	rename -uid "BB59AE95-428F-EF53-0781-7884C65C5921";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 16.08159796036108 -0.30328510325864499 4.6898719737680414 ;
	setAttr ".r" -type "double3" 6.1772807590911416 -18.241638890206843 -0.76761378210516296 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999989 ;
createNode locator -n "Index1_R_LOCShape" -p "Index1_R_LOC";
	rename -uid "19DB56DC-42D4-EA50-EE22-0FA301903DC7";
	setAttr -k off ".v";
createNode transform -n "Index1_R_Ctrl" -p "Index1_R_LOC";
	rename -uid "D68B2615-4D43-4245-35D7-2DAF1EB7882D";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.037337768407905259 -0.012177659993355405 0.015193142595240516 ;
	setAttr ".sp" -type "double3" -0.037337768407905259 -0.012177659993355405 0.015193142595240516 ;
createNode nurbsCurve -n "Index1_R_CtrlShape" -p "Index1_R_Ctrl";
	rename -uid "4F9396E9-4A13-1059-B99D-A5A3994AD4FE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.0394316011165756 2.8118586562903971 2.8653490506096819
		-3.0669641555251346 3.3712737561359205 -2.363900286300634
		3.1553784090900123 2.7681546820212617 -2.5463204691584664
		3.1872937330434183 2.6034790550814932 2.6383633879151365
		-3.0394316011165756 2.8118586562903971 2.8653490506096819
		-2.3344995137729114 -2.5957761777913646 2.6892527219490745
		-2.3680688328067596 -2.4225663220517362 -2.764124682027564
		-3.0669641555251346 3.3712737561359205 -2.363900286300634
		-3.0394316011165756 2.8118586562903971 2.8653490506096819
		-2.3344995137729114 -2.5957761777913646 2.6892527219490745
		3.408824367972457 -2.5494371338307076 2.6374048564241193
		3.1872937330434183 2.6034790550814932 2.6383633879151365
		3.1553784090900123 2.7681546820212617 -2.5463204691584664
		3.3769090440190723 -2.384761506890797 -2.5472790006495032
		3.408824367972457 -2.5494371338307076 2.6374048564241193
		3.3769090440190723 -2.384761506890797 -2.5472790006495032
		-2.3680688328067596 -2.4225663220517362 -2.764124682027564
		;
createNode transform -n "Index2_R_LOC" -p "Index1_R_Ctrl";
	rename -uid "EE82CB0A-47AB-5059-A871-5DBF8F323CA0";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 4.6084315792709667 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -0.58728864388106361 1.8570756740161813 0.52828597256304999 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "Index2_R_LOCShape" -p "Index2_R_LOC";
	rename -uid "6D9CA444-4191-DC66-CE75-28A27E2168AF";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 7.1054273576010019e-15 0 -1.7763568394002505e-15 ;
createNode transform -n "Index2_R_Ctrl" -p "Index2_R_LOC";
	rename -uid "21DE2D79-47A9-46EA-F877-EF8A069203F7";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.037918968771919026 -0.012004587206121187 0.013858422399859904 ;
	setAttr ".sp" -type "double3" -0.037918968771919026 -0.012004587206121187 0.013858422399859904 ;
createNode nurbsCurve -n "Index2_R_CtrlShape" -p "Index2_R_Ctrl";
	rename -uid "86949807-4347-49C6-CBCC-2AACE396CD13";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.84954337861696416 2.5678619225132735 2.340583803905492
		-0.70506807366722768 2.5736569339440507 -2.5098473778758983
		4.9505657957473801 2.4360536107300703 -2.3018273133290581
		4.8143419979436999 2.4305895733592706 2.271578202565621
		-0.84954337861696416 2.5678619225132735 2.340583803905492
		-0.66127791461939012 -2.2810704781020803 2.3403982722832986
		-0.51680260966945468 -2.2752754666716015 -2.5100329094981451
		-0.70506807366722768 2.5736569339440507 -2.5098473778758983
		-0.84954337861696416 2.5678619225132735 2.340583803905492
		-0.66127791461939012 -2.2810704781020803 2.3403982722832986
		4.9918549404492865 -2.1414027621821674 2.2714032673253506
		4.8143419979436999 2.4305895733592706 2.271578202565621
		4.9505657957473801 2.4360536107300703 -2.3018273133290581
		5.1280787382530733 -2.1359387248113819 -2.3020022485693747
		4.9918549404492865 -2.1414027621821674 2.2714032673253506
		5.1280787382530733 -2.1359387248113819 -2.3020022485693747
		-0.51680260966945468 -2.2752754666716015 -2.5100329094981451
		;
createNode transform -n "Index3_R_LOC" -p "Index2_R_Ctrl";
	rename -uid "DCCBE1B4-44D2-BD3B-1B20-A6B1A8CFD39D";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 5.8551938240659922 2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -0.28850675988697766 1.0484174093550838 2.1562316896454896 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode locator -n "Index3_R_LOCShape" -p "Index3_R_LOC";
	rename -uid "E9DE925B-428C-6BA5-75AB-F28236C4468D";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 7.1054273576010019e-15 0 -1.7763568394002505e-15 ;
createNode transform -n "Index3_R_Ctrl" -p "Index3_R_LOC";
	rename -uid "035A680E-4224-874F-08AA-8591EE4C1EDE";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.038569142946975887 -0.010631308806622997 0.013094356676699448 ;
	setAttr ".sp" -type "double3" -0.038569142946975887 -0.010631308806622997 0.013094356676699448 ;
createNode nurbsCurve -n "Index3_R_CtrlShape" -p "Index3_R_Ctrl";
	rename -uid "F1AA9EEE-47F2-B9CB-12C9-88ACAEAA56C0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.24662568483466885 2.586049941336384 2.307199394439694
		-0.1017040061706993 2.4837151281997052 -2.5263571311459714
		6.4916351673764368 2.1046857267946706 -2.1426398451436093
		6.3687561859864417 2.191455337213867 1.955729065775218
		-0.24662568483466885 2.586049941336384 2.307199394439694
		-0.32327541586770536 -2.2491185197726367 2.4072701913159555
		-0.17835373720378556 -2.3514533329093581 -2.4262863342696868
		-0.1017040061706993 2.4837151281997052 -2.5263571311459714
		-0.24662568483466885 2.586049941336384 2.307199394439694
		-0.32327541586770536 -2.2491185197726367 2.4072701913159555
		6.3037649371961706 -1.908280332612307 2.0405790185248414
		6.3687561859864417 2.191455337213867 1.955729065775218
		6.4916351673764368 2.1046857267946706 -2.1426398451436093
		6.4266439185862794 -1.9950499430315034 -2.0577898923939966
		6.3037649371961706 -1.908280332612307 2.0405790185248414
		6.4266439185862794 -1.9950499430315034 -2.0577898923939966
		-0.17835373720378556 -2.3514533329093581 -2.4262863342696868
		;
createNode transform -n "Middle1_R_LOC" -p "Wrist_R_Ctrl";
	rename -uid "22A69384-4D8A-C198-FC93-89A74C31BB76";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 16.725382833782717 -0.039430941140381037 0.24682422862896125 ;
	setAttr ".r" -type "double3" 0.23024450664847415 -0.689130455869428 -0.16938403743237854 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode locator -n "Middle1_R_LOCShape" -p "Middle1_R_LOC";
	rename -uid "AE764142-47A3-F33B-9153-128986BA87C2";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 7.1054273576010019e-15 0 0 ;
createNode transform -n "Middle1_R_Ctrl" -p "Middle1_R_LOC";
	rename -uid "682D87A1-4E0F-0DE2-937F-90BEDE1EB0AD";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.039841185370441679 -0.013296973665262612 0.0019491308641914618 ;
	setAttr ".sp" -type "double3" -0.039841185370441679 -0.013296973665262612 0.0019491308641914618 ;
createNode nurbsCurve -n "Middle1_R_CtrlShape" -p "Middle1_R_Ctrl";
	rename -uid "2F002902-4069-3FE2-4EF7-E3BAA8DA9D3E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.799098396364009 3.8046931159117463 2.362102798392741
		-1.8433573134418921 3.657507491964509 -2.5859648849374812
		4.4016522474026161 2.5765835281289782 -2.6466688386843273
		4.4577004791571966 2.6884814938749031 2.3013988446458922
		-1.799098396364009 3.8046931159117463 2.362102798392741
		-1.1583409031399476 -3.0195663130072177 2.4738485586280823
		-1.2025998202178272 -3.1667519369546113 -2.4742191247021363
		-1.8433573134418921 3.657507491964509 -2.5859648849374812
		-1.799098396364009 3.8046931159117463 2.362102798392741
		-1.1583409031399476 -3.0195663130072177 2.4738485586280823
		4.4717383781295794 -2.259887144403919 2.4131446048812388
		4.4577004791571966 2.6884814938749031 2.3013988446458922
		4.4016522474026161 2.5765835281289782 -2.6466688386843273
		4.4156901463749705 -2.3717851101498866 -2.5349230784489789
		4.4717383781295794 -2.259887144403919 2.4131446048812388
		4.4156901463749705 -2.3717851101498866 -2.5349230784489789
		-1.2025998202178272 -3.1667519369546113 -2.4742191247021363
		;
createNode transform -n "Middle2_R_LOC" -p "Middle1_R_Ctrl";
	rename -uid "15DA403A-4749-E568-C9BD-E691E5DAD743";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 6.0546373359186205 -2.8421709430404007e-14 -8.5487172896137054e-14 ;
	setAttr ".r" -type "double3" -0.33409521766328026 1.1173187596845338 1.8254116356825021 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999956 ;
createNode locator -n "Middle2_R_LOCShape" -p "Middle2_R_LOC";
	rename -uid "EC3B80C9-4728-186D-6F93-1D91C4320537";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 1.1102230246251565e-16 ;
createNode transform -n "Middle2_R_Ctrl" -p "Middle2_R_LOC";
	rename -uid "D14D6CEC-4634-03FC-FC24-D5A403FE5790";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.040312540411939324 -0.012071019603396849 0.0010920431450708312 ;
	setAttr ".sp" -type "double3" -0.040312540411939324 -0.012071019603396849 0.0010920431450708312 ;
createNode nurbsCurve -n "Middle2_R_CtrlShape" -p "Middle2_R_Ctrl";
	rename -uid "5C3262E8-44A5-DC16-741B-41923EBEF656";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.86019613380204163 3.0969659356120616 2.4042801999193992
		-0.79140904625742081 3.059368167496558 -2.6074174338814133
		4.9050601720082057 2.6541514581304 -2.5408302388797379
		4.8362730844635777 2.6917492262458893 2.4708673949210644
		-0.86019613380204163 3.0969659356120616 2.4042801999193992
		-1.0518248528780276 -1.9115583773136677 2.4392239988154012
		-0.98303776533338549 -1.9491561454292281 -2.572473634985406
		-0.79140904625742081 3.059368167496558 -2.6074174338814133
		-0.86019613380204163 3.0969659356120616 2.4042801999193992
		-1.0518248528780276 -1.9115583773136677 2.4392239988154012
		4.6446443653874638 -2.3167750866798968 2.5058111938170713
		4.8362730844635777 2.6917492262458893 2.4708673949210644
		4.9050601720082057 2.6541514581304 -2.5408302388797379
		4.713431452932177 -2.3543728547954572 -2.5058864399837288
		4.6446443653874638 -2.3167750866798968 2.5058111938170713
		4.713431452932177 -2.3543728547954572 -2.5058864399837288
		-0.98303776533338549 -1.9491561454292281 -2.572473634985406
		;
createNode transform -n "Middle3_R_LOC" -p "Middle2_R_Ctrl";
	rename -uid "800C9B86-4D3D-EC32-D043-0DB40724FA2E";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 6.4117485213300682 0 -5.5511151231257827e-16 ;
	setAttr ".r" -type "double3" -0.23402088906935062 0.9064627669043599 2.1687978361555817 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode locator -n "Middle3_R_LOCShape" -p "Middle3_R_LOC";
	rename -uid "438125F6-4862-E56B-FAA5-AE8649FBE963";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -7.1054273576010019e-15 0 -2.2204460492503131e-16 ;
createNode transform -n "Middle3_R_Ctrl" -p "Middle3_R_LOC";
	rename -uid "2FCF442A-4D44-7C1F-0071-3080DB423AD9";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.040752594212534632 -0.010511074222335992 0.0004068239617387448 ;
	setAttr ".sp" -type "double3" -0.040752594212534632 -0.010511074222335992 0.0004068239617387448 ;
createNode nurbsCurve -n "Middle3_R_CtrlShape" -p "Middle3_R_Ctrl";
	rename -uid "F66194BD-4F15-93BC-F842-6085E243D834";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.59847739228337105 2.7974965045598736 2.3264279072663605
		-0.46783228003082655 2.7326981332467994 -2.5476940475348839
		6.5615286520127398 2.1969770026115043 -1.9679454676517509
		6.4946488697937923 2.2051986793679532 2.0128420163555596
		-0.59847739228337105 2.7974965045598736 2.3264279072663605
		-1.0178736300298112 -2.0604447516595172 2.3797697430245441
		-0.88722851777703227 -2.1252431229725204 -2.4943522117767047
		-0.46783228003082655 2.7326981332467994 -2.5476940475348839
		-0.59847739228337105 2.7974965045598736 2.3264279072663605
		-1.0178736300298112 -2.0604447516595172 2.3797697430245441
		6.6380024964236739 -1.773563228750362 2.0234679424566577
		6.4946488697937923 2.2051986793679532 2.0128420163555596
		6.5615286520127398 2.1969770026115043 -1.9679454676517509
		6.7048822786426712 -1.7817849055069246 -1.9573195415506528
		6.6380024964236739 -1.773563228750362 2.0234679424566577
		6.7048822786426712 -1.7817849055069246 -1.9573195415506528
		-0.88722851777703227 -2.1252431229725204 -2.4943522117767047
		;
createNode transform -n "Ring1_R_LOC" -p "Wrist_R_Ctrl";
	rename -uid "4D78C292-4A02-9D0A-D87F-809D834A9EEA";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 15.821857065340536 0.21025663097306335 -4.4981326106890593 ;
	setAttr ".r" -type "double3" -5.0512479925104081 15.19695691516605 -0.32749280056688862 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "Ring1_R_LOCShape" -p "Ring1_R_LOC";
	rename -uid "8278F41D-46FE-202D-6B9B-DAB0132C5C49";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -1.0658141036401503e-14 0 -1.7763568394002505e-15 ;
createNode transform -n "Ring1_R_Ctrl" -p "Ring1_R_LOC";
	rename -uid "DEF7CBA1-4CE7-B1F7-6F83-53B5C4FEB70B";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.038869168639603657 -0.012624041891569959 -0.010239434148280324 ;
	setAttr ".sp" -type "double3" -0.038869168639603657 -0.012624041891569959 -0.010239434148280324 ;
createNode nurbsCurve -n "Ring1_R_CtrlShape" -p "Ring1_R_Ctrl";
	rename -uid "23B140EF-4FEB-D61A-185B-A186D5F6DF5A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.6098145745294943 2.9868326582067226 2.0396999268707479
		-1.4390392630588984 3.0085109867644064 -2.5848777530377998
		4.173127789099599 2.5086060587096028 -2.500957822579684
		3.9325961938683811 2.4553338223395684 2.2773094299333554
		-1.6098145745294943 2.9868326582067226 2.0396999268707479
		-0.98579492242627609 -2.8509604589890358 2.0100316074337918
		-0.81501961095578324 -2.8292821304311389 -2.6145460724747736
		-1.4390392630588984 3.0085109867644064 -2.5848777530377998
		-1.6098145745294943 2.9868326582067226 2.0396999268707479
		-0.98579492242627609 -2.8509604589890358 2.0100316074337918
		3.8090417344318546 -2.3273140345960996 2.2177687882528403
		3.9325961938683811 2.4553338223395684 2.2773094299333554
		4.173127789099599 2.5086060587096028 -2.500957822579684
		4.0495733296630938 -2.2740417982262215 -2.5604984642602009
		3.8090417344318546 -2.3273140345960996 2.2177687882528403
		4.0495733296630938 -2.2740417982262215 -2.5604984642602009
		-0.81501961095578324 -2.8292821304311389 -2.6145460724747736
		;
createNode transform -n "Ring2_R_LOC" -p "Ring1_R_Ctrl";
	rename -uid "3A4FF5DF-450F-B4ED-FC7B-F4B397C5DC70";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 5.0491932747306194 0 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0.40147797769449262 -1.1757073453587112 -0.89614631600426842 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999967 ;
createNode locator -n "Ring2_R_LOCShape" -p "Ring2_R_LOC";
	rename -uid "3E579DA0-4AF6-268B-2379-5AA09AF184D5";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 1.7763568394002505e-15 ;
createNode transform -n "Ring2_R_Ctrl" -p "Ring2_R_LOC";
	rename -uid "837CA696-419F-15F8-34A9-CF95B1F8203D";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.03886561663189525 -0.013219615146738306 -0.0093472387531203793 ;
	setAttr ".sp" -type "double3" -0.03886561663189525 -0.013219615146738306 -0.0093472387531203793 ;
createNode nurbsCurve -n "Ring2_R_CtrlShape" -p "Ring2_R_Ctrl";
	rename -uid "46D1DECF-4BC0-B9E0-BF0D-2AB67749FDAD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.41854291575395308 2.6936750284652078 2.3085640379062795
		-0.24601750647373422 2.7450013405016591 -2.4765295841855703
		4.9503475634637724 2.8257175561677172 -2.4306080289658478
		4.7778221541834753 2.774391244131138 2.3544855931258546
		-0.41854291575395308 2.6936750284652078 2.3085640379062795
		-0.47638673208924587 -2.0941552222044351 2.2551228269902293
		-0.30386132280907674 -2.0428289101679127 -2.5299707951016313
		-0.24601750647373422 2.7450013405016591 -2.4765295841855703
		-0.41854291575395308 2.6936750284652078 2.3085640379062795
		-0.47638673208924587 -2.0941552222044351 2.2551228269902293
		4.7199783378482394 -2.013439006538249 2.301044382209831
		4.7778221541834753 2.774391244131138 2.3544855931258546
		4.9503475634637724 2.8257175561677172 -2.4306080289658478
		4.8925037471284085 -1.9621126945017124 -2.4840492398819141
		4.7199783378482394 -2.013439006538249 2.301044382209831
		4.8925037471284085 -1.9621126945017124 -2.4840492398819141
		-0.30386132280907674 -2.0428289101679127 -2.5299707951016313
		;
createNode transform -n "Ring3_R_LOC" -p "Ring2_R_Ctrl";
	rename -uid "C0427D56-439B-6816-3349-3FBD5DB8E247";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 5.8852616515531437 0 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0.044766465144786174 -0.18677543897128707 5.3728362911934759 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode locator -n "Ring3_R_LOCShape" -p "Ring3_R_LOC";
	rename -uid "42F76036-4628-18FE-1966-9B97680B4F4C";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -7.1054273576010019e-15 1.4210854715202004e-14 -1.7763568394002505e-15 ;
createNode transform -n "Ring3_R_Ctrl" -p "Ring3_R_LOC";
	rename -uid "8DDC1C08-4D49-DD86-35CD-D7A1FBECA216";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.03991248265264602 -0.009618102439006293 -0.0092018798829300863 ;
	setAttr ".sp" -type "double3" -0.03991248265264602 -0.009618102439006293 -0.0092018798829300863 ;
createNode nurbsCurve -n "Ring3_R_CtrlShape" -p "Ring3_R_Ctrl";
	rename -uid "295B041F-4700-DAC7-3FCC-BFBB47DBBE71";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.53707879166958605 3.1794581332450207 2.4848473584414599
		-0.42825118763732917 3.1352311307548462 -2.625128785777143
		6.6575507474267042 1.7205289336325507 -2.0084370302995413
		6.5706813079884938 1.7558322461377145 2.0704983385112641
		-0.53707879166958605 3.1794581332450207 2.4848473584414599
		-0.82820075407934723 -1.9234295086422861 2.5228129601037708
		-0.71937315004706193 -1.9676565111323185 -2.5871631841148091
		-0.42825118763732917 3.1352311307548462 -2.625128785777143
		-0.53707879166958605 3.1794581332450207 2.4848473584414599
		-0.82820075407934723 -1.9234295086422861 2.5228129601037708
		6.338299074569683 -2.3174448686898899 2.1008036141227731
		6.5706813079884938 1.7558322461377145 2.0704983385112641
		6.6575507474267042 1.7205289336325507 -2.0084370302995413
		6.425168514007602 -2.3527481811951958 -1.9781317546880786
		6.338299074569683 -2.3174448686898899 2.1008036141227731
		6.425168514007602 -2.3527481811951958 -1.9781317546880786
		-0.71937315004706193 -1.9676565111323185 -2.5871631841148091
		;
createNode transform -n "Pinky1_R_LOC" -p "Wrist_R_Ctrl";
	rename -uid "1E859A1A-4314-084C-AEE0-CDBDE14834DA";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 12.962239557835455 -0.40435839468557333 -7.6645562464897434 ;
	setAttr ".r" -type "double3" -11.692803263939268 35.904858283335471 -1.1322373436793074 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999978 ;
createNode locator -n "Pinky1_R_LOCShape" -p "Pinky1_R_LOC";
	rename -uid "F87E1DAC-4615-0B50-4D4F-3B9A80781BCD";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 7.1054273576010019e-15 ;
createNode transform -n "Pinky1_R_Ctrl" -p "Pinky1_R_LOC";
	rename -uid "FC6D93CA-4242-CD8D-730F-CCA485CA613C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.032963420324612969 -0.0092279960919654513 -0.024491302356828726 ;
	setAttr ".sp" -type "double3" -0.032963420324612969 -0.0092279960919654513 -0.024491302356828726 ;
createNode nurbsCurve -n "Pinky1_R_CtrlShape" -p "Pinky1_R_Ctrl";
	rename -uid "5859D4A3-4708-167C-D224-56B7621BE85B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.69272464957007074 2.7675327644657273 1.9639941417744247
		-0.51809018413225516 2.8837922668189577 -2.5192430175953078
		3.9425292630433368 2.4145446076515213 -2.3576581253417679
		3.7678947976055142 2.2982851052982767 2.1255790340279752
		-0.69272464957007074 2.7675327644657273 1.9639941417744247
		-0.86528505727627802 -2.7376136450023836 1.8301890932837672
		-0.690650591838466 -2.6213541426490394 -2.6530480660859759
		-0.51809018413225516 2.8837922668189577 -2.5192430175953078
		-0.69272464957007074 2.7675327644657273 1.9639941417744247
		-0.86528505727627802 -2.7376136450023836 1.8301890932837672
		3.3033457189066091 -2.1637457392878474 1.9917739855373284
		3.7678947976055142 2.2982851052982767 2.1255790340279752
		3.9425292630433368 2.4145446076515213 -2.3576581253417679
		3.477980184344446 -2.0474862369347022 -2.4914631738324111
		3.3033457189066091 -2.1637457392878474 1.9917739855373284
		3.477980184344446 -2.0474862369347022 -2.4914631738324111
		-0.690650591838466 -2.6213541426490394 -2.6530480660859759
		;
createNode transform -n "Pinky2_R_LOC" -p "Pinky1_R_Ctrl";
	rename -uid "CE5EE6A2-4A3E-EBD5-11F2-55A9830FB1E0";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 4.9147812635928538 1.4210854715202004e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0.74512696965147063 -2.5763429418275532 -0.49889917558850366 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999978 ;
createNode locator -n "Pinky2_R_LOCShape" -p "Pinky2_R_LOC";
	rename -uid "36B8CAC9-43FB-6EED-FCA2-24865562710F";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 3.5527136788005009e-15 ;
createNode transform -n "Pinky2_R_Ctrl" -p "Pinky2_R_LOC";
	rename -uid "33CADD63-4D8F-6CF3-369D-CAA74B94680C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.033930199551214457 -0.0097849558653138047 -0.022844972628988103 ;
	setAttr ".sp" -type "double3" -0.033930199551214457 -0.0097849558653138047 -0.022844972628988103 ;
createNode nurbsCurve -n "Pinky2_R_CtrlShape" -p "Pinky2_R_Ctrl";
	rename -uid "F5D3DF54-4A27-67AC-D7DD-8088BF421690";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.31331622539256188 2.2964240939598426 2.144775756724723
		-0.38464241228354012 2.2712299583613316 -2.2766076348537538
		3.8029926625086716 1.8676104847099282 -2.1913881246417404
		3.8827302082838031 1.8850754710458375 2.2298888586264525
		-0.31331622539256188 2.2964240939598426 2.144775756724723
		-0.25789259220562855 -2.1251922314745997 2.1690771201968602
		-0.32921877909662811 -2.1503863670729828 -2.2523062713816344
		-0.38464241228354012 2.2712299583613316 -2.2766076348537538
		-0.31331622539256188 2.2964240939598426 2.144775756724723
		-0.25789259220562855 -2.1251922314745997 2.1690771201968602
		3.7164432409537511 -2.5337799833423702 2.2503432579194609
		3.8827302082838031 1.8850754710458375 2.2298888586264525
		3.8029926625086716 1.8676104847099282 -2.1913881246417404
		3.6367056951785344 -2.5512449696783079 -2.1709337253487675
		3.7164432409537511 -2.5337799833423702 2.2503432579194609
		3.6367056951785344 -2.5512449696783079 -2.1709337253487675
		-0.32921877909662811 -2.1503863670729828 -2.2523062713816344
		;
createNode transform -n "Pinky3_R_LOC" -p "Pinky2_R_Ctrl";
	rename -uid "ACC5428F-42EA-AA6A-3C7D-7381FC9C8728";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 4.7040016247759908 0 0 ;
	setAttr ".r" -type "double3" 0.2531411180250131 -0.87152544039460145 -0.076900779160680138 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode locator -n "Pinky3_R_LOCShape" -p "Pinky3_R_LOC";
	rename -uid "A70CC212-401C-89E1-C894-E983C811CA6D";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 3.5527136788005009e-15 ;
createNode transform -n "Pinky3_R_Ctrl" -p "Pinky3_R_LOC";
	rename -uid "D2CAC470-4BAF-CFFD-AEF1-B0B57F6738D8";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -0.034250136129941211 -0.0099497230543477144 -0.022311768410066435 ;
	setAttr ".sp" -type "double3" -0.034250136129941211 -0.0099497230543477144 -0.022311768410066435 ;
createNode nurbsCurve -n "Pinky3_R_CtrlShape" -p "Pinky3_R_Ctrl";
	rename -uid "F680E15E-4489-92C4-FE19-F28394F99E09";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.09994374974444753 1.8432922359930899 2.2044591431723255
		-0.25458643491056421 1.8868366692686891 -2.0570167694431589
		5.1476389821696742 1.344568296429955 -1.5120768043323345
		5.2554612094115427 1.3142076118962649 1.4591715527557341
		-0.09994374974444753 1.8432922359930899 2.2044591431723255
		-0.32873201130404794 -2.4149237881137395 2.1692504090366498
		-0.4833746964701362 -2.3713793548381119 -2.0922255035788098
		-0.25458643491056421 1.8868366692686891 -2.0570167694431589
		-0.09994374974444753 1.8432922359930899 2.2044591431723255
		-0.32873201130404794 -2.4149237881137395 2.1692504090366498
		5.0959421225458996 -1.6547678382049611 1.4346228058893686
		5.2554612094115427 1.3142076118962649 1.4591715527557341
		5.1476389821696742 1.344568296429955 -1.5120768043323345
		4.9881198953040879 -1.624407153671342 -1.5366255511986964
		5.0959421225458996 -1.6547678382049611 1.4346228058893686
		4.9881198953040879 -1.624407153671342 -1.5366255511986964
		-0.4833746964701362 -2.3713793548381119 -2.0922255035788098
		;
createNode transform -n "Clav2_L_LOC" -p "Spine3_Ctrl";
	rename -uid "3A2245C7-4F3B-9EA4-67EA-02A7D0255F42";
	setAttr ".t" -type "double3" 11.0943 99.8406 -1.1276000000000002 ;
	setAttr ".r" -type "double3" 2.6902957349445313 -0.70459658272453618 -75.334375987580358 ;
createNode locator -n "Clav2_L_LOCShape" -p "Clav2_L_LOC";
	rename -uid "13503B12-4DDD-1407-3327-EA9F4457A9A3";
	setAttr -k off ".v";
createNode transform -n "Clav2_L_Ctrl" -p "Clav2_L_LOC";
	rename -uid "053D50B1-4DE7-A79E-1E24-0CB378A81316";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 9.7818053745868383e-07 2.4849654778336117e-08 3.223713385125393e-08 ;
	setAttr ".sp" -type "double3" 9.7818053745868383e-07 2.4849654778336117e-08 3.223713385125393e-08 ;
createNode nurbsCurve -n "Clav2_L_CtrlShape" -p "Clav2_L_Ctrl";
	rename -uid "49FE0A53-487D-2545-4004-37B55BE6DB50";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 41 0 no 3
		42 0 2 4.0871430000000002 6.1743430000000004 8.2614889999999992 10.348646 12.435838
		 14.522990999999999 16.610143000000001 18.697337999999998 20.784490000000002 22.871642000000001
		 24.958836000000002 27.045988999999999 29.133140999999998 31.220334999999999 33.307487999999999
		 35.394638999999998 37.481833999999999 39.568986000000002 41.686399999999999 48.748496000000003
		 55.810591000000002 58.009692000000001 59.575055999999996 61.140450999999999 62.705815999999999
		 64.271180999999999 65.836574999999996 67.401939999999996 68.967304999999996 70.532698999999994
		 72.098063999999994 73.663428999999994 75.228823000000006 76.794188000000005 78.359554000000003
		 79.924946000000006 81.490313999999998 83.055674999999994 84.621072999999996 86.186430999999999
		
		42
		6.6259818636488763 -2.3047641590247632 -18.600073632208829
		7.9156341221589628 -2.6426691613345108 -18.600073632208829
		7.3863487829415817 -3.9275915107341035 -18.533179930998568
		6.5458844303177006 -5.0346050367789887 -18.470814848689571
		5.4501211725728371 -5.8902164830963564 -18.417119744265385
		4.1661054957873525 -6.4243504456007843 -18.376212852370017
		2.7878897081478171 -6.6129951313196731 -18.350380410149452
		1.4069860747433456 -6.4436227826311141 -18.341337758468747
		0.12044971095491697 -5.9140925298898361 -18.350380410149448
		-0.98818965144837856 -5.0738607285945161 -18.376212852370017
		-1.8453120437667947 -3.9787218444828665 -18.417119744265392
		-2.380737717674974 -2.6957185209515377 -18.470814848689574
		-2.5703721444917553 -1.3188062465042885 -18.533179930998568
		-2.4016239251418625 0.060581332198523796 -18.600073632208829
		-1.8722928032693176 1.3454916859705506 -18.666967333419084
		-1.0318381230373892 2.4525077463029419 -18.729332415728081
		0.063930938142618743 3.3081176720478158 -18.78302752015227
		1.3479433907975533 3.8422524793147232 -18.823934412047642
		2.7261611129153773 4.0308966581761183 -18.849766854268207
		4.1070634366367642 3.86152465264089 -18.858809505948916
		4.4643848502742003 5.2252804621515896 -18.92729034539234
		8.0044800816673529 2.1239535305243464 -18.825146580221812
		3.3984481326137082 1.1570136831367108 -18.723002815051281
		3.7695537649486544 2.5733808794710598 -18.794125521343034
		2.7338765040784385 2.7004105355774044 -18.787343556838795
		1.7002144177655505 2.5589267414929804 -18.767969209002509
		0.73720488242639659 2.1583262035691035 -18.737289064337283
		-0.084622327795344399 1.5166178353984705 -18.697017687506534
		-0.71496332287539111 0.68635716275888825 -18.65024394045825
		-1.1119613494136891 -0.27732637335123567 -18.600073632208829
		-1.2385231662992731 -1.3118675747306767 -18.549903323959391
		-1.0962966862664831 -2.3445505769089512 -18.503129576911125
		-0.69472752275919325 -3.3068040778956282 -18.46285820008038
		-0.051885279542118523 -4.1281578424055905 -18.432178055415157
		0.77959286823133445 -4.7583316775054367 -18.412803707578867
		1.7444959122821064 -5.1554790529162249 -18.406021743074628
		2.7801743169847994 -5.2825090087209432 -18.412803707578867
		3.8138351136454411 -5.1410248767315281 -18.432178055415157
		4.7768472282890446 -4.7404250146176397 -18.46285820008038
		5.5986699247279592 -4.0987154637795236 -18.503129576911125
		6.2290173680692664 -3.2684564806649314 -18.549903323959395
		6.6259818636488763 -2.3047641590247632 -18.600073632208829
		;
createNode transform -n "Shoulder_L_LOC" -p "Clav2_L_Ctrl";
	rename -uid "7D7B82D0-46AC-20FF-6A4A-2BB167D04DD5";
	setAttr ".t" -type "double3" 5.3922757223735971 7.1054273576010019e-15 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" -0.42928858131734077 1.3004322006934037 57.047358284629432 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode locator -n "Shoulder_L_LOCShape" -p "Shoulder_L_LOC";
	rename -uid "CEBF7C70-4B14-9221-9B26-52B9CB35BAC9";
	setAttr -k off ".v";
createNode transform -n "Shoulder_L_Ctrl" -p "Shoulder_L_LOC";
	rename -uid "40E63322-48ED-D421-3D1D-09B35F3216A1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.0206474279073063e-06 -2.529747433754892e-06 -3.2603334032543785e-08 ;
	setAttr ".sp" -type "double3" 1.0206474279073063e-06 -2.529747433754892e-06 -3.2603334032543785e-08 ;
createNode nurbsCurve -n "Shoulder_L_CtrlShape" -p "Shoulder_L_Ctrl";
	rename -uid "30613878-4BF0-07B2-6D1C-E4B5520412E4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6270056380620534 8.4483899708438912 -5.972347790803207
		3.3201721419757657 1.741732381678915 -8.7244894854499826
		4.1437199070660498 -4.9218925514319807 -5.9045796363053435
		4.6152258218050708 -7.6390237172399367 0.83551681167124903
		4.4584881160778522 -4.8180025295612836 7.5475427709578353
		3.7653216121641453 1.8886550596036926 10.299684465604615
		2.9417738470738559 8.5522799927145883 7.4797746164599737
		2.4702679323348296 11.269411158522573 0.73967816848338019
		2.6270056380620534 8.4483899708438912 -5.972347790803207
		3.3201721419757657 1.741732381678915 -8.7244894854499826
		4.1437199070660498 -4.9218925514319807 -5.9045796363053435
		;
createNode transform -n "Elbow_L_LOC" -p "Shoulder_L_Ctrl";
	rename -uid "42AAA538-41CB-9A78-2DAA-D1A704687A82";
	setAttr ".t" -type "double3" 14.119285348339723 2.8421709430404007e-14 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0.38270494509989761 -1.2432916286471423 1.1548983325179276 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "Elbow_L_LOCShape" -p "Elbow_L_LOC";
	rename -uid "F4AE4E27-43D4-FF03-234E-47B1208D5738";
	setAttr -k off ".v";
createNode transform -n "Elbow_L_Ctrl" -p "Elbow_L_LOC";
	rename -uid "05F5EB97-40DF-DD1E-D29E-4A9CEE12B1C4";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 2.4651361396621496e-07 -3.3980741562800176e-06 5.8071244035673431e-08 ;
	setAttr ".sp" -type "double3" 2.4651361396621496e-07 -3.3980741562800176e-06 5.8071244035673431e-08 ;
createNode nurbsCurve -n "Elbow_L_CtrlShape" -p "Elbow_L_Ctrl";
	rename -uid "4A2DF0BF-442E-E312-51CC-68B007B4A7EC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.52154045401883264 5.9943705514553045 -6.7765506188716804
		-0.011560393017331361 -0.15942609152693876 -9.1432992207103965
		0.47805081915557768 -6.1794044982078162 -6.4505436480462341
		0.66048557469897173 -8.5391429631469293 -0.27566359519011829
		0.42887606806374867 -5.8563386972363674 5.7641799489219281
		-0.081103992937727298 0.29745794574583329 8.1309285507606504
		-0.57071520511066165 6.3174363524267676 5.43817297809648
		-0.75314996065405193 8.6771748173658239 -0.73670707475963226
		-0.52154045401883264 5.9943705514553045 -6.7765506188716804
		-0.011560393017331361 -0.15942609152693876 -9.1432992207103965
		0.47805081915557768 -6.1794044982078162 -6.4505436480462341
		;
createNode transform -n "Wrist_L_LOC" -p "Elbow_L_Ctrl";
	rename -uid "671E7279-4A8C-9AD7-C10A-169DDE0D6EF1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 19.730097603996427 4.2632564145606011e-14 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" -0.24567467296511586 0.74260860369289883 -1.199621939999959 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "Wrist_L_LOCShape" -p "Wrist_L_LOC";
	rename -uid "8087F5BC-4E16-FB45-2916-F4B01F0BB73E";
	setAttr -k off ".v";
createNode transform -n "Wrist_L_Ctrl" -p "Wrist_L_LOC";
	rename -uid "0359E7F4-47BC-BA40-6742-2AB66B83090D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -1.1443549325917957e-06 -1.8553274117039109e-07 3.877916476824339e-08 ;
	setAttr ".sp" -type "double3" -1.1443549325917957e-06 -1.8553274117039109e-07 3.877916476824339e-08 ;
createNode nurbsCurve -n "Wrist_L_CtrlShape" -p "Wrist_L_Ctrl";
	rename -uid "BE952CED-434E-AE0E-A1C0-AC8AB6DB82DC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3849049710162795 7.5023714823520464 -8.7596107195439039
		-0.87408291584969788 -0.076141090658410349 -11.556426576923572
		-0.3472963618531768 -7.4059005365440527 -8.1631842744358831
		-0.11312972788205933 -10.193233180837311 -0.56759913246000671
		-0.30875465226140619 -6.8053573633564639 6.7809380869941576
		-0.81957670742797895 0.77315520965400708 9.5777539443738355
		-1.3463632614245054 8.1029146555396352 6.1845116418861377
		-1.5805298953956086 10.890247299832851 -1.4110735000897403
		-1.3849049710162795 7.5023714823520464 -8.7596107195439039
		-0.87408291584969788 -0.076141090658410349 -11.556426576923572
		-0.3472963618531768 -7.4059005365440527 -8.1631842744358831
		;
createNode transform -n "Thumb1_L_LOC" -p "Wrist_L_Ctrl";
	rename -uid "A240D063-4866-0240-76F3-1C968924772A";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 4.165518867100829 -0.58978531563352021 3.7994982604189005 ;
	setAttr ".r" -type "double3" 24.474903985088012 -39.288795152085129 -17.405909815540234 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999967 ;
createNode locator -n "Thumb1_L_LOCShape" -p "Thumb1_L_LOC";
	rename -uid "FD83D146-4274-C750-0506-C38C2893470E";
	setAttr -k off ".v";
createNode transform -n "Thumb1_L_Ctrl" -p "Thumb1_L_LOC";
	rename -uid "F6D4C927-475A-2DD2-596D-7C8F569BCDE3";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.0799079150104616 0.54683192775070211 0.046953405078724586 ;
	setAttr ".sp" -type "double3" 1.0799079150104616 0.54683192775070211 0.046953405078724586 ;
createNode nurbsCurve -n "Thumb1_L_CtrlShape" -p "Thumb1_L_Ctrl";
	rename -uid "E0D49947-45FA-A139-4C25-11A115000431";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.37227726946132655 0.4362809110152881 4.5713622518412542
		-0.70279105806362185 4.2882999438153604 -0.17190088183983931
		5.3044361044034014 4.4176525773215189 -0.039160108059228094
		5.6198085511272939 0.95190638218842594 3.9934626668152653
		-0.37227726946132655 0.4362809110152881 4.5713622518412542
		-0.54242985357509177 -3.8313963767315897 1.3564059958714267
		-0.87294364217750964 0.020622656068539413 -3.3868571378095567
		-0.70279105806362185 4.2882999438153604 -0.17190088183983931
		-0.37227726946132655 0.4362809110152881 4.5713622518412542
		-0.54242985357509177 -3.8313963767315897 1.3564059958714267
		5.6440220627311728 -3.2173495246531303 0.70496263685949856
		5.6198085511272939 0.95190638218842594 3.9934626668152653
		5.3044361044034014 4.4176525773215189 -0.039160108059228094
		5.3286496160072918 0.2483966704799343 -3.3276601380150055
		5.6440220627311728 -3.2173495246531303 0.70496263685949856
		5.3286496160072918 0.2483966704799343 -3.3276601380150055
		-0.87294364217750964 0.020622656068539413 -3.3868571378095567
		;
createNode transform -n "Thumb2_L_LOC" -p "Thumb1_L_Ctrl";
	rename -uid "0CAB0B87-499F-837B-16FE-D58039C2CA05";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 7.1709225523986744 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -0.59081226799141895 1.3369837834468137 3.0130601667326968 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "Thumb2_L_LOCShape" -p "Thumb2_L_LOC";
	rename -uid "F01A60F6-4401-B281-CAF2-FF8CAE00020F";
	setAttr -k off ".v";
createNode transform -n "Thumb2_L_Ctrl" -p "Thumb2_L_LOC";
	rename -uid "F71A5442-461C-8DC3-B3F5-32AECB87384D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -6.5898404866260307e-07 3.6993284453501474e-06 -8.0291896509265825e-07 ;
	setAttr ".sp" -type "double3" -6.5898404866260307e-07 3.6993284453501474e-06 -8.0291896509265825e-07 ;
createNode nurbsCurve -n "Thumb2_L_CtrlShape" -p "Thumb2_L_Ctrl";
	rename -uid "3724F8D1-4965-4DF7-5838-D38875AA348C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.85144695716779228 1.1193679144247994 3.6152777816548394
		-0.52085176187922411 4.1358018921847446 -0.34785673952434948
		4.5003294584320486 3.5581374448740348 -0.40528396272134515
		4.1766105608954138 0.60444454283407367 3.4754183471396871
		-0.85144695716779228 1.1193679144247994 3.6152777816548394
		-1.2716053688016773 -2.8214381617111144 0.58078989442886098
		-0.94101017351302296 0.19499581604893024 -3.3823446267504309
		-0.52085176187922411 4.1358018921847446 -0.34785673952434948
		-0.85144695716779228 1.1193679144247994 3.6152777816548394
		-1.2716053688016773 -2.8214381617111144 0.58078989442886098
		3.7651913396145318 -3.2543937480812559 0.50404705245558645
		4.1766105608954138 0.60444454283407367 3.4754183471396871
		4.5003294584320486 3.5581374448740348 -0.40528396272134515
		4.088910237151115 -0.30070084604119529 -3.3766552574054174
		3.7651913396145318 -3.2543937480812559 0.50404705245558645
		4.088910237151115 -0.30070084604119529 -3.3766552574054174
		-0.94101017351302296 0.19499581604893024 -3.3823446267504309
		;
createNode transform -n "Thumb3_L_LOC" -p "Thumb2_L_Ctrl";
	rename -uid "00D43579-4531-771B-42AF-999D01CAA1A9";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.5007564967102329 1.4210854715202004e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -0.466187818036152 0.9847776755048121 -1.4977885915365479 ;
createNode locator -n "Thumb3_L_LOCShape" -p "Thumb3_L_LOC";
	rename -uid "3BA5AC88-4EA3-ED04-7D64-3FB9C00C77C6";
	setAttr -k off ".v";
createNode transform -n "Thumb3_L_Ctrl" -p "Thumb3_L_LOC";
	rename -uid "F10154FA-473B-A19E-F613-429E10AC598D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 2.051394982771626e-06 -2.9588439218741769e-06 -3.1239842357422276e-07 ;
	setAttr ".sp" -type "double3" 2.051394982771626e-06 -2.9588439218741769e-06 -3.1239842357422276e-07 ;
createNode nurbsCurve -n "Thumb3_L_CtrlShape" -p "Thumb3_L_Ctrl";
	rename -uid "F4E373FA-4433-43B6-7193-4E88C04845A6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88664677106707401 0.25108003434229431 3.3076589724431891
		-0.67879438515087642 3.5091050685638265 -0.63372593551750356
		6.2014669022655937 2.77512385002413 0.056584379725013179
		6.0647707233976575 0.63245143916334712 2.6486751752728281
		-0.88664677106707401 0.25108003434229431 3.3076589724431891
		-0.74774030865409813 -3.4530480228076073 0.32074040670808301
		-0.53988792273788277 -0.19502298858608924 -3.6206445012526984
		-0.67879438515087642 3.5091050685638265 -0.63372593551750356
		-0.88664677106707401 0.25108003434229431 3.3076589724431891
		-0.74774030865409813 -3.4530480228076073 0.32074040670808301
		5.8456003900224225 -1.9505889171497017 0.50192589308596425
		6.0647707233976575 0.63245143916334712 2.6486751752728281
		6.2014669022655937 2.77512385002413 0.056584379725013179
		5.9822965688903942 0.19208349371093902 -2.0901649024619076
		5.8456003900224225 -1.9505889171497017 0.50192589308596425
		5.9822965688903942 0.19208349371093902 -2.0901649024619076
		-0.53988792273788277 -0.19502298858608924 -3.6206445012526984
		;
createNode transform -n "Index1_L_LOC" -p "Wrist_L_Ctrl";
	rename -uid "B842CC02-45E3-6F41-D04B-B5B2052F7FF5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 16.081561056895044 -0.30365566588956483 4.6898725458636852 ;
	setAttr ".r" -type "double3" 6.1774192250939031 -18.241728495374069 -0.76939805333190814 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
createNode locator -n "Index1_L_LOCShape" -p "Index1_L_LOC";
	rename -uid "2B554221-426F-B087-5B6D-C6B1CF39D6EA";
	setAttr -k off ".v";
createNode transform -n "Index1_L_Ctrl" -p "Index1_L_LOC";
	rename -uid "2A662985-48DD-FBAA-9D8D-3786D578E5F8";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -8.0905760668770199e-07 3.2032110652835399e-06 -1.5164155087177278e-07 ;
	setAttr ".sp" -type "double3" -8.0905760668770199e-07 3.2032110652835399e-06 -1.5164155087177278e-07 ;
createNode nurbsCurve -n "Index1_L_CtrlShape" -p "Index1_L_Ctrl";
	rename -uid "01C6DD6E-4BC7-80EF-4411-7A875F9B7A7A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.0021036303443687 2.8240261103073578 2.8501595748798128
		-3.0296486012796642 3.3834379373657129 -2.379090046756918
		3.192696665445844 2.7803500872386167 -2.5615212907474856
		3.2246223363595234 2.6156777284406871 2.6231626064245752
		-3.0021036303443687 2.8240261103073578 2.8501595748798128
		-2.2971446355119376 -2.5836052794821285 2.6740651931488237
		-2.3307248377318857 -2.4103988612540803 -2.7793122530043561
		-3.0296486012796642 3.3834379373657129 -2.379090046756918
		-3.0021036303443687 2.8240261103073578 2.8501595748798128
		-2.2971446355119376 -2.5836052794821285 2.6740651931488237
		3.4461789176262982 -2.5372373454370489 2.6222067565998177
		3.2246223363595234 2.6156777284406871 2.6231626064245752
		3.192696665445844 2.7803500872386167 -2.5615212907474856
		3.4142532467126543 -2.3725649866389915 -2.5624771405722662
		3.4461789176262982 -2.5372373454370489 2.6222067565998177
		3.4142532467126543 -2.3725649866389915 -2.5624771405722662
		-2.3307248377318857 -2.4103988612540803 -2.7793122530043561
		;
createNode transform -n "Index2_L_LOC" -p "Index1_L_Ctrl";
	rename -uid "F9B9386B-4B0B-FFE7-C514-D59E922DCD0B";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 4.6084344190733511 -1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -0.58734384814436591 1.8572562730331044 0.5286273708556456 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode locator -n "Index2_L_LOCShape" -p "Index2_L_LOC";
	rename -uid "3AB78930-48E2-BC6A-CE9F-FC83D08E7C50";
	setAttr -k off ".v";
createNode transform -n "Index2_L_Ctrl" -p "Index2_L_LOC";
	rename -uid "3A6A0F87-4D81-1303-6AD4-A3BF87AD2C17";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.1316282072803006e-14 -1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -9.4497823255323965e-07 -2.5901081954771144e-06 4.0427604552917284e-07 ;
	setAttr ".sp" -type "double3" -9.4497823255323965e-07 -2.5901081954771144e-06 4.0427604552917273e-07 ;
	setAttr ".spt" -type "double3" 0 0 1.0587911840678757e-22 ;
createNode nurbsCurve -n "Index2_L_CtrlShape" -p "Index2_L_Ctrl";
	rename -uid "DE19CCD9-4B2C-208D-9420-59B4BE57EF2E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.81162591925757965 2.5798637374161331 2.3267257909090553
		-0.66714429767842631 2.5856606060229836 -2.5237052005014213
		4.9884891696972602 2.4480517978853129 -2.3156778337770803
		4.8522594160297174 2.4425860094084584 2.2577275026194563
		-0.81162591925757965 2.5798637374161331 2.3267257909090553
		-0.62336508422877301 -2.2690688428548498 2.3265385097525009
		-0.47888346264942072 -2.2632719742482976 -2.5238924816580273
		-0.66714429767842631 2.5856606060229836 -2.5237052005014213
		-0.81162591925757965 2.5798637374161331 2.3267257909090553
		-0.62336508422877301 -2.2690688428548498 2.3265385097525009
		5.029767993943679 -2.1294064955278174 2.2575509177670572
		4.8522594160297174 2.4425860094084584 2.2577275026194563
		4.9884891696972602 2.4480517978853129 -2.3156778337770803
		5.1659977476113284 -2.1239407070510197 -2.3158544186295273
		5.029767993943679 -2.1294064955278174 2.2575509177670572
		5.1659977476113284 -2.1239407070510197 -2.3158544186295273
		-0.47888346264942072 -2.2632719742482976 -2.5238924816580273
		;
createNode transform -n "Index3_L_LOC" -p "Index2_L_Ctrl";
	rename -uid "7126323C-4FA1-BB36-DA45-1D8DF3A25617";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.8552165615372189 -4.2632564145606011e-14 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" -0.28851164678582913 1.0484638492600602 2.156577882989823 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode locator -n "Index3_L_LOCShape" -p "Index3_L_LOC";
	rename -uid "79369691-48AF-380D-01EA-CF96ADE59649";
	setAttr -k off ".v";
createNode transform -n "Index_3_L_Ctrl" -p "Index3_L_LOC";
	rename -uid "33046919-41AC-30CD-0FC6-1381750B5D1F";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" -2.3200734986517095e-06 -3.119551806207709e-06 7.7626633654404031e-07 ;
	setAttr ".sp" -type "double3" -2.3200734986517091e-06 -3.1195518062077099e-06 7.7626633654404031e-07 ;
	setAttr ".spt" -type "double3" -4.2351647362715026e-22 8.4703294725430015e-22 0 ;
createNode nurbsCurve -n "Index_3_L_CtrlShape" -p "Index_3_L_Ctrl";
	rename -uid "F0DD4D04-4DB0-D4F9-43B1-0194FCE79EF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.20804548290389846 2.5966782670028579 2.2941068729576344
		-0.063114413552192161 2.4943452203364274 -2.539449408462378
		6.5302213043628967 2.1152694466345991 -2.1557185538323029
		6.4073343606159057 2.2020375592650083 1.9426501500586486
		-0.20804548290389846 2.5966782670028579 2.2941068729576344
		-0.28472926801421039 -2.2384897150336087 2.3941747276813423
		-0.13979819866256094 -2.3408227617000392 -2.4393815537386416
		-0.063114413552192161 2.4943452203364274 -2.539449408462378
		-0.20804548290389846 2.5966782670028579 2.2941068729576344
		-0.28472926801421039 -2.2384897150336087 2.3941747276813423
		6.3423142373993215 -1.8976977043558918 2.0274976081593561
		6.4073343606159057 2.2020375592650083 1.9426501500586486
		6.5302213043628967 2.1152694466345991 -2.1557185538323029
		6.4652011811464547 -1.9844658169863152 -2.0708710957316026
		6.3423142373993215 -1.8976977043558918 2.0274976081593561
		6.4652011811464547 -1.9844658169863152 -2.0708710957316026
		-0.13979819866256094 -2.3408227617000392 -2.4393815537386416
		;
createNode transform -n "Middle1_L_LOC" -p "Wrist_L_Ctrl";
	rename -uid "E32B4368-42C7-4C60-3CE4-04AF1B708D59";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 16.725412704000465 -0.039790784140151914 0.24682764991282879 ;
	setAttr ".r" -type "double3" 0.23025362779586245 -0.68913834527164897 -0.17133760912896431 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
createNode locator -n "Middle1_L_LOCShape" -p "Middle1_L_LOC";
	rename -uid "73FA33DB-44DA-59A2-0352-C9A618657673";
	setAttr -k off ".v";
createNode transform -n "Middle1_L_Ctrl" -p "Middle1_L_LOC";
	rename -uid "EC188578-4CFD-1512-E1FB-6DA91EFE736A";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.2447620179045771e-07 -2.7381497602618765e-06 2.1748861156467569e-08 ;
	setAttr ".sp" -type "double3" 1.2447620179045771e-07 -2.7381497602618765e-06 2.1748861156467569e-08 ;
createNode nurbsCurve -n "Middle1_L_CtrlShape" -p "Middle1_L_Ctrl";
	rename -uid "63EFCA75-4A02-809B-C5F8-5191C16996A3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.759289664841603 3.8179723726700843 2.3601536360824382
		-1.8035467918446066 3.6707865558876875 -2.5879140575230259
		4.4414719253439756 2.5899154575794796 -2.6486173641871131
		4.4975186657290607 2.7018137159569591 2.299450329418347
		-1.759289664841603 3.8179723726700843 2.3601536360824382
		-1.1184744173908143 -3.0062816361747906 2.4718992160491382
		-1.162731544393818 -3.1534674529573294 -2.4761684775563229
		-1.8035467918446066 3.6707865558876875 -2.5879140575230259
		-1.759289664841603 3.8179723726700843 2.3601536360824382
		-1.1184744173908143 -3.0062816361747906 2.4718992160491382
		4.5115984397597018 -2.2465548074213046 2.4111959093850528
		4.4975186657290607 2.7018137159569591 2.299450329418347
		4.4414719253439756 2.5899154575794796 -2.6486173641871131
		4.4555516993745741 -2.3584530657988267 -2.5368717842204065
		4.5115984397597018 -2.2465548074213046 2.4111959093850528
		4.4555516993745741 -2.3584530657988267 -2.5368717842204065
		-1.162731544393818 -3.1534674529573294 -2.4761684775563229
		;
createNode transform -n "Middle2_L_LOC" -p "Middle1_L_Ctrl";
	rename -uid "149F68FC-49C9-9FFC-1805-9AB3091C5EAB";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 6.0545986524175248 1.4210854715202004e-14 -4.4853010194856324e-14 ;
	setAttr ".r" -type "double3" -0.33408193510437495 1.1172927563485988 1.8261559484160728 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "Middle2_L_LOCShape" -p "Middle2_L_LOC";
	rename -uid "6FB85E35-4317-EC32-0A86-87A9856098E8";
	setAttr -k off ".v";
createNode transform -n "Middle2_L_Ctrl" -p "Middle2_L_LOC";
	rename -uid "107E002F-4C37-CC4B-3DEF-05BC6D2E9175";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 2.657496978031304e-06 3.9290542588332755e-06 -9.7876446947253726e-08 ;
	setAttr ".sp" -type "double3" 2.657496978031304e-06 3.9290542588332755e-06 -9.7876446947253726e-08 ;
createNode nurbsCurve -n "Middle2_L_CtrlShape" -p "Middle2_L_Ctrl";
	rename -uid "4EA25962-423D-F2EE-BEF3-50AE58B06470";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.81986598897479723 3.1090448571643066 2.4031880184255598
		-0.7510809214205878 3.0714462248925258 -2.6085096366168545
		4.945386488876899 2.6662037620559431 -2.5419244996250097
		4.8766014213227109 2.7038023943277238 2.4697731554173936
		-0.81986598897479723 3.1090448571643066 2.4031880184255598
		-1.0115173449182393 -1.8994785852620026 2.4381324408000498
		-0.94273227736402276 -1.9370772175338828 -2.5735652142423593
		-0.7510809214205878 3.0714462248925258 -2.6085096366168545
		-0.81986598897479723 3.1090448571643066 2.4031880184255598
		-1.0115173449182393 -1.8994785852620026 2.4381324408000498
		4.6849500653791196 -2.3047210480986706 2.5047175777918893
		4.8766014213227109 2.7038023943277238 2.4697731554173936
		4.945386488876899 2.6662037620559431 -2.5419244996250097
		4.7537351329334143 -2.3423196803705224 -2.5069800772505122
		4.6849500653791196 -2.3047210480986706 2.5047175777918893
		4.7537351329334143 -2.3423196803705224 -2.5069800772505122
		-0.94273227736402276 -1.9370772175338828 -2.5735652142423593
		;
createNode transform -n "Middle3_L_LOC" -p "Middle2_L_Ctrl";
	rename -uid "13D2FD4E-435C-FF77-B1ED-C49959BA7DE0";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 6.4117483263147577 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -0.23401248077244891 0.90644708339403524 2.1687970967985324 ;
createNode locator -n "Middle3_L_LOCShape" -p "Middle3_L_LOC";
	rename -uid "44F47020-483B-84A6-8961-12843BC71160";
	setAttr -k off ".v";
createNode transform -n "Middle3_L_Ctrl" -p "Middle3_L_LOC";
	rename -uid "06DCF269-469A-CC98-51A4-CB97FEA98C00";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.9988051889185954e-06 2.3191112745735154e-06 -6.0628627562842041e-08 ;
	setAttr ".sp" -type "double3" 1.9988051889185954e-06 2.3191112745735154e-06 -6.0628627562842041e-08 ;
createNode nurbsCurve -n "Middle3_L_CtrlShape" -p "Middle3_L_Ctrl";
	rename -uid "1B46E8F3-47CA-1B97-1CB2-159E32326F4A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.55770859459219224 2.8080128112836462 2.3260209114869146
		-0.4270670166268431 2.7432130141240378 -2.5481011190895257
		6.6022918861575022 2.2074602973580681 -1.9683571230443593
		6.535414788964971 2.2156829591348952 2.0124304040376875
		-0.55770859459219224 2.8080128112836462 2.3260209114869146
		-0.97712669460352686 -2.0499265452480699 2.3793638604062695
		-0.84648511663796455 -2.1147263424076073 -2.4947581701701753
		-0.4270670166268431 2.7432130141240378 -2.5481011190895257
		-0.55770859459219224 2.8080128112836462 2.3260209114869146
		-0.97712669460352686 -2.0499265452480699 2.3793638604062695
		6.6787504879161759 -1.7630795933019954 2.0230569179979598
		6.535414788964971 2.2156829591348952 2.0124304040376875
		6.6022918861575022 2.2074602973580681 -1.9683571230443593
		6.7456275851087568 -1.7713022550789219 -1.9577306090840869
		6.6787504879161759 -1.7630795933019954 2.0230569179979598
		6.7456275851087568 -1.7713022550789219 -1.9577306090840869
		-0.84648511663796455 -2.1147263424076073 -2.4947581701701753
		;
createNode transform -n "Ring1_L_LOC" -p "Wrist_L_Ctrl";
	rename -uid "26CDE82D-4BE1-48EB-ACEC-699DFB0672F5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 15.821825974697653 0.20985311830467879 -4.4981270460622511 ;
	setAttr ".r" -type "double3" -5.050985994665826 15.196967979142849 -0.32804452146418045 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode locator -n "Ring1_L_LOCShape" -p "Ring1_L_LOC";
	rename -uid "9B57001E-4922-CA16-9271-0AA3A281BAB8";
	setAttr -k off ".v";
createNode transform -n "Ring1_L_Ctrl" -p "Ring1_L_LOC";
	rename -uid "A3D49E72-487C-7789-9CFA-908ABDC00948";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 3.8294184889764438e-07 2.9859437233881181e-06 3.7474744196686061e-07 ;
	setAttr ".sp" -type "double3" 3.8294184889764438e-07 2.9859437233881181e-06 3.7474744196686061e-07 ;
createNode nurbsCurve -n "Ring1_L_CtrlShape" -p "Ring1_L_Ctrl";
	rename -uid "AA327FD3-476D-478E-90D7-45B6FF91BDFB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.5708970227886141 2.9994844633367279 2.0499402654153887
		-1.400125468623223 3.0211588362508905 -2.5746375717814267
		4.2120339594246268 2.5211675145277894 -2.4907224627122169
		3.9715057709748898 2.4679003519996883 2.2875450178573011
		-1.5708970227886141 2.9994844633367279 2.0499402654153887
		-0.94696728904983729 -2.8383182705105128 2.0202730678816962
		-0.77619573488455984 -2.8166438975961654 -2.6043047693151369
		-1.400125468623223 3.0211588362508905 -2.5746375717814267
		-1.5708970227886141 2.9994844633367279 2.0499402654153887
		-0.94696728904983729 -2.8383182705105128 2.0202730678816962
		3.8478776142715994 -2.3147456189130367 2.2280058568586316
		3.9715057709748898 2.4679003519996883 2.2875450178573011
		4.2120339594246268 2.5211675145277894 -2.4907224627122169
		4.0884058027213577 -2.2614784563850634 -2.5502616237108846
		3.8478776142715994 -2.3147456189130367 2.2280058568586316
		4.0884058027213577 -2.2614784563850634 -2.5502616237108846
		-0.77619573488455984 -2.8166438975961654 -2.6043047693151369
		;
createNode transform -n "Ring2_L_LOC" -p "Ring1_L_Ctrl";
	rename -uid "674489BC-475D-39EB-6942-8C8A541622E1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.0491986356648724 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.40150228668169408 -1.1757252931635405 -0.89782213815731071 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "Ring2_L_LOCShape" -p "Ring2_L_LOC";
	rename -uid "F7C7F4AE-4598-A070-11A4-FEAD052B0912";
	setAttr -k off ".v";
createNode transform -n "Ring2_L_Ctrl" -p "Ring2_L_LOC";
	rename -uid "0440A71A-425F-C136-5372-CD98999E2AD2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -5.7614081327983513e-07 1.7899943713928224e-06 2.2385015974180078e-07 ;
	setAttr ".sp" -type "double3" -5.7614081327983513e-07 1.7899943713928224e-06 2.2385015974180078e-07 ;
createNode nurbsCurve -n "Ring2_L_CtrlShape" -p "Ring2_L_Ctrl";
	rename -uid "A5605CC6-421C-EA25-528F-EF97A9B64048";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.37971236095446415 2.7068921979770977 2.317910797878703
		-0.2071938366659225 2.7582187904083639 -2.4671830694373158
		4.9891701745177599 2.8390069693011242 -2.4212682548557609
		4.816651650229133 2.7876803768697442 2.3638256124601096
		-0.37971236095446415 2.7068921979770977 2.317910797878703
		-0.43748995934763002 -2.0809388766182337 2.2644717709132962
		-0.26497143505913812 -2.0296122841868964 -2.5206220964027324
		-0.2071938366659225 2.7582187904083639 -2.4671830694373158
		-0.37971236095446415 2.7068921979770977 2.317910797878703
		-0.43748995934763002 -2.0809388766182337 2.2644717709132962
		4.7588740518360382 -2.0001506977253172 2.3103865854947294
		4.816651650229133 2.7876803768697442 2.3638256124601096
		4.9891701745177599 2.8390069693011242 -2.4212682548557609
		4.9313925761245301 -1.9488241052939799 -2.4747072818211802
		4.7588740518360382 -2.0001506977253172 2.3103865854947294
		4.9313925761245301 -1.9488241052939799 -2.4747072818211802
		-0.26497143505913812 -2.0296122841868964 -2.5206220964027324
		;
createNode transform -n "Ring3_L_LOC" -p "Ring2_L_Ctrl";
	rename -uid "54FA658F-4C7C-ED0E-64AC-76B9C2AF9484";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.8853171566535138 0 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 0.044725055041763551 -0.18660743937172625 5.3739617148863816 ;
createNode locator -n "Ring3_L_LOCShape" -p "Ring3_L_LOC";
	rename -uid "C946FEBF-45A3-CFDC-4793-E49BAD49DD83";
	setAttr -k off ".v";
createNode transform -n "Ring3_L_Ctrl" -p "Ring3_L_LOC";
	rename -uid "E2C05D3B-40A1-F4E5-2478-C3BBF173ABEE";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 2.4102214055687909e-06 -4.5136897597330972e-07 4.0976397563952105e-07 ;
	setAttr ".sp" -type "double3" 2.4102214055687909e-06 -4.5136897597330972e-07 4.0976397563952105e-07 ;
createNode nurbsCurve -n "Ring3_L_CtrlShape" -p "Ring3_L_Ctrl";
	rename -uid "A1ED3FD6-4A9B-F645-D4ED-3F90B798585E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.49714943488363872 3.1890777025791124 2.4940500784619584
		-0.38831385626365034 3.1448520421449757 -2.6159259075302952
		6.6974788869174091 1.7301085436437376 -1.9992232847818006
		6.6106030819254187 1.765410784879748 2.0797119577280103
		-0.49714943488363872 3.1890777025791124 2.4940500784619584
		-0.78830103046703925 -1.9138082667817997 2.5320132411609801
		-0.67946545184703666 -1.9580339272157659 -2.5779627448312503
		-0.38831385626365034 3.1448520421449757 -2.6159259075302952
		-0.49714943488363872 3.1890777025791124 2.4940500784619584
		-0.78830103046703925 -1.9138082667817997 2.5320132411609801
		6.3781971944235778 -2.3078649948873959 2.1100152864862807
		6.6106030819254187 1.765410784879748 2.0797119577280103
		6.6974788869174091 1.7301085436437376 -1.9992232847818006
		6.4650729994152769 -2.3431672361235201 -1.9689199560235782
		6.3781971944235778 -2.3078649948873959 2.1100152864862807
		6.4650729994152769 -2.3431672361235201 -1.9689199560235782
		-0.67946545184703666 -1.9580339272157659 -2.5779627448312503
		;
createNode transform -n "Pinky1_L_LOC" -p "Wrist_L_Ctrl";
	rename -uid "D7583FA4-45F3-EA44-6956-BFA5A5D4DA79";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 12.962226930152557 -0.40465003595109295 -7.6645506489218702 ;
	setAttr ".r" -type "double3" -11.692497713240614 35.904699281687378 -1.1332915933169243 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "Pinky1_L_LOCShape" -p "Pinky1_L_LOC";
	rename -uid "39AA9373-4C2B-E915-AED2-1C85287B8241";
	setAttr -k off ".v";
createNode transform -n "Pinky1_L_Ctrl" -p "Pinky1_L_LOC";
	rename -uid "36F27029-4556-56E3-8710-F0B36F72061D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -1.0543601938195479e-06 -3.0758164371036401e-07 -5.5665789844283609e-07 ;
	setAttr ".sp" -type "double3" -1.0543601938195479e-06 -3.0758164371036401e-07 -5.5665789844283609e-07 ;
createNode nurbsCurve -n "Pinky1_L_CtrlShape" -p "Pinky1_L_Ctrl";
	rename -uid "F655A76D-4489-23C6-3535-45B89CEE425C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.65974072622667279 2.7767658794375905 1.9884844622704776
		-0.4851218814095688 2.8930199377679315 -2.4947534467096162
		3.9754957232461408 2.4237493704624313 -2.3331842192678529
		3.8008768784290403 2.3074953121320902 2.1500536897122622
		-0.65974072622667279 2.7767658794375905 1.9884844622704776
		-0.83233009250579926 -2.7283797729360941 1.854685614041486
		-0.65771124768869882 -2.6121257146056251 -2.628552294938622
		-0.4851218814095688 2.8930199377679315 -2.4947534467096162
		-0.65974072622667279 2.7767658794375905 1.9884844622704776
		-0.83233009250579926 -2.7283797729360941 1.854685614041486
		3.3363042364987052 -2.1545332651118798 2.0162548414832742
		3.8008768784290403 2.3074953121320902 2.1500536897122622
		3.9754957232461408 2.4237493704624313 -2.3331842192678529
		3.5109230813158234 -2.0382792067816382 -2.4669830674968267
		3.3363042364987052 -2.1545332651118798 2.0162548414832742
		3.5109230813158234 -2.0382792067816382 -2.4669830674968267
		-0.65771124768869882 -2.6121257146056251 -2.628552294938622
		;
createNode transform -n "Pinky2_L_LOC" -p "Pinky1_L_Ctrl";
	rename -uid "AC65C77C-4FE4-A052-4548-D39ECA0D19EA";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 4.9147978862309429 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.74497352680720574 -2.5757681051651713 -0.49945592769727376 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "Pinky2_L_LOCShape" -p "Pinky2_L_LOC";
	rename -uid "B7383F85-46B3-F00E-45D4-BFAAF0730919";
	setAttr -k off ".v";
createNode transform -n "Pinky2_L_Ctrl" -p "Pinky2_L_LOC";
	rename -uid "4D6AC916-4779-4635-4DCE-01BB1B35C612";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.0212457937086583e-06 1.7566715087014018e-06 6.4248549946910316e-07 ;
	setAttr ".sp" -type "double3" 1.0212457937086583e-06 1.7566715087014018e-06 6.4248549946910316e-07 ;
createNode nurbsCurve -n "Pinky2_L_CtrlShape" -p "Pinky2_L_Ctrl";
	rename -uid "EAB5377F-4923-F96E-51E4-3AB0B6E7D332";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.27940956832511432 2.3062055151816026 2.167623835276224
		-0.35070750338159229 2.2810191778287816 -2.2537600564027542
		3.8369289140412519 1.8774191049832041 -2.1685146416613605
		3.9166382447562853 1.8948763325528546 2.2527628810161708
		-0.27940956832511432 2.3062055151816026 2.167623835276224
		-0.22396543943136038 -2.1154105960445264 2.1919174197629445
		-0.29526337448785256 -2.1405969333972621 -2.2294664719160551
		-0.35070750338159229 2.2810191778287816 -2.2537600564027542
		-0.27940956832511432 2.3062055151816026 2.167623835276224
		-0.22396543943136038 -2.1154105960445264 2.1919174197629445
		3.7503717847248339 -2.5239799360080184 2.27320809560943
		3.9166382447562853 1.8948763325528546 2.2527628810161708
		3.8369289140412519 1.8774191049832041 -2.1685146416613605
		3.6706624540097152 -2.5414371635776831 -2.1480694270681404
		3.7503717847248339 -2.5239799360080184 2.27320809560943
		3.6706624540097152 -2.5414371635776831 -2.1480694270681404
		-0.29526337448785256 -2.1405969333972621 -2.2294664719160551
		;
createNode transform -n "Pinky3_L_LOC" -p "Pinky2_L_Ctrl";
	rename -uid "9F71E6C4-4C4D-4555-09FD-FCAAB5F0CBF7";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 4.7040115036423842 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.25344903535825558 -0.87257618579972818 -0.076799600741366617 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "Pinky3_L_LOCShape" -p "Pinky3_L_LOC";
	rename -uid "564A7611-4CA9-A85B-A36E-DB90A35DB66C";
	setAttr -k off ".v";
createNode transform -n "Pinky3_L_Ctrl" -p "Pinky3_L_LOC";
	rename -uid "0C4F9828-4EB8-6C33-6839-49AC0352FBDA";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 2.0341030477766253e-06 3.1587591706738749e-06 1.6209872590877694e-06 ;
	setAttr ".sp" -type "double3" 2.0341030477766253e-06 3.1587591706738749e-06 1.6209872590877694e-06 ;
createNode nurbsCurve -n "Pinky3_L_CtrlShape" -p "Pinky3_L_Ctrl";
	rename -uid "E26490A4-419B-C0AE-DAD5-FAAD1A54F4B4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.065670110386193414 1.8532526872486983 2.226766866114076
		-0.22036401706740349 1.8967818430382692 -2.0347073435202674
		5.1818694647026931 1.3545306182371917 -1.4898302671555257
		5.2897274053559897 1.3241805856949895 1.4814169025552033
		-0.065670110386193414 1.8532526872486983 2.226766866114076
		-0.29444677318386425 -2.4049641052913842 2.1915757047822275
		-0.44914067986504591 -2.3614349495017848 -2.0698985048520839
		-0.22036401706740349 1.8967818430382692 -2.0347073435202674
		-0.065670110386193414 1.8532526872486983 2.226766866114076
		-0.29444677318386425 -2.4049641052913842 2.1915757047822275
		5.1302164055482109 -1.6447954001844636 1.4568804080552837
		5.2897274053559897 1.3241805856949895 1.4814169025552033
		5.1818694647026931 1.3545306182371917 -1.4898302671555257
		5.0223584648949711 -1.6144453676423467 -1.5143667616554382
		5.1302164055482109 -1.6447954001844636 1.4568804080552837
		5.0223584648949711 -1.6144453676423467 -1.5143667616554382
		-0.44914067986504591 -2.3614349495017848 -2.0698985048520839
		;
createNode transform -n "Neck_Ctrl" -p "Spine3_Ctrl";
	rename -uid "2E41B204-4781-A50F-6B77-CCA9FDFBCBE8";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 0.13037469983100891 104.12886810302734 -2.3907060623168945 ;
	setAttr ".sp" -type "double3" 0.13037469983100891 104.12886810302734 -2.3907060623168945 ;
createNode nurbsCurve -n "Neck_CtrlShape" -p "Neck_Ctrl";
	rename -uid "325C0551-4755-1368-14CF-1D81D8CC14A5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.625653065424576 104.12886810302734 -19.469179532038428
		0.13037469983100963 104.12886810302734 -28.088203140908146
		-18.364903665762558 104.12886810302734 -19.469179532038424
		-26.025898804657103 104.12886810302734 1.3389841589087785
		-18.364903665762558 104.12886810302734 22.14714784985599
		0.13037469983100486 104.12886810302734 30.766171458725747
		18.625653065424576 104.12886810302734 22.147147849855983
		26.286648204319125 104.12886810302734 1.3389841589087847
		18.625653065424576 104.12886810302734 -19.469179532038428
		0.13037469983100963 104.12886810302734 -28.088203140908146
		-18.364903665762558 104.12886810302734 -19.469179532038424
		;
createNode transform -n "Head_Ctrl" -p "Neck_Ctrl";
	rename -uid "4F4C76FF-4468-ABD0-1C44-84AF2CEF7D18";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 0.011235544458031654 126.23626708984375 -5.0775976181030273 ;
	setAttr ".sp" -type "double3" 0.011235544458031654 126.23626708984375 -5.0775976181030273 ;
createNode nurbsCurve -n "Head_CtrlShape" -p "Head_Ctrl";
	rename -uid "B0C46DB3-4F2D-6970-4935-9CA8EC4D3F79";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-23.491696908762968 152.30667461032584 23.690988083948277
		-23.491696908762968 152.30667461032584 -23.843677214986833
		23.514167997679028 152.30667461032584 -23.843677214986833
		23.514167997679028 152.30667461032584 23.690988083948277
		-23.491696908762968 152.30667461032584 23.690988083948277
		-27.07065016253442 109.21651864919367 29.402092686957634
		-27.07065016253442 109.21651864919367 -29.554781817996187
		-23.491696908762968 152.30667461032584 -23.843677214986833
		-23.491696908762968 152.30667461032584 23.690988083948277
		-27.07065016253442 109.21651864919367 29.402092686957634
		27.093121251450476 109.21651864919367 29.402092686957634
		23.514167997679028 152.30667461032584 23.690988083948277
		23.514167997679028 152.30667461032584 -23.843677214986833
		27.093121251450476 109.21651864919367 -29.554781817996187
		27.093121251450476 109.21651864919367 29.402092686957634
		27.093121251450476 109.21651864919367 -29.554781817996187
		-27.07065016253442 109.21651864919367 -29.554781817996187
		;
createNode transform -n "Foot_R_Ctrl_Group" -p "Root_Ctrl";
	rename -uid "FBE9BFF1-43C3-DD9B-D677-AC9B7D4B99C6";
createNode transform -n "Toe_R_LOC" -p "Foot_R_Ctrl_Group";
	rename -uid "D64F057E-43B8-322C-91C9-F78940F7E9A3";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -18.254201092542679 1.0193555859743624 19.081932946147713 ;
	setAttr ".r" -type "double3" 1.9207000656273894 -98.528935800730409 -1.9421620846030911 ;
createNode locator -n "Toe_R_LOCShape" -p "Toe_R_LOC";
	rename -uid "0A01393D-4949-79F9-13E1-7A8729FD449E";
	setAttr -k off ".v";
createNode transform -n "Foot_R_Ctrl" -p "Toe_R_LOC";
	rename -uid "07F4C5B9-49A8-1B52-B53F-BC98F0301978";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 0.0081786396233702874 -3.6748331295965997e-05 0.054792705268001285 ;
	setAttr ".sp" -type "double3" 0.0081786396233702874 -3.6748331295965997e-05 0.054792705268001285 ;
createNode nurbsCurve -n "Foot_R_CtrlShape" -p "Foot_R_Ctrl";
	rename -uid "99B06E8A-44C5-D162-C5E4-32B3933CFB47";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-31.62061601166242 -0.22872410274726146 12.147445044816561
		-39.318400681455678 0.20877990156185811 -0.12691874363183539
		-31.218302116512941 -0.032987619707975716 -12.087937792654124
		-13.096201972987004 -0.36929291899884537 -12.043933571421865
		7.1084628393254183 -0.049470945549182105 -16.560375849368334
		26.044978441079596 -0.14205438373554508 0.76981064577353497
		1.873779075482839 -0.72212197293473268 17.607130910282212
		-13.066594284241679 -0.20212282017794994 10.306516655143961
		-31.62061601166242 -0.22872410274726146 12.147445044816561
		-39.318400681455678 0.20877990156185811 -0.12691874363183539
		-31.218302116512941 -0.032987619707975716 -12.087937792654124
		;
createNode transform -n "Ankle_R_LOC" -p "Foot_R_Ctrl";
	rename -uid "F4F9471E-4360-35E2-CD87-68A7D5BA2056";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -21.573637318605776 7.3093823103748576 -0.61243298637734433 ;
	setAttr ".r" -type "double3" 0.51312057551568968 -1.5401256028017367 -18.716937683292841 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "Ankle_R_LOCShape" -p "Ankle_R_LOC";
	rename -uid "BD7F7326-4296-C512-EC4A-98B406B30F9A";
	setAttr -k off ".v";
createNode transform -n "Ankle_R_Ctrl" -p "Ankle_R_LOC";
	rename -uid "B646A971-4E63-C656-797E-5C95BA03BE1A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 1.6566139390021877 -4.9426706856495564 0.054569382835360614 ;
	setAttr ".sp" -type "double3" 1.6566139390021877 -4.9426706856495564 0.054569382835360614 ;
createNode nurbsCurve -n "Ankle_R_CtrlShape" -p "Ankle_R_Ctrl";
	rename -uid "94FFEBED-4DE7-D2AF-FD3C-C39540330AE2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-18.792374499194548 -0.63909577667316908 0.44305836147273486
		-21.245114832180306 -4.1777615314115693 0.67910311272843549
		-20.476448105906105 -8.4196921723097269 0.77388439324747949
		-16.936648863678414 -10.880022260575529 0.67188061436090485
		-12.699283493516241 -10.117523798417437 0.4328442063271582
		-10.246543160530479 -6.5788580436790385 0.19679945507146074
		-11.015209886804689 -2.3369274027808764 0.10201817455241396
		-14.555009129032364 0.12340268548492087 0.20402195343898916
		-18.792374499194548 -0.63909577667316908 0.44305836147273486
		-21.245114832180306 -4.1777615314115693 0.67910311272843549
		-20.476448105906105 -8.4196921723097269 0.77388439324747949
		;
createNode transform -n "Ball_R_Ctrl" -p "Ankle_R_Ctrl";
	rename -uid "8AD9AC87-4672-9AD6-E0A1-5DA92030132C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".rp" -type "double3" 22.795714359808834 0.0030782121506254256 0.054539021859895342 ;
	setAttr ".sp" -type "double3" 22.795714359808834 0.0030782121506254256 0.054539021859895342 ;
createNode nurbsCurve -n "Ball_R_CtrlShape" -p "Ball_R_Ctrl";
	rename -uid "F651282D-411D-780E-FA65-069687D3549A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.0947311585447004 19.387636746104413 0.62462705921601525
		8.7892753228165077 15.10145872321208 0.64551781430115485
		11.6038856995162 11.854522669194328 0.62462705921623263
		15.889801702769191 11.54883968833664 0.57419231496183731
		19.136391865061753 14.363474725038804 0.5237575707073141
		19.441847700789911 18.649652747931142 0.50286681562220725
		16.627237324090238 21.896588801948873 0.52375757070710793
		12.341321320837237 22.202271782806605 0.57419231496151779
		9.0947311585447004 19.387636746104413 0.62462705921601525
		8.7892753228165077 15.10145872321208 0.64551781430115485
		11.6038856995162 11.854522669194328 0.62462705921623263
		;
createNode ikHandle -n "Leg_R_IK" -p "Ball_R_Ctrl";
	rename -uid "035502E2-4830-065D-B212-EB96E146E328";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 100.14744322334411 18.422054894482486 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode transform -n "Knee_R_Ctrl" -p "Leg_R_IK";
	rename -uid "5FD0DB96-4EF5-CB4B-DDC2-B8B4AA109F04";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" -5.7651858739202044 26.146178564838756 80.736792274730973 ;
	setAttr ".sp" -type "double3" -5.7651858739202044 26.146178564838756 80.736792274730973 ;
createNode nurbsCurve -n "Knee_R_CtrlShape" -p "Knee_R_Ctrl";
	rename -uid "411A4AA9-4F20-723F-B7DE-7D88AEF4F511";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 72 0 no 3
		73 0 2.3135629999999998 4.6271259999999996 6.9406889999999999 8.5778230000000004
		 10.214957999999999 11.849695000000001 13.484432 15.119168999999999 16.744737000000001
		 18.379473999999998 20.014211 21.648949000000002 23.283685999999999 24.920819999999999
		 26.557953999999999 28.871517000000001 31.185079999999999 33.498643000000001 35.812206000000003
		 38.125770000000003 40.439332999999998 42.076467000000001 43.713600999999997 45.348337999999998
		 46.983074999999999 48.617812000000001 50.252549999999999 51.878118000000001 53.512855000000002
		 55.147592000000003 56.782328999999997 58.419463 60.056598000000001 62.370161000000003
		 64.683723999999998 66.997287 69.310850000000002 71.624413000000004 73.937976000000006
		 75.575109999999995 77.212243999999998 78.846981999999997 80.481718999999998 82.116455999999999
		 83.742024000000001 85.376761000000002 87.011498000000003 88.646235000000004 90.280972000000006
		 91.918107000000006 93.555240999999995 95.868803999999997 98.182366999999999 100.49593
		 102.809493 105.12305600000001 107.43661899999999 109.07375399999999 110.710888 112.345625
		 113.980362 115.615099 117.240667 118.875404 120.510142 122.144879 123.779616 125.41674999999999
		 127.053884 129.367447 131.68100999999999 133.994574
		73
		-5.2612120210734243 20.255877093168884 73.946157946000383
		-4.1280025420506785 20.314452963682633 75.278336982032286
		-2.9897619298205225 20.601897437717859 76.576058902581735
		-1.8431307591500801 21.107720633578275 77.797401546868628
		-3.0771838295513465 21.119518867817355 77.695581068318674
		-4.3112361461643989 21.131317094849813 77.593760651963024
		-4.387203913289925 21.849172936571847 78.597661724704182
		-4.4490545874123502 22.742099501477895 79.450751125925265
		-4.4946200598602832 23.778797040616055 80.123124822802993
		-4.5295251629427415 24.915794478640905 80.589838962625294
		-3.3172878408490742 24.941330785179602 80.347488334112029
		-2.1717218446532645 24.990807315896156 79.884741092677046
		-1.1329830254439823 25.062489902926302 79.217816693015124
		-0.23748242031173383 25.153865783207856 78.370093513139807
		-0.23823764498728295 23.922780925257271 78.236597379688405
		-0.2389928701241395 22.691695315331067 78.103101164694422
		0.48263392977524866 24.030647026048278 77.237791347454589
		1.0043630191342121 25.382307268497556 76.256408880545465
		1.3079317563623025 26.742450033959166 75.198035827536017
		1.0058734684853086 27.84447698439871 76.523401147448254
		0.48565482847743979 28.954986457850602 77.771775881260183
		-0.23446152114823349 30.078205966985792 78.904078128487981
		-0.23521674628509004 28.847120357059595 78.770581913493999
		-0.23597197096063915 27.61603549910901 78.637085780042597
		-1.1314725760928876 27.524659618827471 79.484808959917913
		-2.1702113953021662 27.452977031797317 80.151733359579836
		-3.3157773914979796 27.403500501080764 80.614480601014819
		-4.5280147135916469 27.377964194542066 80.856831229528083
		-4.4916694664974539 28.588532379722785 80.644681940940387
		-4.4447584442194898 29.745203350644964 80.210152299601248
		-4.3817128145955007 30.80016285399671 79.568287378022575
		-4.3047425731555737 31.716431252252136 78.741587142581409
		-3.0706902565425214 31.704633025219678 78.843407558937059
		-1.8366371861412514 31.692834790980598 78.945228037487013
		-2.9824935043601091 32.450091511835694 77.860851000430756
		-4.1202140469537714 33.010407810581818 76.65505839289915
		-5.2531764700874586 33.354555492333716 75.366549812831408
		-6.5883186801798761 33.034004264646725 76.451417560187863
		-7.918702770812315 32.497284419965503 77.453569335008154
		-9.2409525933959937 31.763624167588574 78.334305414964504
		-8.0068995229947237 31.751825933349494 78.436125893514472
		-6.7728472063816749 31.740027706317036 78.537946309870108
		-6.8498174478216018 30.823759308061611 79.364646545311274
		-6.9128630774455946 29.768799804709865 80.006511466889947
		-6.9597740997235551 28.612128833787693 80.441041108229086
		-6.9816843024883664 27.401422641548493 80.654381417816424
		-8.1371063187347676 27.44959508922414 80.21667759692005
		-9.1901958202046803 27.520091990291611 79.572521500138166
		-10.104038335667548 27.610442341707163 78.744491577000346
		-10.84660093223434 27.717479017959 77.761613448693325
		-10.845845707558789 28.948563875909585 77.895109582144727
		-10.845090482421933 30.179649485835782 78.028605797138709
		-11.39109863040809 29.068534831635084 76.791836890135301
		-11.720684241364767 27.966149959831803 75.473345661674685
		-11.822320247523185 26.867982551543435 74.114671931295774
		-11.722194690715861 25.503980243930641 75.206353394771881
		-11.394119529110279 24.144195399832761 76.257852356329707
		-10.849621831397839 22.793138834181057 77.227628833345165
		-10.848866606260986 24.024224444107261 77.361125048339133
		-10.848111381585435 25.255309302057846 77.494621181790535
		-10.105548785018643 25.148272625806001 78.477499310097556
		-9.191706269555775 25.05792227439045 79.305529233235376
		-8.1386167680858623 24.987425373322985 79.94968533001726
		-6.9904078569703234 24.946522095757238 80.387574410636532
		-6.962724693086388 23.802393494680956 79.919483990091692
		-6.9171592206384549 22.765695955542796 79.247110293213964
		-6.8553085465160297 21.872769390636755 78.394020891992895
		-6.7793407793905036 21.154913548914706 77.390119819251723
		-8.013393096003556 21.166711775947164 77.288299402896072
		-9.2474461664048189 21.178510010186251 77.186478924346119
		-7.9259711962727284 20.649090345847661 76.168777237159134
		-6.5961071752767797 20.338049417747534 75.074696149320985
		-5.2612120210734243 20.255877093168884 73.946157946000383
		;
createNode poleVectorConstraint -n "Leg_R_IK_poleVectorConstraint1" -p "Leg_R_IK";
	rename -uid "0DC47CDE-46A1-D009-B4AB-0F88FDE31DF8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Knee_R_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 85.553623289049824 -3.0479812289507464 -5.6164008860588321 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ankle_R_IK" -p "Ball_R_Ctrl";
	rename -uid "BAC538E0-4F54-3C28-CD66-79B29FA89268";
	setAttr ".t" -type "double3" 22.786486589133563 -5.3290705182007514e-15 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 0 100.14744322334411 18.422054894482486 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -0.75688641842701099 7.2164496600635175e-15 2.9029507315145255 ;
	setAttr ".roc" yes;
createNode transform -n "Toe_end_R_LOC" -p "Ankle_R_Ctrl";
	rename -uid "FA9F62D2-4E90-94A1-8255-EDBF68DDB7E6";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 36.749702916730214 4.7290468844959435 -0.41779319389155845 ;
	setAttr ".r" -type "double3" 0.0081615217759589877 1.6233143834427606 18.710156438591969 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "Toe_end_R_LOCShape" -p "Toe_end_R_LOC";
	rename -uid "032BB351-45C8-D2F1-D7C9-50B5028B5921";
	setAttr -k off ".v";
createNode transform -n "Toe_end_R_Ctrl" -p "Toe_end_R_LOC";
	rename -uid "5F50B58C-4D4A-B4EE-AD6A-4CB8C3F058E2";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 0.0081728184915590418 -4.535221467916184e-05 0.054859701031322317 ;
	setAttr ".sp" -type "double3" 0.0081728184915590418 -4.535221467916184e-05 0.054859701031322317 ;
createNode nurbsCurve -n "Toe_end_R_CtrlShape" -p "Toe_end_R_Ctrl";
	rename -uid "3057644C-4B44-7EE5-4CBB-DFB4C76661BA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.954128721096815 13.324111914856761 5.704800749927978
		-6.7780154478539236 15.74511197156065 0.0099885962206494455
		-7.9501363162397105 13.225858599944644 -4.9005399850264304
		-8.1403079340132152 6.7971075541215971 -8.3228708095541837
		0.28447231424880925 1.0679736734739742 -5.235753047893172
		4.5242042737711596 2.2747482305474089 0.34747215031205436
		0.2804799093917314 1.166226988386085 6.42878033458675
		-8.1327602251651285 6.9360416158051175 9.1950629525822656
		-7.954128721096815 13.324111914856761 5.704800749927978
		-6.7780154478539236 15.74511197156065 0.0099885962206494455
		-7.9501363162397105 13.225858599944644 -4.9005399850264304
		;
createNode ikHandle -n "Ball_R_IK" -p "Toe_end_R_Ctrl";
	rename -uid "9A42585E-49E4-CCB2-BE0E-1EA2A8A2361B";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -4.5519144009631418e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 179.99999999999261 81.475891671280493 179.71201408047304 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".pv" -type "double3" -0.079093483778882867 -2.9989571888947824 9.5062846483529029e-15 ;
	setAttr ".roc" yes;
createNode transform -n "Foot_L_Ctrl_Group" -p "Root_Ctrl";
	rename -uid "5C79E42D-4232-62D8-75BB-99A9877065FF";
createNode transform -n "Toe_L_LOC" -p "Foot_L_Ctrl_Group";
	rename -uid "3381826F-471F-E636-95D1-6AAC2D1243F2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 18.3096 1.0193600000000034 19.081900000000012 ;
	setAttr ".r" -type "double3" 1.920700065628959 81.471064199269534 -178.05783791539685 ;
createNode locator -n "Toe_L_LOCShape" -p "Toe_L_LOC";
	rename -uid "ADD51F7C-40ED-91DA-F1B5-E9B1F130AD6A";
	setAttr -k off ".v";
createNode transform -n "Foot_L_Ctrl" -p "Toe_L_LOC";
	rename -uid "FCBFC688-4D3F-1BE1-A84F-48A75F82F245";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 2.3033996399135503e-07 5.2591994426087751e-08 -8.738335353086768e-07 ;
	setAttr ".sp" -type "double3" 2.3033996399135503e-07 5.2591994426087751e-08 -8.738335353086768e-07 ;
createNode nurbsCurve -n "Foot_L_CtrlShape" -p "Foot_L_Ctrl";
	rename -uid "66C04E50-4183-AA9F-F566-CEB1F477144C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		31.628794881625748 0.2286874070079559 -12.092653213382093
		39.326579551419002 -0.20881659730116436 0.18171057506629776
		31.226480986476268 0.032950923968670331 12.142729624088581
		13.104380842950333 0.36925622325954199 12.098725402856322
		-7.1002839693620867 0.049434249809881405 16.615167680802791
		-26.036799571116262 0.14201768799624664 -0.71501881433907233
		-1.865600205519508 0.72208527719543092 -17.552339078847741
		13.074773154205008 0.20208612443864668 -10.251724823709495
		31.628794881625748 0.2286874070079559 -12.092653213382093
		39.326579551419002 -0.20881659730116436 0.18171057506629776
		31.226480986476268 0.032950923968670331 12.142729624088581
		;
createNode transform -n "Ankle_L_LOC" -p "Foot_L_Ctrl";
	rename -uid "9E2129BB-4487-93A3-564B-06A54D9005A2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 21.573600806702341 -7.3093773178058559 0.61240081474281993 ;
	setAttr ".r" -type "double3" 0.51312057551427392 -1.5401256028022317 -18.716937683292777 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode locator -n "Ankle_L_LOCShape" -p "Ankle_L_LOC";
	rename -uid "FFE50493-4DC3-6019-E560-1999765DC60D";
	setAttr -k off ".v";
createNode transform -n "Ankle_L_Ctrl" -p "Ankle_L_LOC";
	rename -uid "C76F4D52-49F1-E749-5D64-9088CD9905D8";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -2.6645352591003757e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -1.6473489559294547 4.9457562805467372 -1.1728733717575321e-07 ;
	setAttr ".sp" -type "double3" -1.6473489559294554 4.9457562805467381 -1.1728733717575324e-07 ;
	setAttr ".spt" -type "double3" 6.6613381477509373e-16 -8.8817841970012504e-16 2.646977960169688e-23 ;
createNode nurbsCurve -n "Ankle_L_CtrlShape" -p "Ankle_L_Ctrl";
	rename -uid "1387E4A0-4D58-9989-E7BD-0A8DE32D4AB3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.801639482267269 0.64218137157033328 -0.3884890959247132
		21.254379815253031 4.1808471263087297 -0.62453384718041383
		20.485713088978834 8.4227777672068864 -0.71931512769945782
		16.945913846751147 10.883107855472689 -0.61731134881288319
		12.708548476588975 10.120609393314602 -0.37827494077913654
		10.255808143603211 6.5819436385762087 -0.14223018952343908
		11.024474869877416 2.3400129976780479 -0.047448909004392303
		14.564274112105087 -0.12031709058775202 -0.14945268789096749
		18.801639482267269 0.64218137157033328 -0.3884890959247132
		21.254379815253031 4.1808471263087297 -0.62453384718041383
		20.485713088978834 8.4227777672068864 -0.71931512769945782
		;
createNode transform -n "Ball_L_Ctrl" -p "Ankle_L_Ctrl";
	rename -uid "82486120-4849-5C5C-F888-158385EA13C5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -22.786449376734918 7.3827435063122948e-06 3.0243688142306269e-05 ;
	setAttr ".sp" -type "double3" -22.786449376734918 7.3827435063122948e-06 3.0243688142306269e-05 ;
createNode nurbsCurve -n "Ball_L_CtrlShape" -p "Ball_L_Ctrl";
	rename -uid "220209E7-4526-4607-0207-65B416DFCCBB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.0854661754675501 -19.384551151207937 -0.57005779366869325
		-8.7800103397400733 -15.098373128315545 -0.59094854875370884
		-11.594620716440323 -11.851437074298278 -0.57005779366866083
		-15.880536719693342 -11.545754093441307 -0.51962304941420134
		-19.127126881985433 -14.360389130144011 -0.46918830515973481
		-19.432582717712872 -18.646567153036415 -0.44829755007474686
		-16.617972341012656 -21.893503207053662 -0.46918830515977078
		-12.33205633775961 -22.199186187910662 -0.51962304941424686
		-9.0854661754675501 -19.384551151207937 -0.57005779366869325
		-8.7800103397400733 -15.098373128315545 -0.59094854875370884
		-11.594620716440323 -11.851437074298278 -0.57005779366866083
		;
createNode ikHandle -n "Ankle_L_IK" -p "Ball_L_Ctrl";
	rename -uid "A88B61FB-4B04-7E32-72A0-A48842037D32";
	setAttr ".t" -type "double3" -22.786449554458443 7.2668949453458254e-06 3.1123688621903511e-05 ;
	setAttr ".r" -type "double3" 0 79.852556776655803 -161.57794510551781 ;
	setAttr ".s" -type "double3" 1 0.99999999999999933 1.0000000000000002 ;
	setAttr ".pv" -type "double3" 0.24004864528361342 -7.6555925904164823e-08 -2.9903806861163416 ;
	setAttr ".roc" yes;
createNode ikHandle -n "Leg_L_IK" -p "Ball_L_Ctrl";
	rename -uid "A5FA4BA9-4BE7-9A1E-4614-31AE5618D295";
	setAttr ".t" -type "double3" -2.2204460492503131e-15 4.4408920985006262e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 79.852556776655803 -161.57794510551781 ;
	setAttr ".s" -type "double3" 1 0.99999999999999933 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "Knee_L_Ctrl" -p "Leg_L_IK";
	rename -uid "9417722B-40B7-A524-73D0-9C952941D661";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 5.7097497345614698 26.146178959799961 80.736793856598396 ;
	setAttr ".sp" -type "double3" 5.7097497345614698 26.146178959799961 80.736793856598396 ;
createNode nurbsCurve -n "Knee_L_CtrlShape" -p "Knee_L_Ctrl";
	rename -uid "50F6789D-49C5-A608-C132-3B9FA6852E98";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 72 0 no 3
		73 0 2.3135629999999998 4.6271259999999996 6.9406889999999999 8.5778230000000004
		 10.214957999999999 11.849695000000001 13.484432 15.119168999999999 16.744737000000001
		 18.379473999999998 20.014211 21.648949000000002 23.283685999999999 24.920819999999999
		 26.557953999999999 28.871517000000001 31.185079999999999 33.498643000000001 35.812206000000003
		 38.125770000000003 40.439332999999998 42.076467000000001 43.713600999999997 45.348337999999998
		 46.983074999999999 48.617812000000001 50.252549999999999 51.878118000000001 53.512855000000002
		 55.147592000000003 56.782328999999997 58.419463 60.056598000000001 62.370161000000003
		 64.683723999999998 66.997287 69.310850000000002 71.624413000000004 73.937976000000006
		 75.575109999999995 77.212243999999998 78.846981999999997 80.481718999999998 82.116455999999999
		 83.742024000000001 85.376761000000002 87.011498000000003 88.646235000000004 90.280972000000006
		 91.918107000000006 93.555240999999995 95.868803999999997 98.182366999999999 100.49593
		 102.809493 105.12305600000001 107.43661899999999 109.07375399999999 110.710888 112.345625
		 113.980362 115.615099 117.240667 118.875404 120.510142 122.144879 123.779616 125.41674999999999
		 127.053884 129.367447 131.68100999999999 133.994574
		73
		5.2057758817146969 20.255877488130082 73.94615952786782
		4.0725664026919475 20.314453358643831 75.278338563899723
		2.9343257904617914 20.601897832679057 76.576060484449172
		1.787694619791349 21.107721028539473 77.797403128736065
		3.0217476901926155 21.119519262778553 77.695582650186111
		4.2558000068056678 21.131317489811011 77.593762233830461
		4.3317677739311939 21.849173331533045 78.597663306571619
		4.3936184480536191 22.742099896439093 79.450752707792702
		4.4391839205015522 23.778797435577253 80.12312640467043
		4.4740890235840105 24.915794873602103 80.589840544492731
		3.2618517014903432 24.9413311801408 80.347489915979466
		2.1162857052945334 24.990807710857354 79.884742674544484
		1.0775468860852513 25.0624902978875 79.217818274882561
		0.18204628095300279 25.153866178169054 78.370095095007244
		0.18280150562855191 23.922781320218469 78.236598961555842
		0.18355673076540846 22.691695710292265 78.103102746561859
		-0.5380700691339797 24.030647421009476 77.237792929322026
		-1.0597991584929431 25.382307663458754 76.256410462412902
		-1.3633678957210336 26.742450428920364 75.198037409403454
		-1.0613096078440396 27.844477379359908 76.523402729315691
		-0.54109096783617083 28.9549868528118 77.77177746312762
		0.17902538178950245 30.078206361946989 78.904079710355418
		0.179780606926359 28.847120752020793 78.770583495361436
		0.18053583160190811 27.616035894070208 78.637087361910034
		1.0760364367341566 27.524660013788669 79.48481054178535
		2.1147752559434352 27.452977426758515 80.151734941447273
		3.2603412521392485 27.403500896041962 80.614482182882256
		4.4725785742329158 27.377964589503264 80.85683281139552
		4.4362333271387229 28.588532774683983 80.644683522807824
		4.3893223048607588 29.745203745606162 80.210153881468685
		4.3262766752367696 30.800163248957908 79.568288959890012
		4.2493064337968427 31.716431647213334 78.741588724448846
		3.0152541171837903 31.704633420180876 78.843409140804496
		1.7812010467825203 31.692835185941796 78.94522961935445
		2.927057365001378 32.450091906796892 77.860852582298193
		4.0647779075950403 33.010408205543015 76.655059974766587
		5.1977403307287275 33.354555887294914 75.366551394698845
		6.5328825408211451 33.034004659607923 76.4514191420553
		7.863266631453584 32.497284814926701 77.453570916875591
		9.1855164540372627 31.763624562549772 78.334306996831941
		7.9514633836359927 31.751826328310692 78.436127475381909
		6.7174110670229439 31.740028101278234 78.537947891737545
		6.7943813084628708 30.823759703022809 79.364648127178711
		6.8574269380868635 29.768800199671063 80.006513048757384
		6.9043379603648241 28.612129228748891 80.441042690096523
		6.9262481631296353 27.401423036509691 80.654382999683861
		8.0816701793760366 27.449595484185338 80.216679178787487
		9.1347596808459492 27.520092385252809 79.572523082005603
		10.048602196308821 27.610442736668361 78.744493158867783
		10.791164792875612 27.717479412920198 77.761615030560762
		10.790409568200062 28.948564270870783 77.895111164012164
		10.789654343063205 30.17964988079698 78.028607379006147
		11.335662491049362 29.068535226596282 76.791838472002738
		11.665248102006039 27.966150354793001 75.473347243542122
		11.766884108164462 26.867982946504632 74.114673513163211
		11.666758551357134 25.503980638891839 75.206354976639318
		11.338683389751552 24.144195794793958 76.257853938197144
		10.794185692039111 22.793139229142255 77.227630415212602
		10.793430466902258 24.024224839068459 77.36112663020657
		10.792675242226707 25.255309697019044 77.494622763657972
		10.050112645659915 25.148273020767199 78.477500891964993
		9.1362701301970439 25.057922669351647 79.305530815102813
		8.0831806287271313 24.987425768284183 79.949686911884697
		6.9349717176115924 24.946522490718436 80.387575992503969
		6.9072885537276569 23.802393889642154 79.919485571959129
		6.8617230812797239 22.765696350503994 79.247111875081401
		6.7998724071572987 21.872769785597953 78.394022473860332
		6.7239046400317726 21.154913943875904 77.39012140111916
		7.9579569566448249 21.166712170908362 77.288300984763509
		9.1920100270460878 21.178510405147449 77.186480506213556
		7.8705350569139974 20.649090740808859 76.168778819026571
		6.5406710359180487 20.338049812708732 75.074697731188422
		5.2057758817146969 20.255877488130082 73.94615952786782
		;
createNode poleVectorConstraint -n "Leg_L_IK_poleVectorConstraint1" -p "Leg_L_IK";
	rename -uid "2D0CA7E2-4646-F839-5873-23B242F94B1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Knee_L_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -85.544333742533595 3.0510332068334733 5.6710097034734215 ;
	setAttr -k on ".w0";
createNode transform -n "Toe_end_L_LOC" -p "Ankle_L_Ctrl";
	rename -uid "86020F52-49B5-667F-A93C-FF96895A5F9E";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -36.749664781992159 -4.7290301047309216 0.41775716038789845 ;
	setAttr ".r" -type "double3" 0.0081615217772255527 1.6233143834428625 18.710156438591923 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 1 ;
createNode locator -n "Toe_end_L_LOCShape" -p "Toe_end_L_LOC";
	rename -uid "C2D01A23-45A9-D3CB-DB79-9DADBB69A725";
	setAttr -k off ".v";
createNode transform -n "Toe_end_L_Ctrl" -p "Toe_end_L_LOC";
	rename -uid "C0DAC33D-41FC-23C4-FF7F-2BBC4985F943";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 5.718410278632291e-08 8.7530046544159745e-09 -8.5408574435064111e-07 ;
	setAttr ".sp" -type "double3" 5.718410278632291e-08 8.7530046544159745e-09 -8.5408574435064111e-07 ;
createNode nurbsCurve -n "Toe_end_L_CtrlShape" -p "Toe_end_L_Ctrl";
	rename -uid "EC65B95E-4483-BAED-78F0-EDB6C93F4001";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.9623015967724795 -13.324157258318436 -5.6499419029824054
		6.7861883235295881 -15.745157315022324 0.044870250724923191
		7.958309191915375 -13.225903943406319 4.955398831972003
		8.1484808096888806 -6.7971528975832722 8.3777296564997563
		-0.27629943857314476 -1.0680190169356492 5.2906118948387446
		-4.5160313980954969 -2.2747935740090832 -0.29261330336648173
		-0.27230703371606602 -1.1662723318477599 -6.3739214876411774
		8.1409331008407957 -6.9360869592667926 -9.1402041056366929
		7.9623015967724795 -13.324157258318436 -5.6499419029824054
		6.7861883235295881 -15.745157315022324 0.044870250724923191
		7.958309191915375 -13.225903943406319 4.955398831972003
		;
createNode ikHandle -n "Ball_L_IK" -p "Toe_end_L_Ctrl";
	rename -uid "C5F1645F-470B-9AD3-E7C1-AD990AD39D2B";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 81.475891671280522 179.71201408048123 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".pv" -type "double3" -0.18861609315310751 1.1060452603036015e-07 -2.9940647904484998 ;
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "959AB43B-447C-C483-7B84-9282B1C59B92";
	setAttr -s 16 ".lnk";
	setAttr -s 16 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B9905AAF-4587-FC82-0A9B-7DB0498DC4ED";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "59934833-425C-CA57-2AD5-61927420EAAE";
createNode displayLayerManager -n "layerManager";
	rename -uid "930D5CE6-48A5-5207-BA95-64A7EBE6C547";
createNode displayLayer -n "defaultLayer";
	rename -uid "0B918335-4A5D-FD49-7F3F-1FA1E6ECEF39";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4B3A00A4-4DF3-B4DF-05E5-DCA040DB0D20";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8F40FA3E-4589-51F4-C830-2FBA33D2CA0F";
	setAttr ".g" yes;
createNode shadingEngine -n "humanBodySG";
	rename -uid "06A15EF6-46DE-A002-7597-899EACB3D64F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "8C507439-4DDF-D630-F62A-22833B586899";
createNode file -n "ReflectionMap";
	rename -uid "36EAA02F-4BCC-2C49-A23A-1D9CD36FCE04";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "2705EAC8-4360-91DB-121F-A4AEA7607D47";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CF37D253-4B3D-A6A4-6C13-37AE86A07AD5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1219\n            -height 546\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n"
		+ "                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1219\\n    -height 546\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1219\\n    -height 546\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 150 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4A227442-42A9-2E47-796B-E89F7AB1FE52";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode blinn -n "blinn1";
	rename -uid "1C4A97E4-4BC7-62E5-2599-D5B2AE7554E4";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "FEB6F550-4299-DD5B-B456-C29F6BCD6145";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "3C150557-4B14-4E05-4F78-09817F395A0A";
createNode shadingEngine -n "Basic_testKnight_RIG:HumanBody:humanBodySG";
	rename -uid "71BA4C35-4C16-107A-0525-AAB5A03299D1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG:HumanBody:materialInfo1";
	rename -uid "389D556F-4BA0-FCC9-BE33-04990E3C6599";
createNode file -n "Basic_testKnight_RIG:HumanBody:ReflectionMap";
	rename -uid "A4A5ACCA-4615-5DF3-D096-42B778854A60";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Basic_testKnight_RIG:HumanBody:place2dTexture1";
	rename -uid "D34C8CDF-4F54-F51D-9167-82A36A91A025";
createNode blinn -n "Basic_testKnight_RIG:HumanBody:blinn1";
	rename -uid "D6BBA802-4452-F66B-2E62-369E6F2CCD58";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "Basic_testKnight_RIG:HumanBody:blinn1SG";
	rename -uid "9560FE85-40E9-8076-BCBE-A5B9235003CA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG:HumanBody:materialInfo2";
	rename -uid "E0BBCAC4-439D-B855-F917-FCB232D0B32C";
createNode shadingEngine -n "Basic_testKnight_RIG:HumanBody1:humanBodySG";
	rename -uid "70407E93-4D15-36CC-8E70-82BBBD7CEC4F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG:HumanBody1:materialInfo1";
	rename -uid "19F1ADEE-4C1D-4361-65E0-F0984A24B31D";
createNode file -n "Basic_testKnight_RIG:HumanBody1:ReflectionMap";
	rename -uid "3419517F-4147-A8F1-9572-E29E554968F4";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Basic_testKnight_RIG:HumanBody1:place2dTexture1";
	rename -uid "125F18B2-41CF-25C8-6819-23BA6038481D";
createNode blinn -n "Basic_testKnight_RIG:HumanBody1:blinn1";
	rename -uid "3D60D1FF-4ACD-3174-9EC5-F88BC60E1922";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "Basic_testKnight_RIG:HumanBody1:blinn1SG";
	rename -uid "A8029D42-444A-4CB6-F291-66A265165CA5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG:HumanBody1:materialInfo2";
	rename -uid "6550C6B5-4C32-183A-8ADE-FB91A50080F8";
createNode shadingEngine -n "Basic_testKnight_RIG:HumanBody2:humanBodySG";
	rename -uid "75BF7F3B-4F7B-B6AD-355E-D4B0559050A8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG:HumanBody2:materialInfo1";
	rename -uid "B8986505-4E12-9CDD-5FB5-7DBED659D741";
createNode file -n "Basic_testKnight_RIG:HumanBody2:ReflectionMap";
	rename -uid "BFECE7B1-4E8D-C9DE-D641-86B4AF2500ED";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Basic_testKnight_RIG:HumanBody2:place2dTexture1";
	rename -uid "59D52F67-4758-B499-B16B-8290420B5F63";
createNode blinn -n "Basic_testKnight_RIG:HumanBody2:blinn1";
	rename -uid "9DEEFBFB-4E7C-497F-2647-188216F3D149";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "Basic_testKnight_RIG:HumanBody2:blinn1SG";
	rename -uid "E8E84A0A-47D5-2422-E93C-B7B950D293B9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG:HumanBody2:materialInfo2";
	rename -uid "CC5D9C90-4D63-8CFF-031D-F5BF7A78FF8D";
createNode shadingEngine -n "Basic_testKnight_RIG1:HumanBody:humanBodySG";
	rename -uid "671945D2-4F40-2F19-5B9B-BABB96DD7E5F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG1:HumanBody:materialInfo1";
	rename -uid "5BF8EBFF-4A65-A489-F264-D1B12719DF2C";
createNode file -n "Basic_testKnight_RIG1:HumanBody:ReflectionMap";
	rename -uid "BAFCAC8D-4BBA-8D9B-483F-82800BB2460B";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Basic_testKnight_RIG1:HumanBody:place2dTexture1";
	rename -uid "7CB9F3A7-4BEB-D5B4-3E5E-BDA70E58670E";
createNode blinn -n "Basic_testKnight_RIG1:HumanBody:blinn1";
	rename -uid "ACA270E6-41DE-3602-43B6-CC8BCA2CFD15";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "Basic_testKnight_RIG1:HumanBody:blinn1SG";
	rename -uid "3F05534D-404C-56C7-0BA7-CEB4361537D1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG1:HumanBody:materialInfo2";
	rename -uid "3F460883-4FA9-A0E8-9C94-55B0E954DB32";
createNode shadingEngine -n "Basic_testKnight_RIG1:HumanBody1:humanBodySG";
	rename -uid "AABF39F4-40D8-9F7D-7EDE-EB96B73AAACA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG1:HumanBody1:materialInfo1";
	rename -uid "9AC2009C-4553-622B-7B9B-8A8C8F5FBEC9";
createNode file -n "Basic_testKnight_RIG1:HumanBody1:ReflectionMap";
	rename -uid "D9495C2C-4E5B-6121-16BF-0286A35DBC80";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Basic_testKnight_RIG1:HumanBody1:place2dTexture1";
	rename -uid "FB73AA1E-42FA-FE39-460E-9597C96B9C49";
createNode blinn -n "Basic_testKnight_RIG1:HumanBody1:blinn1";
	rename -uid "8AB37909-4DB4-D74F-93E7-B9B27FC4C111";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "Basic_testKnight_RIG1:HumanBody1:blinn1SG";
	rename -uid "69389DB6-49F1-2CDC-F041-FE9A75BE4041";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG1:HumanBody1:materialInfo2";
	rename -uid "508487B0-4DFD-3FBF-C7E0-66852DF1010D";
createNode shadingEngine -n "Basic_testKnight_RIG1:HumanBody2:humanBodySG";
	rename -uid "62B94055-4E93-5FD0-E1CD-50B1FB2FF8A3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG1:HumanBody2:materialInfo1";
	rename -uid "7DDB0641-4D5E-2420-9DB1-B5863CAC3889";
createNode file -n "Basic_testKnight_RIG1:HumanBody2:ReflectionMap";
	rename -uid "6A71B96C-489E-AD1D-8EB2-878065F0594F";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Basic_testKnight_RIG1:HumanBody2:place2dTexture1";
	rename -uid "0A45A030-4CBE-71AE-76D9-94BBB7E04F05";
createNode blinn -n "Basic_testKnight_RIG1:HumanBody2:blinn1";
	rename -uid "03E8DD34-4BC8-B465-9388-2E96AF0A68D8";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "Basic_testKnight_RIG1:HumanBody2:blinn1SG";
	rename -uid "1422E1B9-47C9-24B2-93DC-2CA436AB45E0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Basic_testKnight_RIG1:HumanBody2:materialInfo2";
	rename -uid "D4ACB3FD-4EA4-0B20-2E29-14A15FF096D9";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "96ABCBFB-4CD4-B82B-DFE8-F6816078859D";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "F98E32A2-47B7-2062-947D-DB8BE9A9A694";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "6C163753-42C7-CE0A-B2F8-6380AAC90CC5";
	setAttr ".txf" -type "matrix" 27.682085730443276 0 0 0 0 27.682085730443276 0 0
		 0 0 27.682085730443276 0 0.027720179408788681 64.306732177734375 -1.4029539823532104 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2FBBDEFB-42F4-55C8-43C5-279E1E353A0E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -822.61901493110486 -26.78571322134567 ;
	setAttr ".tgi[0].vh" -type "double2" 601.19045230131394 62.499997516473243 ;
	setAttr -s 316 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 822.85711669921875;
	setAttr ".tgi[0].ni[0].y" 2141.428466796875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1162.857177734375;
	setAttr ".tgi[0].ni[1].y" 138.57142639160156;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1470;
	setAttr ".tgi[0].ni[2].y" 311.42855834960938;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1162.857177734375;
	setAttr ".tgi[0].ni[3].y" 311.42855834960938;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -1647.142822265625;
	setAttr ".tgi[0].ni[4].y" 2590;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -235.71427917480469;
	setAttr ".tgi[0].ni[5].y" -11.428571701049805;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -2568.571533203125;
	setAttr ".tgi[0].ni[6].y" 2484.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 2118.571533203125;
	setAttr ".tgi[0].ni[7].y" 780;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -235.71427917480469;
	setAttr ".tgi[0].ni[8].y" 118.57142639160156;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2468.571533203125;
	setAttr ".tgi[0].ni[9].y" 2117.142822265625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -384.28570556640625;
	setAttr ".tgi[0].ni[10].y" 52.857143402099609;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1608.5714111328125;
	setAttr ".tgi[0].ni[11].y" -67.142860412597656;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -160;
	setAttr ".tgi[0].ni[12].y" 52.857143402099609;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2118.571533203125;
	setAttr ".tgi[0].ni[13].y" -1084.2857666015625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1608.5714111328125;
	setAttr ".tgi[0].ni[14].y" -55.714286804199219;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -235.71427917480469;
	setAttr ".tgi[0].ni[15].y" -11.428571701049805;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[16].y" 1780;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[17].y" 971.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1470;
	setAttr ".tgi[0].ni[18].y" -1244.2857666015625;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2468.571533203125;
	setAttr ".tgi[0].ni[19].y" 2522.857177734375;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -384.28570556640625;
	setAttr ".tgi[0].ni[20].y" 52.857143402099609;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1608.5714111328125;
	setAttr ".tgi[0].ni[21].y" -61.428569793701172;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -401.42855834960938;
	setAttr ".tgi[0].ni[22].y" 52.857143402099609;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -401.42855834960938;
	setAttr ".tgi[0].ni[23].y" 52.857143402099609;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -235.71427917480469;
	setAttr ".tgi[0].ni[24].y" 118.57142639160156;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -235.71427917480469;
	setAttr ".tgi[0].ni[25].y" -11.428571701049805;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1470;
	setAttr ".tgi[0].ni[26].y" -552.85711669921875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -151.42857360839844;
	setAttr ".tgi[0].ni[27].y" 52.857143402099609;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -371.42855834960938;
	setAttr ".tgi[0].ni[28].y" 52.857143402099609;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1130;
	setAttr ".tgi[0].ni[29].y" 1071.4285888671875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -712.85711669921875;
	setAttr ".tgi[0].ni[30].y" 1884.2857666015625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -235.71427917480469;
	setAttr ".tgi[0].ni[31].y" 118.57142639160156;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -235.71427917480469;
	setAttr ".tgi[0].ni[32].y" 118.57142639160156;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -1340;
	setAttr ".tgi[0].ni[33].y" 2564.28564453125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[34].y" 388.57144165039063;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -235.71427917480469;
	setAttr ".tgi[0].ni[35].y" -11.428571701049805;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -237.14285278320313;
	setAttr ".tgi[0].ni[36].y" 52.857143402099609;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -235.71427917480469;
	setAttr ".tgi[0].ni[37].y" 118.57142639160156;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -235.71427917480469;
	setAttr ".tgi[0].ni[38].y" -11.428571701049805;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -161.42857360839844;
	setAttr ".tgi[0].ni[39].y" 52.857143402099609;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -161.42857360839844;
	setAttr ".tgi[0].ni[40].y" 52.857143402099609;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[41].y" -880;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1915.7142333984375;
	setAttr ".tgi[0].ni[42].y" 2.8571429252624512;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 2118.571533203125;
	setAttr ".tgi[0].ni[43].y" 2574.28564453125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2118.571533203125;
	setAttr ".tgi[0].ni[44].y" 1084.2857666015625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -154.28572082519531;
	setAttr ".tgi[0].ni[45].y" 52.857143402099609;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2118.571533203125;
	setAttr ".tgi[0].ni[46].y" 1185.7142333984375;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" -1020;
	setAttr ".tgi[0].ni[47].y" 2331.428466796875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[48].y" -721.4285888671875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -235.71427917480469;
	setAttr ".tgi[0].ni[49].y" -11.428571701049805;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 208.57142639160156;
	setAttr ".tgi[0].ni[50].y" 1101.4285888671875;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -235.71427917480469;
	setAttr ".tgi[0].ni[51].y" 118.57142639160156;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -235.71427917480469;
	setAttr ".tgi[0].ni[52].y" 118.57142639160156;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -235.71427917480469;
	setAttr ".tgi[0].ni[53].y" 118.57142639160156;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 208.57142639160156;
	setAttr ".tgi[0].ni[54].y" 1260;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1415.7142333984375;
	setAttr ".tgi[0].ni[55].y" 281.42855834960938;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -410;
	setAttr ".tgi[0].ni[56].y" 52.857143402099609;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1162.857177734375;
	setAttr ".tgi[0].ni[57].y" -207.14285278320313;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -235.71427917480469;
	setAttr ".tgi[0].ni[58].y" -11.428571701049805;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -235.71427917480469;
	setAttr ".tgi[0].ni[59].y" 118.57142639160156;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -155.71427917480469;
	setAttr ".tgi[0].ni[60].y" 52.857143402099609;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[61].y" 2154.28564453125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -235.71427917480469;
	setAttr ".tgi[0].ni[62].y" 118.57142639160156;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -245.71427917480469;
	setAttr ".tgi[0].ni[63].y" 52.857143402099609;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -161.42857360839844;
	setAttr ".tgi[0].ni[64].y" 52.857143402099609;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[65].y" -1087.142822265625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -411.42855834960938;
	setAttr ".tgi[0].ni[66].y" 52.857143402099609;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2118.571533203125;
	setAttr ".tgi[0].ni[67].y" 81.428573608398438;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -235.71427917480469;
	setAttr ".tgi[0].ni[68].y" 118.57142639160156;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 1162.857177734375;
	setAttr ".tgi[0].ni[69].y" -34.285713195800781;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -235.71427917480469;
	setAttr ".tgi[0].ni[70].y" -11.428571701049805;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -401.42855834960938;
	setAttr ".tgi[0].ni[71].y" 52.857143402099609;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -235.71427917480469;
	setAttr ".tgi[0].ni[72].y" 118.57142639160156;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -235.71427917480469;
	setAttr ".tgi[0].ni[73].y" 52.857143402099609;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 822.85711669921875;
	setAttr ".tgi[0].ni[74].y" 984.28570556640625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -235.71427917480469;
	setAttr ".tgi[0].ni[75].y" 118.57142639160156;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -235.71427917480469;
	setAttr ".tgi[0].ni[76].y" -11.428571701049805;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -235.71427917480469;
	setAttr ".tgi[0].ni[77].y" 118.57142639160156;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 822.85711669921875;
	setAttr ".tgi[0].ni[78].y" 1720;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -151.42857360839844;
	setAttr ".tgi[0].ni[79].y" 52.857143402099609;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[80].y" -1140;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -235.71427917480469;
	setAttr ".tgi[0].ni[81].y" 118.57142639160156;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 2468.571533203125;
	setAttr ".tgi[0].ni[82].y" 2421.428466796875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -410;
	setAttr ".tgi[0].ni[83].y" 52.857143402099609;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 2468.571533203125;
	setAttr ".tgi[0].ni[84].y" 2624.28564453125;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -377.14285278320313;
	setAttr ".tgi[0].ni[85].y" 52.857143402099609;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 2118.571533203125;
	setAttr ".tgi[0].ni[86].y" 1548.5714111328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -155.71427917480469;
	setAttr ".tgi[0].ni[87].y" 52.857143402099609;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -235.71427917480469;
	setAttr ".tgi[0].ni[88].y" 118.57142639160156;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" -235.71427917480469;
	setAttr ".tgi[0].ni[89].y" 52.857143402099609;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 2468.571533203125;
	setAttr ".tgi[0].ni[90].y" 2218.571533203125;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" -235.71427917480469;
	setAttr ".tgi[0].ni[91].y" -11.428571701049805;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -235.71427917480469;
	setAttr ".tgi[0].ni[92].y" -11.428571701049805;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" -235.71427917480469;
	setAttr ".tgi[0].ni[93].y" 118.57142639160156;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" -384.28570556640625;
	setAttr ".tgi[0].ni[94].y" 52.857143402099609;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" -378.57144165039063;
	setAttr ".tgi[0].ni[95].y" 52.857143402099609;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" -235.71427917480469;
	setAttr ".tgi[0].ni[96].y" -11.428571701049805;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1162.857177734375;
	setAttr ".tgi[0].ni[97].y" -380;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" -235.71427917480469;
	setAttr ".tgi[0].ni[98].y" 118.57142639160156;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[99].y" 1384.2857666015625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" -235.71427917480469;
	setAttr ".tgi[0].ni[100].y" 52.857143402099609;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" -235.71427917480469;
	setAttr ".tgi[0].ni[101].y" 118.57142639160156;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[102].y" 1701.4285888671875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -235.71427917480469;
	setAttr ".tgi[0].ni[103].y" 118.57142639160156;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[104].y" -2104.28564453125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" -235.71427917480469;
	setAttr ".tgi[0].ni[105].y" -11.428571701049805;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 2468.571533203125;
	setAttr ".tgi[0].ni[106].y" 2015.7142333984375;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 1470;
	setAttr ".tgi[0].ni[107].y" -207.14285278320313;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" -384.28570556640625;
	setAttr ".tgi[0].ni[108].y" 52.857143402099609;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -117.14286041259766;
	setAttr ".tgi[0].ni[109].y" 52.857143402099609;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[110].y" 820;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[111].y" 128.57142639160156;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" -235.71427917480469;
	setAttr ".tgi[0].ni[112].y" 118.57142639160156;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[113].y" 27.142856597900391;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 2468.571533203125;
	setAttr ".tgi[0].ni[114].y" 1417.142822265625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -235.71427917480469;
	setAttr ".tgi[0].ni[115].y" -11.428571701049805;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -235.71427917480469;
	setAttr ".tgi[0].ni[116].y" -11.428571701049805;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -370;
	setAttr ".tgi[0].ni[117].y" 52.857143402099609;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -235.71427917480469;
	setAttr ".tgi[0].ni[118].y" -11.428571701049805;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 1607.142822265625;
	setAttr ".tgi[0].ni[119].y" -64.285713195800781;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" -235.71427917480469;
	setAttr ".tgi[0].ni[120].y" 118.57142639160156;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 2468.571533203125;
	setAttr ".tgi[0].ni[121].y" 2320;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1607.142822265625;
	setAttr ".tgi[0].ni[122].y" -58.571430206298828;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" -235.71427917480469;
	setAttr ".tgi[0].ni[123].y" -11.428571701049805;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1108.5714111328125;
	setAttr ".tgi[0].ni[124].y" -911.4285888671875;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 1607.142822265625;
	setAttr ".tgi[0].ni[125].y" 242.85714721679688;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -234.28572082519531;
	setAttr ".tgi[0].ni[126].y" 52.857143402099609;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -82.857139587402344;
	setAttr ".tgi[0].ni[127].y" -11.428571701049805;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 2118.571533203125;
	setAttr ".tgi[0].ni[128].y" -292.85714721679688;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" -235.71427917480469;
	setAttr ".tgi[0].ni[129].y" -11.428571701049805;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -367.14285278320313;
	setAttr ".tgi[0].ni[130].y" 52.857143402099609;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -378.57144165039063;
	setAttr ".tgi[0].ni[131].y" 52.857143402099609;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" -235.71427917480469;
	setAttr ".tgi[0].ni[132].y" -11.428571701049805;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -235.71427917480469;
	setAttr ".tgi[0].ni[133].y" 118.57142639160156;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" -235.71427917480469;
	setAttr ".tgi[0].ni[134].y" 118.57142639160156;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" -235.71427917480469;
	setAttr ".tgi[0].ni[135].y" 118.57142639160156;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" -405.71429443359375;
	setAttr ".tgi[0].ni[136].y" 52.857143402099609;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -121.42857360839844;
	setAttr ".tgi[0].ni[137].y" 52.857143402099609;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -235.71427917480469;
	setAttr ".tgi[0].ni[138].y" 118.57142639160156;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 2118.571533203125;
	setAttr ".tgi[0].ni[139].y" -394.28570556640625;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[140].y" 547.14288330078125;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -375.71429443359375;
	setAttr ".tgi[0].ni[141].y" 52.857143402099609;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 822.85711669921875;
	setAttr ".tgi[0].ni[142].y" 1618.5714111328125;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" -2875.71435546875;
	setAttr ".tgi[0].ni[143].y" 2484.28564453125;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" -235.71427917480469;
	setAttr ".tgi[0].ni[144].y" -11.428571701049805;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 2118.571533203125;
	setAttr ".tgi[0].ni[145].y" -495.71429443359375;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" -235.71427917480469;
	setAttr ".tgi[0].ni[146].y" 118.57142639160156;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" -2261.428466796875;
	setAttr ".tgi[0].ni[147].y" 2484.28564453125;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" -235.71427917480469;
	setAttr ".tgi[0].ni[148].y" 52.857143402099609;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[149].y" 1917.142822265625;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" -122.85713958740234;
	setAttr ".tgi[0].ni[150].y" 52.857143402099609;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" -384.28570556640625;
	setAttr ".tgi[0].ni[151].y" 52.857143402099609;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -235.71427917480469;
	setAttr ".tgi[0].ni[152].y" 118.57142639160156;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2118.571533203125;
	setAttr ".tgi[0].ni[153].y" 385.71429443359375;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" -155.71427917480469;
	setAttr ".tgi[0].ni[154].y" 52.857143402099609;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -82.857139587402344;
	setAttr ".tgi[0].ni[155].y" 118.57142639160156;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[156].y" 1507.142822265625;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 1607.142822265625;
	setAttr ".tgi[0].ni[157].y" -55.714286804199219;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" -235.71427917480469;
	setAttr ".tgi[0].ni[158].y" 118.57142639160156;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" -235.71427917480469;
	setAttr ".tgi[0].ni[159].y" 118.57142639160156;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[160].y" 230;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 1470;
	setAttr ".tgi[0].ni[161].y" 138.57142639160156;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -160;
	setAttr ".tgi[0].ni[162].y" 52.857143402099609;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 1470;
	setAttr ".tgi[0].ni[163].y" -898.5714111328125;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" -240;
	setAttr ".tgi[0].ni[164].y" 52.857143402099609;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 2118.571533203125;
	setAttr ".tgi[0].ni[165].y" -597.14288330078125;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 1915.7142333984375;
	setAttr ".tgi[0].ni[166].y" 14.285714149475098;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -120;
	setAttr ".tgi[0].ni[167].y" 52.857143402099609;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" -235.71427917480469;
	setAttr ".tgi[0].ni[168].y" 118.57142639160156;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 2118.571533203125;
	setAttr ".tgi[0].ni[169].y" -774.28570556640625;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" -411.42855834960938;
	setAttr ".tgi[0].ni[170].y" 52.857143402099609;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[171].y" 494.28570556640625;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 1761.4285888671875;
	setAttr ".tgi[0].ni[172].y" 34.285713195800781;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" -235.71427917480469;
	setAttr ".tgi[0].ni[173].y" 118.57142639160156;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[174].y" 978.5714111328125;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" -240;
	setAttr ".tgi[0].ni[175].y" 52.857143402099609;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -235.71427917480469;
	setAttr ".tgi[0].ni[176].y" -11.428571701049805;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" -154.28572082519531;
	setAttr ".tgi[0].ni[177].y" 52.857143402099609;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" -235.71427917480469;
	setAttr ".tgi[0].ni[178].y" 118.57142639160156;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 1618.5714111328125;
	setAttr ".tgi[0].ni[179].y" -54.285713195800781;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 2118.571533203125;
	setAttr ".tgi[0].ni[180].y" 1287.142822265625;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" -235.71427917480469;
	setAttr ".tgi[0].ni[181].y" 118.57142639160156;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" -240;
	setAttr ".tgi[0].ni[182].y" 52.857143402099609;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" -235.71427917480469;
	setAttr ".tgi[0].ni[183].y" -11.428571701049805;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" -235.71427917480469;
	setAttr ".tgi[0].ni[184].y" 118.57142639160156;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" -235.71427917480469;
	setAttr ".tgi[0].ni[185].y" -11.428571701049805;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" -235.71427917480469;
	setAttr ".tgi[0].ni[186].y" 118.57142639160156;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" -235.71427917480469;
	setAttr ".tgi[0].ni[187].y" -11.428571701049805;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 2118.571533203125;
	setAttr ".tgi[0].ni[188].y" 2142.857177734375;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1130;
	setAttr ".tgi[0].ni[189].y" 1345.7142333984375;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -404.28570556640625;
	setAttr ".tgi[0].ni[190].y" 52.857143402099609;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 1761.4285888671875;
	setAttr ".tgi[0].ni[191].y" 20;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" -405.71429443359375;
	setAttr ".tgi[0].ni[192].y" 52.857143402099609;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1130;
	setAttr ".tgi[0].ni[193].y" 20;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" -235.71427917480469;
	setAttr ".tgi[0].ni[194].y" 52.857143402099609;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 2118.571533203125;
	setAttr ".tgi[0].ni[195].y" -875.71429443359375;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -235.71427917480469;
	setAttr ".tgi[0].ni[196].y" 118.57142639160156;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1470;
	setAttr ".tgi[0].ni[197].y" -380;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" -235.71427917480469;
	setAttr ".tgi[0].ni[198].y" 118.57142639160156;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2118.571533203125;
	setAttr ".tgi[0].ni[199].y" 284.28570556640625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[200].y" -404.28570556640625;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 1760;
	setAttr ".tgi[0].ni[201].y" 47.142856597900391;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[202].y" -1787.142822265625;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" -235.71427917480469;
	setAttr ".tgi[0].ni[203].y" -11.428571701049805;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" -235.71427917480469;
	setAttr ".tgi[0].ni[204].y" -11.428571701049805;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" -235.71427917480469;
	setAttr ".tgi[0].ni[205].y" -11.428571701049805;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[206].y" -2522.857177734375;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 1760;
	setAttr ".tgi[0].ni[207].y" 47.142856597900391;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 1761.4285888671875;
	setAttr ".tgi[0].ni[208].y" -12.857142448425293;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[209].y" -505.71429443359375;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" -235.71427917480469;
	setAttr ".tgi[0].ni[210].y" -11.428571701049805;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -235.71427917480469;
	setAttr ".tgi[0].ni[211].y" -11.428571701049805;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[212].y" 1291.4285888671875;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 2118.571533203125;
	setAttr ".tgi[0].ni[213].y" 982.85711669921875;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[214].y" 1282.857177734375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 1130;
	setAttr ".tgi[0].ni[215].y" 2332.857177734375;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" -410;
	setAttr ".tgi[0].ni[216].y" 52.857143402099609;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" -151.42857360839844;
	setAttr ".tgi[0].ni[217].y" 52.857143402099609;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" -235.71427917480469;
	setAttr ".tgi[0].ni[218].y" 118.57142639160156;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[219].y" 1995.7142333984375;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" -235.71427917480469;
	setAttr ".tgi[0].ni[220].y" 118.57142639160156;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" -235.71427917480469;
	setAttr ".tgi[0].ni[221].y" 118.57142639160156;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" -372.85714721679688;
	setAttr ".tgi[0].ni[222].y" 52.857143402099609;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" -235.71427917480469;
	setAttr ".tgi[0].ni[223].y" -11.428571701049805;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[224].y" 1600;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" -235.71427917480469;
	setAttr ".tgi[0].ni[225].y" -11.428571701049805;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" -1647.142822265625;
	setAttr ".tgi[0].ni[226].y" 2374.28564453125;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 2118.571533203125;
	setAttr ".tgi[0].ni[227].y" -1185.7142333984375;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" -235.71427917480469;
	setAttr ".tgi[0].ni[228].y" -77.142860412597656;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -235.71427917480469;
	setAttr ".tgi[0].ni[229].y" 118.57142639160156;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 2118.571533203125;
	setAttr ".tgi[0].ni[230].y" 881.4285888671875;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2118.571533203125;
	setAttr ".tgi[0].ni[231].y" -1287.142822265625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[232].y" -2364.28564453125;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[233].y" 1080;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -382.85714721679688;
	setAttr ".tgi[0].ni[234].y" 52.857143402099609;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" -235.71427917480469;
	setAttr ".tgi[0].ni[235].y" -11.428571701049805;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[236].y" -2262.857177734375;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[237].y" -1945.7142333984375;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" -235.71427917480469;
	setAttr ".tgi[0].ni[238].y" -11.428571701049805;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 1914.2857666015625;
	setAttr ".tgi[0].ni[239].y" 51.428569793701172;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 1130;
	setAttr ".tgi[0].ni[240].y" 2174.28564453125;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" -235.71427917480469;
	setAttr ".tgi[0].ni[241].y" 118.57142639160156;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" -235.71427917480469;
	setAttr ".tgi[0].ni[242].y" -11.428571701049805;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" -235.71427917480469;
	setAttr ".tgi[0].ni[243].y" -11.428571701049805;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 1130;
	setAttr ".tgi[0].ni[244].y" 1230;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" -404.28570556640625;
	setAttr ".tgi[0].ni[245].y" 52.857143402099609;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" -235.71427917480469;
	setAttr ".tgi[0].ni[246].y" 118.57142639160156;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[247].y" -1628.5714111328125;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" -240;
	setAttr ".tgi[0].ni[248].y" 52.857143402099609;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" -404.28570556640625;
	setAttr ".tgi[0].ni[249].y" 52.857143402099609;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" -235.71427917480469;
	setAttr ".tgi[0].ni[250].y" 52.857143402099609;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" -160;
	setAttr ".tgi[0].ni[251].y" 52.857143402099609;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 1614.2857666015625;
	setAttr ".tgi[0].ni[252].y" 312.85714721679688;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 2468.571533203125;
	setAttr ".tgi[0].ni[253].y" 1728.5714111328125;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" -235.71427917480469;
	setAttr ".tgi[0].ni[254].y" -11.428571701049805;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" -1340;
	setAttr ".tgi[0].ni[255].y" 2338.571533203125;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" -235.71427917480469;
	setAttr ".tgi[0].ni[256].y" -11.428571701049805;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" -235.71427917480469;
	setAttr ".tgi[0].ni[257].y" -11.428571701049805;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 2118.571533203125;
	setAttr ".tgi[0].ni[258].y" 2244.28564453125;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[259].y" -188.57142639160156;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" -235.71427917480469;
	setAttr ".tgi[0].ni[260].y" 118.57142639160156;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" -411.42855834960938;
	setAttr ".tgi[0].ni[261].y" 52.857143402099609;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" -235.71427917480469;
	setAttr ".tgi[0].ni[262].y" -11.428571701049805;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" -235.71427917480469;
	setAttr ".tgi[0].ni[263].y" 118.57142639160156;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 1130;
	setAttr ".tgi[0].ni[264].y" 591.4285888671875;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" -405.71429443359375;
	setAttr ".tgi[0].ni[265].y" 52.857143402099609;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1607.142822265625;
	setAttr ".tgi[0].ni[266].y" -55.714286804199219;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 2118.571533203125;
	setAttr ".tgi[0].ni[267].y" 1984.2857666015625;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" -235.71427917480469;
	setAttr ".tgi[0].ni[268].y" 118.57142639160156;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -235.71427917480469;
	setAttr ".tgi[0].ni[269].y" 118.57142639160156;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" -235.71427917480469;
	setAttr ".tgi[0].ni[270].y" 118.57142639160156;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" -235.71427917480469;
	setAttr ".tgi[0].ni[271].y" -11.428571701049805;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 2118.571533203125;
	setAttr ".tgi[0].ni[272].y" 1650;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 515.71429443359375;
	setAttr ".tgi[0].ni[273].y" 1011.4285888671875;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[274].y" 2018.5714111328125;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" -235.71427917480469;
	setAttr ".tgi[0].ni[275].y" -11.428571701049805;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" -1954.2857666015625;
	setAttr ".tgi[0].ni[276].y" 2484.28564453125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" -235.71427917480469;
	setAttr ".tgi[0].ni[277].y" 118.57142639160156;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" -132.85714721679688;
	setAttr ".tgi[0].ni[278].y" 52.857143402099609;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" -235.71427917480469;
	setAttr ".tgi[0].ni[279].y" -11.428571701049805;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[280].y" -981.4285888671875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" -154.28572082519531;
	setAttr ".tgi[0].ni[281].y" 52.857143402099609;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" -235.71427917480469;
	setAttr ".tgi[0].ni[282].y" -11.428571701049805;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" -375.71429443359375;
	setAttr ".tgi[0].ni[283].y" 52.857143402099609;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" -235.71427917480469;
	setAttr ".tgi[0].ni[284].y" 118.57142639160156;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" -405.71429443359375;
	setAttr ".tgi[0].ni[285].y" 1595.7142333984375;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" -235.71427917480469;
	setAttr ".tgi[0].ni[286].y" 118.57142639160156;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 1470;
	setAttr ".tgi[0].ni[287].y" -34.285713195800781;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 2468.571533203125;
	setAttr ".tgi[0].ni[288].y" 1627.142822265625;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 1628.5714111328125;
	setAttr ".tgi[0].ni[289].y" -192.85714721679688;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1474.2857666015625;
	setAttr ".tgi[0].ni[290].y" 595.71429443359375;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[291].y" 1181.4285888671875;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" -235.71427917480469;
	setAttr ".tgi[0].ni[292].y" -11.428571701049805;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 1781.4285888671875;
	setAttr ".tgi[0].ni[293].y" -1355.7142333984375;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 2118.571533203125;
	setAttr ".tgi[0].ni[294].y" -1388.5714111328125;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" -235.71427917480469;
	setAttr ".tgi[0].ni[295].y" -11.428571701049805;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 2118.571533203125;
	setAttr ".tgi[0].ni[296].y" -1490;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 1470;
	setAttr ".tgi[0].ni[297].y" -1417.142822265625;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" -235.71427917480469;
	setAttr ".tgi[0].ni[298].y" 118.57142639160156;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 1608.5714111328125;
	setAttr ".tgi[0].ni[299].y" -60;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" -235.71427917480469;
	setAttr ".tgi[0].ni[300].y" -11.428571701049805;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" -98.571426391601563;
	setAttr ".tgi[0].ni[301].y" 1527.142822265625;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" -235.71427917480469;
	setAttr ".tgi[0].ni[302].y" 118.57142639160156;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 515.71429443359375;
	setAttr ".tgi[0].ni[303].y" 1650;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 1915.7142333984375;
	setAttr ".tgi[0].ni[304].y" 15.714285850524902;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" -235.71427917480469;
	setAttr ".tgi[0].ni[305].y" 118.57142639160156;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 1162.857177734375;
	setAttr ".tgi[0].ni[306].y" -552.85711669921875;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" -542.85711669921875;
	setAttr ".tgi[0].ni[307].y" 52.857143402099609;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" -235.71427917480469;
	setAttr ".tgi[0].ni[308].y" -11.428571701049805;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 2118.571533203125;
	setAttr ".tgi[0].ni[309].y" 1388.5714111328125;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" -235.71427917480469;
	setAttr ".tgi[0].ni[310].y" -77.142860412597656;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 71.428573608398438;
	setAttr ".tgi[0].ni[311].y" 52.857143402099609;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" -247.14285278320313;
	setAttr ".tgi[0].ni[312].y" 52.857143402099609;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" -235.71427917480469;
	setAttr ".tgi[0].ni[313].y" -11.428571701049805;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 2118.571533203125;
	setAttr ".tgi[0].ni[314].y" 182.85714721679688;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 2118.571533203125;
	setAttr ".tgi[0].ni[315].y" -191.42857360839844;
	setAttr ".tgi[0].ni[315].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 16 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Root_JNT_pointConstraint1.ctx" "Root_JNT.tx";
connectAttr "Root_JNT_pointConstraint1.cty" "Root_JNT.ty";
connectAttr "Root_JNT_pointConstraint1.ctz" "Root_JNT.tz";
connectAttr "Root_JNT.s" "Cog_JNT.is";
connectAttr "Cog_JNT_orientConstraint1.crx" "Cog_JNT.rx";
connectAttr "Cog_JNT_orientConstraint1.cry" "Cog_JNT.ry";
connectAttr "Cog_JNT_orientConstraint1.crz" "Cog_JNT.rz";
connectAttr "Cog_JNT_pointConstraint1.ctx" "Cog_JNT.tx";
connectAttr "Cog_JNT_pointConstraint1.cty" "Cog_JNT.ty";
connectAttr "Cog_JNT_pointConstraint1.ctz" "Cog_JNT.tz";
connectAttr "Cog_JNT.s" "Spine1_JNT.is";
connectAttr "Spine1_JNT_orientConstraint1.crx" "Spine1_JNT.rx";
connectAttr "Spine1_JNT_orientConstraint1.cry" "Spine1_JNT.ry";
connectAttr "Spine1_JNT_orientConstraint1.crz" "Spine1_JNT.rz";
connectAttr "Spine1_JNT.s" "Spine2_JNT.is";
connectAttr "Spine2_JNT_orientConstraint1.crx" "Spine2_JNT.rx";
connectAttr "Spine2_JNT_orientConstraint1.cry" "Spine2_JNT.ry";
connectAttr "Spine2_JNT_orientConstraint1.crz" "Spine2_JNT.rz";
connectAttr "Spine2_JNT.s" "Spine3_JNT.is";
connectAttr "Spine3_JNT_orientConstraint1.crx" "Spine3_JNT.rx";
connectAttr "Spine3_JNT_orientConstraint1.cry" "Spine3_JNT.ry";
connectAttr "Spine3_JNT_orientConstraint1.crz" "Spine3_JNT.rz";
connectAttr "Spine3_JNT.s" "Neck_JNT.is";
connectAttr "Neck_JNT_orientConstraint1.crx" "Neck_JNT.rx";
connectAttr "Neck_JNT_orientConstraint1.cry" "Neck_JNT.ry";
connectAttr "Neck_JNT_orientConstraint1.crz" "Neck_JNT.rz";
connectAttr "Neck_JNT.s" "Head1_JNT.is";
connectAttr "Head1_JNT_orientConstraint1.crx" "Head1_JNT.rx";
connectAttr "Head1_JNT_orientConstraint1.cry" "Head1_JNT.ry";
connectAttr "Head1_JNT_orientConstraint1.crz" "Head1_JNT.rz";
connectAttr "Head1_JNT.s" "Head_end_JNT.is";
connectAttr "Head1_JNT.ro" "Head1_JNT_orientConstraint1.cro";
connectAttr "Head1_JNT.pim" "Head1_JNT_orientConstraint1.cpim";
connectAttr "Head1_JNT.jo" "Head1_JNT_orientConstraint1.cjo";
connectAttr "Head1_JNT.is" "Head1_JNT_orientConstraint1.is";
connectAttr "Head_Ctrl.r" "Head1_JNT_orientConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Head1_JNT_orientConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.pm" "Head1_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Head1_JNT_orientConstraint1.w0" "Head1_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Neck_JNT.ro" "Neck_JNT_orientConstraint1.cro";
connectAttr "Neck_JNT.pim" "Neck_JNT_orientConstraint1.cpim";
connectAttr "Neck_JNT.jo" "Neck_JNT_orientConstraint1.cjo";
connectAttr "Neck_JNT.is" "Neck_JNT_orientConstraint1.is";
connectAttr "Neck_Ctrl.r" "Neck_JNT_orientConstraint1.tg[0].tr";
connectAttr "Neck_Ctrl.ro" "Neck_JNT_orientConstraint1.tg[0].tro";
connectAttr "Neck_Ctrl.pm" "Neck_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Neck_JNT_orientConstraint1.w0" "Neck_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Spine3_JNT.s" "Clav1_R_JNT.is";
connectAttr "Clav1_R_JNT.s" "Clav2_R_JNT.is";
connectAttr "Clav2_R_JNT_orientConstraint1.crx" "Clav2_R_JNT.rx";
connectAttr "Clav2_R_JNT_orientConstraint1.cry" "Clav2_R_JNT.ry";
connectAttr "Clav2_R_JNT_orientConstraint1.crz" "Clav2_R_JNT.rz";
connectAttr "Clav2_R_JNT.s" "Shoulder_R_JNT.is";
connectAttr "Shoulder_R_JNT_orientConstraint1.crx" "Shoulder_R_JNT.rx";
connectAttr "Shoulder_R_JNT_orientConstraint1.cry" "Shoulder_R_JNT.ry";
connectAttr "Shoulder_R_JNT_orientConstraint1.crz" "Shoulder_R_JNT.rz";
connectAttr "Shoulder_R_JNT.s" "Elbow_R_JNT.is";
connectAttr "Elbow_R_JNT_orientConstraint1.crx" "Elbow_R_JNT.rx";
connectAttr "Elbow_R_JNT_orientConstraint1.cry" "Elbow_R_JNT.ry";
connectAttr "Elbow_R_JNT_orientConstraint1.crz" "Elbow_R_JNT.rz";
connectAttr "Elbow_R_JNT.s" "Wrist_R_JNT.is";
connectAttr "Wrist_R_JNT_orientConstraint1.crx" "Wrist_R_JNT.rx";
connectAttr "Wrist_R_JNT_orientConstraint1.cry" "Wrist_R_JNT.ry";
connectAttr "Wrist_R_JNT_orientConstraint1.crz" "Wrist_R_JNT.rz";
connectAttr "Wrist_R_JNT.s" "Palm_R_JNT.is";
connectAttr "Palm_R_JNT.s" "Middle1_R_JNT.is";
connectAttr "Middle1_R_JNT_orientConstraint1.crx" "Middle1_R_JNT.rx";
connectAttr "Middle1_R_JNT_orientConstraint1.cry" "Middle1_R_JNT.ry";
connectAttr "Middle1_R_JNT_orientConstraint1.crz" "Middle1_R_JNT.rz";
connectAttr "Middle1_R_JNT.s" "Middle2_R_JNT.is";
connectAttr "Middle2_R_JNT_orientConstraint1.crx" "Middle2_R_JNT.rx";
connectAttr "Middle2_R_JNT_orientConstraint1.cry" "Middle2_R_JNT.ry";
connectAttr "Middle2_R_JNT_orientConstraint1.crz" "Middle2_R_JNT.rz";
connectAttr "Middle2_R_JNT.s" "Middle3_R_JNT.is";
connectAttr "Middle3_R_JNT_orientConstraint1.crx" "Middle3_R_JNT.rx";
connectAttr "Middle3_R_JNT_orientConstraint1.cry" "Middle3_R_JNT.ry";
connectAttr "Middle3_R_JNT_orientConstraint1.crz" "Middle3_R_JNT.rz";
connectAttr "Middle3_R_JNT.s" "Middle_end_R_JNT.is";
connectAttr "Middle3_R_JNT.ro" "Middle3_R_JNT_orientConstraint1.cro";
connectAttr "Middle3_R_JNT.pim" "Middle3_R_JNT_orientConstraint1.cpim";
connectAttr "Middle3_R_JNT.jo" "Middle3_R_JNT_orientConstraint1.cjo";
connectAttr "Middle3_R_JNT.is" "Middle3_R_JNT_orientConstraint1.is";
connectAttr "Middle3_R_Ctrl.r" "Middle3_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Middle3_R_Ctrl.ro" "Middle3_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Middle3_R_Ctrl.pm" "Middle3_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Middle3_R_JNT_orientConstraint1.w0" "Middle3_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Middle2_R_JNT.ro" "Middle2_R_JNT_orientConstraint1.cro";
connectAttr "Middle2_R_JNT.pim" "Middle2_R_JNT_orientConstraint1.cpim";
connectAttr "Middle2_R_JNT.jo" "Middle2_R_JNT_orientConstraint1.cjo";
connectAttr "Middle2_R_JNT.is" "Middle2_R_JNT_orientConstraint1.is";
connectAttr "Middle2_R_Ctrl.r" "Middle2_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Middle2_R_Ctrl.ro" "Middle2_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Middle2_R_Ctrl.pm" "Middle2_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Middle2_R_JNT_orientConstraint1.w0" "Middle2_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Middle1_R_JNT.ro" "Middle1_R_JNT_orientConstraint1.cro";
connectAttr "Middle1_R_JNT.pim" "Middle1_R_JNT_orientConstraint1.cpim";
connectAttr "Middle1_R_JNT.jo" "Middle1_R_JNT_orientConstraint1.cjo";
connectAttr "Middle1_R_JNT.is" "Middle1_R_JNT_orientConstraint1.is";
connectAttr "Middle1_R_Ctrl.r" "Middle1_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Middle1_R_Ctrl.ro" "Middle1_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Middle1_R_Ctrl.pm" "Middle1_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Middle1_R_JNT_orientConstraint1.w0" "Middle1_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_R_JNT.s" "Ring1_R_JNT.is";
connectAttr "Ring1_R_JNT_orientConstraint1.crx" "Ring1_R_JNT.rx";
connectAttr "Ring1_R_JNT_orientConstraint1.cry" "Ring1_R_JNT.ry";
connectAttr "Ring1_R_JNT_orientConstraint1.crz" "Ring1_R_JNT.rz";
connectAttr "Ring1_R_JNT.s" "Ring2_R_JNT.is";
connectAttr "Ring2_R_JNT_orientConstraint1.crx" "Ring2_R_JNT.rx";
connectAttr "Ring2_R_JNT_orientConstraint1.cry" "Ring2_R_JNT.ry";
connectAttr "Ring2_R_JNT_orientConstraint1.crz" "Ring2_R_JNT.rz";
connectAttr "Ring2_R_JNT.s" "Ring3_R_JNT.is";
connectAttr "Ring3_R_JNT_orientConstraint1.crx" "Ring3_R_JNT.rx";
connectAttr "Ring3_R_JNT_orientConstraint1.cry" "Ring3_R_JNT.ry";
connectAttr "Ring3_R_JNT_orientConstraint1.crz" "Ring3_R_JNT.rz";
connectAttr "Ring3_R_JNT.s" "Ring_end_R_JNT.is";
connectAttr "Ring3_R_JNT.ro" "Ring3_R_JNT_orientConstraint1.cro";
connectAttr "Ring3_R_JNT.pim" "Ring3_R_JNT_orientConstraint1.cpim";
connectAttr "Ring3_R_JNT.jo" "Ring3_R_JNT_orientConstraint1.cjo";
connectAttr "Ring3_R_JNT.is" "Ring3_R_JNT_orientConstraint1.is";
connectAttr "Ring3_R_Ctrl.r" "Ring3_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Ring3_R_Ctrl.ro" "Ring3_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Ring3_R_Ctrl.pm" "Ring3_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ring3_R_JNT_orientConstraint1.w0" "Ring3_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Ring2_R_JNT.ro" "Ring2_R_JNT_orientConstraint1.cro";
connectAttr "Ring2_R_JNT.pim" "Ring2_R_JNT_orientConstraint1.cpim";
connectAttr "Ring2_R_JNT.jo" "Ring2_R_JNT_orientConstraint1.cjo";
connectAttr "Ring2_R_JNT.is" "Ring2_R_JNT_orientConstraint1.is";
connectAttr "Ring2_R_Ctrl.r" "Ring2_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Ring2_R_Ctrl.ro" "Ring2_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Ring2_R_Ctrl.pm" "Ring2_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ring2_R_JNT_orientConstraint1.w0" "Ring2_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Ring1_R_JNT.ro" "Ring1_R_JNT_orientConstraint1.cro";
connectAttr "Ring1_R_JNT.pim" "Ring1_R_JNT_orientConstraint1.cpim";
connectAttr "Ring1_R_JNT.jo" "Ring1_R_JNT_orientConstraint1.cjo";
connectAttr "Ring1_R_JNT.is" "Ring1_R_JNT_orientConstraint1.is";
connectAttr "Ring1_R_Ctrl.r" "Ring1_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Ring1_R_Ctrl.ro" "Ring1_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Ring1_R_Ctrl.pm" "Ring1_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ring1_R_JNT_orientConstraint1.w0" "Ring1_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_R_JNT.s" "Index1_R_JNT.is";
connectAttr "Index1_R_JNT_orientConstraint1.crx" "Index1_R_JNT.rx";
connectAttr "Index1_R_JNT_orientConstraint1.cry" "Index1_R_JNT.ry";
connectAttr "Index1_R_JNT_orientConstraint1.crz" "Index1_R_JNT.rz";
connectAttr "Index1_R_JNT.s" "Index2_R_JNT.is";
connectAttr "Index2_R_JNT_orientConstraint1.crx" "Index2_R_JNT.rx";
connectAttr "Index2_R_JNT_orientConstraint1.cry" "Index2_R_JNT.ry";
connectAttr "Index2_R_JNT_orientConstraint1.crz" "Index2_R_JNT.rz";
connectAttr "Index2_R_JNT.s" "Index3_R_JNT.is";
connectAttr "Index3_R_JNT_orientConstraint1.crx" "Index3_R_JNT.rx";
connectAttr "Index3_R_JNT_orientConstraint1.cry" "Index3_R_JNT.ry";
connectAttr "Index3_R_JNT_orientConstraint1.crz" "Index3_R_JNT.rz";
connectAttr "Index3_R_JNT.s" "Index_end_R_JNT.is";
connectAttr "Index3_R_JNT.ro" "Index3_R_JNT_orientConstraint1.cro";
connectAttr "Index3_R_JNT.pim" "Index3_R_JNT_orientConstraint1.cpim";
connectAttr "Index3_R_JNT.jo" "Index3_R_JNT_orientConstraint1.cjo";
connectAttr "Index3_R_JNT.is" "Index3_R_JNT_orientConstraint1.is";
connectAttr "Index3_R_Ctrl.r" "Index3_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Index3_R_Ctrl.ro" "Index3_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Index3_R_Ctrl.pm" "Index3_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Index3_R_JNT_orientConstraint1.w0" "Index3_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Index2_R_JNT.ro" "Index2_R_JNT_orientConstraint1.cro";
connectAttr "Index2_R_JNT.pim" "Index2_R_JNT_orientConstraint1.cpim";
connectAttr "Index2_R_JNT.jo" "Index2_R_JNT_orientConstraint1.cjo";
connectAttr "Index2_R_JNT.is" "Index2_R_JNT_orientConstraint1.is";
connectAttr "Index2_R_Ctrl.r" "Index2_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Index2_R_Ctrl.ro" "Index2_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Index2_R_Ctrl.pm" "Index2_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Index2_R_JNT_orientConstraint1.w0" "Index2_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Index1_R_JNT.ro" "Index1_R_JNT_orientConstraint1.cro";
connectAttr "Index1_R_JNT.pim" "Index1_R_JNT_orientConstraint1.cpim";
connectAttr "Index1_R_JNT.jo" "Index1_R_JNT_orientConstraint1.cjo";
connectAttr "Index1_R_JNT.is" "Index1_R_JNT_orientConstraint1.is";
connectAttr "Index1_R_Ctrl.r" "Index1_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Index1_R_Ctrl.ro" "Index1_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Index1_R_Ctrl.pm" "Index1_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Index1_R_JNT_orientConstraint1.w0" "Index1_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_R_JNT.s" "Thumb1_R_JNT.is";
connectAttr "Thumb1_R_JNT_orientConstraint1.crx" "Thumb1_R_JNT.rx";
connectAttr "Thumb1_R_JNT_orientConstraint1.cry" "Thumb1_R_JNT.ry";
connectAttr "Thumb1_R_JNT_orientConstraint1.crz" "Thumb1_R_JNT.rz";
connectAttr "Thumb1_R_JNT.s" "Thumb2_R_JNT.is";
connectAttr "Thumb2_R_JNT_orientConstraint1.crx" "Thumb2_R_JNT.rx";
connectAttr "Thumb2_R_JNT_orientConstraint1.cry" "Thumb2_R_JNT.ry";
connectAttr "Thumb2_R_JNT_orientConstraint1.crz" "Thumb2_R_JNT.rz";
connectAttr "Thumb2_R_JNT.s" "Thumb3_R_JNT.is";
connectAttr "Thumb3_R_JNT_orientConstraint1.crx" "Thumb3_R_JNT.rx";
connectAttr "Thumb3_R_JNT_orientConstraint1.cry" "Thumb3_R_JNT.ry";
connectAttr "Thumb3_R_JNT_orientConstraint1.crz" "Thumb3_R_JNT.rz";
connectAttr "Thumb3_R_JNT.s" "Thumb_end_R_JNT.is";
connectAttr "Thumb3_R_JNT.ro" "Thumb3_R_JNT_orientConstraint1.cro";
connectAttr "Thumb3_R_JNT.pim" "Thumb3_R_JNT_orientConstraint1.cpim";
connectAttr "Thumb3_R_JNT.jo" "Thumb3_R_JNT_orientConstraint1.cjo";
connectAttr "Thumb3_R_JNT.is" "Thumb3_R_JNT_orientConstraint1.is";
connectAttr "Thumb3_R_ctrl.r" "Thumb3_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Thumb3_R_ctrl.ro" "Thumb3_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Thumb3_R_ctrl.pm" "Thumb3_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Thumb3_R_JNT_orientConstraint1.w0" "Thumb3_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Thumb2_R_JNT.ro" "Thumb2_R_JNT_orientConstraint1.cro";
connectAttr "Thumb2_R_JNT.pim" "Thumb2_R_JNT_orientConstraint1.cpim";
connectAttr "Thumb2_R_JNT.jo" "Thumb2_R_JNT_orientConstraint1.cjo";
connectAttr "Thumb2_R_JNT.is" "Thumb2_R_JNT_orientConstraint1.is";
connectAttr "Thumb2_R_Ctrl.r" "Thumb2_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Thumb2_R_Ctrl.ro" "Thumb2_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Thumb2_R_Ctrl.pm" "Thumb2_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Thumb2_R_JNT_orientConstraint1.w0" "Thumb2_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Thumb1_R_JNT.ro" "Thumb1_R_JNT_orientConstraint1.cro";
connectAttr "Thumb1_R_JNT.pim" "Thumb1_R_JNT_orientConstraint1.cpim";
connectAttr "Thumb1_R_JNT.jo" "Thumb1_R_JNT_orientConstraint1.cjo";
connectAttr "Thumb1_R_JNT.is" "Thumb1_R_JNT_orientConstraint1.is";
connectAttr "Thumb1_R_Ctrl.r" "Thumb1_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Thumb1_R_Ctrl.ro" "Thumb1_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Thumb1_R_Ctrl.pm" "Thumb1_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Thumb1_R_JNT_orientConstraint1.w0" "Thumb1_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_R_JNT.s" "Pinky1_R_JNT.is";
connectAttr "Pinky1_R_JNT_orientConstraint1.crx" "Pinky1_R_JNT.rx";
connectAttr "Pinky1_R_JNT_orientConstraint1.cry" "Pinky1_R_JNT.ry";
connectAttr "Pinky1_R_JNT_orientConstraint1.crz" "Pinky1_R_JNT.rz";
connectAttr "Pinky1_R_JNT.s" "Pinky2_R_JNT.is";
connectAttr "Pinky2_R_JNT_orientConstraint1.crx" "Pinky2_R_JNT.rx";
connectAttr "Pinky2_R_JNT_orientConstraint1.cry" "Pinky2_R_JNT.ry";
connectAttr "Pinky2_R_JNT_orientConstraint1.crz" "Pinky2_R_JNT.rz";
connectAttr "Pinky2_R_JNT.s" "Pinky3_R_JNT.is";
connectAttr "Pinky3_R_JNT_orientConstraint1.crx" "Pinky3_R_JNT.rx";
connectAttr "Pinky3_R_JNT_orientConstraint1.cry" "Pinky3_R_JNT.ry";
connectAttr "Pinky3_R_JNT_orientConstraint1.crz" "Pinky3_R_JNT.rz";
connectAttr "Pinky3_R_JNT.s" "Pinky_end_R_JNT.is";
connectAttr "Pinky3_R_JNT.ro" "Pinky3_R_JNT_orientConstraint1.cro";
connectAttr "Pinky3_R_JNT.pim" "Pinky3_R_JNT_orientConstraint1.cpim";
connectAttr "Pinky3_R_JNT.jo" "Pinky3_R_JNT_orientConstraint1.cjo";
connectAttr "Pinky3_R_JNT.is" "Pinky3_R_JNT_orientConstraint1.is";
connectAttr "Pinky3_R_Ctrl.r" "Pinky3_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Pinky3_R_Ctrl.ro" "Pinky3_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Pinky3_R_Ctrl.pm" "Pinky3_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Pinky3_R_JNT_orientConstraint1.w0" "Pinky3_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Pinky2_R_JNT.ro" "Pinky2_R_JNT_orientConstraint1.cro";
connectAttr "Pinky2_R_JNT.pim" "Pinky2_R_JNT_orientConstraint1.cpim";
connectAttr "Pinky2_R_JNT.jo" "Pinky2_R_JNT_orientConstraint1.cjo";
connectAttr "Pinky2_R_JNT.is" "Pinky2_R_JNT_orientConstraint1.is";
connectAttr "Pinky2_R_Ctrl.r" "Pinky2_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Pinky2_R_Ctrl.ro" "Pinky2_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Pinky2_R_Ctrl.pm" "Pinky2_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Pinky2_R_JNT_orientConstraint1.w0" "Pinky2_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Pinky1_R_JNT.ro" "Pinky1_R_JNT_orientConstraint1.cro";
connectAttr "Pinky1_R_JNT.pim" "Pinky1_R_JNT_orientConstraint1.cpim";
connectAttr "Pinky1_R_JNT.jo" "Pinky1_R_JNT_orientConstraint1.cjo";
connectAttr "Pinky1_R_JNT.is" "Pinky1_R_JNT_orientConstraint1.is";
connectAttr "Pinky1_R_Ctrl.r" "Pinky1_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Pinky1_R_Ctrl.ro" "Pinky1_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Pinky1_R_Ctrl.pm" "Pinky1_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Pinky1_R_JNT_orientConstraint1.w0" "Pinky1_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Wrist_R_JNT.ro" "Wrist_R_JNT_orientConstraint1.cro";
connectAttr "Wrist_R_JNT.pim" "Wrist_R_JNT_orientConstraint1.cpim";
connectAttr "Wrist_R_JNT.jo" "Wrist_R_JNT_orientConstraint1.cjo";
connectAttr "Wrist_R_JNT.is" "Wrist_R_JNT_orientConstraint1.is";
connectAttr "Wrist_R_Ctrl.r" "Wrist_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Wrist_R_Ctrl.ro" "Wrist_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Wrist_R_Ctrl.pm" "Wrist_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Wrist_R_JNT_orientConstraint1.w0" "Wrist_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Elbow_R_JNT.ro" "Elbow_R_JNT_orientConstraint1.cro";
connectAttr "Elbow_R_JNT.pim" "Elbow_R_JNT_orientConstraint1.cpim";
connectAttr "Elbow_R_JNT.jo" "Elbow_R_JNT_orientConstraint1.cjo";
connectAttr "Elbow_R_JNT.is" "Elbow_R_JNT_orientConstraint1.is";
connectAttr "Elbow_R_Ctrl.r" "Elbow_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Elbow_R_Ctrl.ro" "Elbow_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Elbow_R_Ctrl.pm" "Elbow_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Elbow_R_JNT_orientConstraint1.w0" "Elbow_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_R_JNT.ro" "Shoulder_R_JNT_orientConstraint1.cro";
connectAttr "Shoulder_R_JNT.pim" "Shoulder_R_JNT_orientConstraint1.cpim";
connectAttr "Shoulder_R_JNT.jo" "Shoulder_R_JNT_orientConstraint1.cjo";
connectAttr "Shoulder_R_JNT.is" "Shoulder_R_JNT_orientConstraint1.is";
connectAttr "Shoulder_R_Ctrl.r" "Shoulder_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Shoulder_R_Ctrl.ro" "Shoulder_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Shoulder_R_Ctrl.pm" "Shoulder_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Shoulder_R_JNT_orientConstraint1.w0" "Shoulder_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Clav2_R_JNT.ro" "Clav2_R_JNT_orientConstraint1.cro";
connectAttr "Clav2_R_JNT.pim" "Clav2_R_JNT_orientConstraint1.cpim";
connectAttr "Clav2_R_JNT.jo" "Clav2_R_JNT_orientConstraint1.cjo";
connectAttr "Clav2_R_JNT.is" "Clav2_R_JNT_orientConstraint1.is";
connectAttr "Clav2_R_Ctrl.r" "Clav2_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Clav2_R_Ctrl.ro" "Clav2_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Clav2_R_Ctrl.pm" "Clav2_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Clav2_R_JNT_orientConstraint1.w0" "Clav2_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Spine3_JNT.s" "Clav1_L_JNT.is";
connectAttr "Clav1_L_JNT.s" "Clav2_L_JNT.is";
connectAttr "Clav2_L_JNT_orientConstraint1.crx" "Clav2_L_JNT.rx";
connectAttr "Clav2_L_JNT_orientConstraint1.cry" "Clav2_L_JNT.ry";
connectAttr "Clav2_L_JNT_orientConstraint1.crz" "Clav2_L_JNT.rz";
connectAttr "Clav2_L_JNT.s" "Shoulder_L_JNT.is";
connectAttr "Shoulder_L_JNT_orientConstraint1.crx" "Shoulder_L_JNT.rx";
connectAttr "Shoulder_L_JNT_orientConstraint1.cry" "Shoulder_L_JNT.ry";
connectAttr "Shoulder_L_JNT_orientConstraint1.crz" "Shoulder_L_JNT.rz";
connectAttr "Shoulder_L_JNT.s" "Elbow_L_JNT.is";
connectAttr "Elbow_L_JNT_orientConstraint1.crx" "Elbow_L_JNT.rx";
connectAttr "Elbow_L_JNT_orientConstraint1.cry" "Elbow_L_JNT.ry";
connectAttr "Elbow_L_JNT_orientConstraint1.crz" "Elbow_L_JNT.rz";
connectAttr "Elbow_L_JNT.s" "Wrist_L_JNT.is";
connectAttr "Wrist_L_JNT_orientConstraint1.crx" "Wrist_L_JNT.rx";
connectAttr "Wrist_L_JNT_orientConstraint1.cry" "Wrist_L_JNT.ry";
connectAttr "Wrist_L_JNT_orientConstraint1.crz" "Wrist_L_JNT.rz";
connectAttr "Wrist_L_JNT.s" "Palm_L_JNT.is";
connectAttr "Palm_L_JNT.s" "Middle1_L_JNT.is";
connectAttr "Middle1_L_JNT_orientConstraint1.crx" "Middle1_L_JNT.rx";
connectAttr "Middle1_L_JNT_orientConstraint1.cry" "Middle1_L_JNT.ry";
connectAttr "Middle1_L_JNT_orientConstraint1.crz" "Middle1_L_JNT.rz";
connectAttr "Middle1_L_JNT.s" "Middle2_L_JNT.is";
connectAttr "Middle2_L_JNT_orientConstraint1.crx" "Middle2_L_JNT.rx";
connectAttr "Middle2_L_JNT_orientConstraint1.cry" "Middle2_L_JNT.ry";
connectAttr "Middle2_L_JNT_orientConstraint1.crz" "Middle2_L_JNT.rz";
connectAttr "Middle2_L_JNT.s" "Middle3_L_JNT.is";
connectAttr "Middle3_L_JNT_orientConstraint1.crx" "Middle3_L_JNT.rx";
connectAttr "Middle3_L_JNT_orientConstraint1.cry" "Middle3_L_JNT.ry";
connectAttr "Middle3_L_JNT_orientConstraint1.crz" "Middle3_L_JNT.rz";
connectAttr "Middle3_L_JNT.s" "Middle_end_L_JNT.is";
connectAttr "Middle3_L_JNT.ro" "Middle3_L_JNT_orientConstraint1.cro";
connectAttr "Middle3_L_JNT.pim" "Middle3_L_JNT_orientConstraint1.cpim";
connectAttr "Middle3_L_JNT.jo" "Middle3_L_JNT_orientConstraint1.cjo";
connectAttr "Middle3_L_JNT.is" "Middle3_L_JNT_orientConstraint1.is";
connectAttr "Middle3_L_Ctrl.r" "Middle3_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Middle3_L_Ctrl.ro" "Middle3_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Middle3_L_Ctrl.pm" "Middle3_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Middle3_L_JNT_orientConstraint1.w0" "Middle3_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Middle2_L_JNT.ro" "Middle2_L_JNT_orientConstraint1.cro";
connectAttr "Middle2_L_JNT.pim" "Middle2_L_JNT_orientConstraint1.cpim";
connectAttr "Middle2_L_JNT.jo" "Middle2_L_JNT_orientConstraint1.cjo";
connectAttr "Middle2_L_JNT.is" "Middle2_L_JNT_orientConstraint1.is";
connectAttr "Middle2_L_Ctrl.r" "Middle2_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Middle2_L_Ctrl.ro" "Middle2_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Middle2_L_Ctrl.pm" "Middle2_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Middle2_L_JNT_orientConstraint1.w0" "Middle2_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Middle1_L_JNT.ro" "Middle1_L_JNT_orientConstraint1.cro";
connectAttr "Middle1_L_JNT.pim" "Middle1_L_JNT_orientConstraint1.cpim";
connectAttr "Middle1_L_JNT.jo" "Middle1_L_JNT_orientConstraint1.cjo";
connectAttr "Middle1_L_JNT.is" "Middle1_L_JNT_orientConstraint1.is";
connectAttr "Middle1_L_Ctrl.r" "Middle1_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Middle1_L_Ctrl.ro" "Middle1_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Middle1_L_Ctrl.pm" "Middle1_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Middle1_L_JNT_orientConstraint1.w0" "Middle1_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_L_JNT.s" "Ring_L_JNT.is";
connectAttr "Ring_L_JNT_orientConstraint1.crx" "Ring_L_JNT.rx";
connectAttr "Ring_L_JNT_orientConstraint1.cry" "Ring_L_JNT.ry";
connectAttr "Ring_L_JNT_orientConstraint1.crz" "Ring_L_JNT.rz";
connectAttr "Ring_L_JNT.s" "Ling2_L_JNT.is";
connectAttr "Ling2_L_JNT_orientConstraint1.crx" "Ling2_L_JNT.rx";
connectAttr "Ling2_L_JNT_orientConstraint1.cry" "Ling2_L_JNT.ry";
connectAttr "Ling2_L_JNT_orientConstraint1.crz" "Ling2_L_JNT.rz";
connectAttr "Ling2_L_JNT.s" "Ling3_L_JNT.is";
connectAttr "Ling3_L_JNT_orientConstraint1.crx" "Ling3_L_JNT.rx";
connectAttr "Ling3_L_JNT_orientConstraint1.cry" "Ling3_L_JNT.ry";
connectAttr "Ling3_L_JNT_orientConstraint1.crz" "Ling3_L_JNT.rz";
connectAttr "Ling3_L_JNT.s" "Ling_end_L_JNT.is";
connectAttr "Ling3_L_JNT.ro" "Ling3_L_JNT_orientConstraint1.cro";
connectAttr "Ling3_L_JNT.pim" "Ling3_L_JNT_orientConstraint1.cpim";
connectAttr "Ling3_L_JNT.jo" "Ling3_L_JNT_orientConstraint1.cjo";
connectAttr "Ling3_L_JNT.is" "Ling3_L_JNT_orientConstraint1.is";
connectAttr "Ring3_L_Ctrl.r" "Ling3_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Ring3_L_Ctrl.ro" "Ling3_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Ring3_L_Ctrl.pm" "Ling3_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ling3_L_JNT_orientConstraint1.w0" "Ling3_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Ling2_L_JNT.ro" "Ling2_L_JNT_orientConstraint1.cro";
connectAttr "Ling2_L_JNT.pim" "Ling2_L_JNT_orientConstraint1.cpim";
connectAttr "Ling2_L_JNT.jo" "Ling2_L_JNT_orientConstraint1.cjo";
connectAttr "Ling2_L_JNT.is" "Ling2_L_JNT_orientConstraint1.is";
connectAttr "Ring2_L_Ctrl.r" "Ling2_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Ring2_L_Ctrl.ro" "Ling2_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Ring2_L_Ctrl.pm" "Ling2_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ling2_L_JNT_orientConstraint1.w0" "Ling2_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Ring_L_JNT.ro" "Ring_L_JNT_orientConstraint1.cro";
connectAttr "Ring_L_JNT.pim" "Ring_L_JNT_orientConstraint1.cpim";
connectAttr "Ring_L_JNT.jo" "Ring_L_JNT_orientConstraint1.cjo";
connectAttr "Ring_L_JNT.is" "Ring_L_JNT_orientConstraint1.is";
connectAttr "Ring1_L_Ctrl.r" "Ring_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Ring1_L_Ctrl.ro" "Ring_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Ring1_L_Ctrl.pm" "Ring_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ring_L_JNT_orientConstraint1.w0" "Ring_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_L_JNT.s" "Index1_L_JNT.is";
connectAttr "Index1_L_JNT_parentConstraint1.ctx" "Index1_L_JNT.tx";
connectAttr "Index1_L_JNT_parentConstraint1.cty" "Index1_L_JNT.ty";
connectAttr "Index1_L_JNT_parentConstraint1.ctz" "Index1_L_JNT.tz";
connectAttr "Index1_L_JNT_parentConstraint1.crx" "Index1_L_JNT.rx";
connectAttr "Index1_L_JNT_parentConstraint1.cry" "Index1_L_JNT.ry";
connectAttr "Index1_L_JNT_parentConstraint1.crz" "Index1_L_JNT.rz";
connectAttr "Index1_L_JNT.s" "Index2_L_JNT.is";
connectAttr "Index2_L_JNT_orientConstraint1.crx" "Index2_L_JNT.rx";
connectAttr "Index2_L_JNT_orientConstraint1.cry" "Index2_L_JNT.ry";
connectAttr "Index2_L_JNT_orientConstraint1.crz" "Index2_L_JNT.rz";
connectAttr "Index2_L_JNT.s" "Index3_L_JNT.is";
connectAttr "Index3_L_JNT_orientConstraint1.crx" "Index3_L_JNT.rx";
connectAttr "Index3_L_JNT_orientConstraint1.cry" "Index3_L_JNT.ry";
connectAttr "Index3_L_JNT_orientConstraint1.crz" "Index3_L_JNT.rz";
connectAttr "Index3_L_JNT.s" "Index_end_L_JNT.is";
connectAttr "Index3_L_JNT.ro" "Index3_L_JNT_orientConstraint1.cro";
connectAttr "Index3_L_JNT.pim" "Index3_L_JNT_orientConstraint1.cpim";
connectAttr "Index3_L_JNT.jo" "Index3_L_JNT_orientConstraint1.cjo";
connectAttr "Index3_L_JNT.is" "Index3_L_JNT_orientConstraint1.is";
connectAttr "Index_3_L_Ctrl.r" "Index3_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Index_3_L_Ctrl.ro" "Index3_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Index_3_L_Ctrl.pm" "Index3_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Index3_L_JNT_orientConstraint1.w0" "Index3_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Index2_L_JNT.ro" "Index2_L_JNT_orientConstraint1.cro";
connectAttr "Index2_L_JNT.pim" "Index2_L_JNT_orientConstraint1.cpim";
connectAttr "Index2_L_JNT.jo" "Index2_L_JNT_orientConstraint1.cjo";
connectAttr "Index2_L_JNT.is" "Index2_L_JNT_orientConstraint1.is";
connectAttr "Index2_L_Ctrl.r" "Index2_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Index2_L_Ctrl.ro" "Index2_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Index2_L_Ctrl.pm" "Index2_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Index2_L_JNT_orientConstraint1.w0" "Index2_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Index1_L_JNT.ro" "Index1_L_JNT_parentConstraint1.cro";
connectAttr "Index1_L_JNT.pim" "Index1_L_JNT_parentConstraint1.cpim";
connectAttr "Index1_L_JNT.rp" "Index1_L_JNT_parentConstraint1.crp";
connectAttr "Index1_L_JNT.rpt" "Index1_L_JNT_parentConstraint1.crt";
connectAttr "Index1_L_JNT.jo" "Index1_L_JNT_parentConstraint1.cjo";
connectAttr "Index1_L_Ctrl.t" "Index1_L_JNT_parentConstraint1.tg[0].tt";
connectAttr "Index1_L_Ctrl.rp" "Index1_L_JNT_parentConstraint1.tg[0].trp";
connectAttr "Index1_L_Ctrl.rpt" "Index1_L_JNT_parentConstraint1.tg[0].trt";
connectAttr "Index1_L_Ctrl.r" "Index1_L_JNT_parentConstraint1.tg[0].tr";
connectAttr "Index1_L_Ctrl.ro" "Index1_L_JNT_parentConstraint1.tg[0].tro";
connectAttr "Index1_L_Ctrl.s" "Index1_L_JNT_parentConstraint1.tg[0].ts";
connectAttr "Index1_L_Ctrl.pm" "Index1_L_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Index1_L_JNT_parentConstraint1.w0" "Index1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Palm_L_JNT.s" "Thumb1_L_JNT.is";
connectAttr "Thumb1_L_JNT_orientConstraint1.crx" "Thumb1_L_JNT.rx";
connectAttr "Thumb1_L_JNT_orientConstraint1.cry" "Thumb1_L_JNT.ry";
connectAttr "Thumb1_L_JNT_orientConstraint1.crz" "Thumb1_L_JNT.rz";
connectAttr "Thumb1_L_JNT.s" "Thumb2_L_JNT.is";
connectAttr "Thumb2_L_JNT_orientConstraint1.crx" "Thumb2_L_JNT.rx";
connectAttr "Thumb2_L_JNT_orientConstraint1.cry" "Thumb2_L_JNT.ry";
connectAttr "Thumb2_L_JNT_orientConstraint1.crz" "Thumb2_L_JNT.rz";
connectAttr "Thumb2_L_JNT.s" "Thumb3_L_JNT.is";
connectAttr "Thumb3_L_JNT_orientConstraint1.crx" "Thumb3_L_JNT.rx";
connectAttr "Thumb3_L_JNT_orientConstraint1.cry" "Thumb3_L_JNT.ry";
connectAttr "Thumb3_L_JNT_orientConstraint1.crz" "Thumb3_L_JNT.rz";
connectAttr "Thumb3_L_JNT.s" "Thumb_end_L_JNT.is";
connectAttr "Thumb3_L_JNT.ro" "Thumb3_L_JNT_orientConstraint1.cro";
connectAttr "Thumb3_L_JNT.pim" "Thumb3_L_JNT_orientConstraint1.cpim";
connectAttr "Thumb3_L_JNT.jo" "Thumb3_L_JNT_orientConstraint1.cjo";
connectAttr "Thumb3_L_JNT.is" "Thumb3_L_JNT_orientConstraint1.is";
connectAttr "Thumb3_L_Ctrl.r" "Thumb3_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Thumb3_L_Ctrl.ro" "Thumb3_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Thumb3_L_Ctrl.pm" "Thumb3_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Thumb3_L_JNT_orientConstraint1.w0" "Thumb3_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Thumb2_L_JNT.ro" "Thumb2_L_JNT_orientConstraint1.cro";
connectAttr "Thumb2_L_JNT.pim" "Thumb2_L_JNT_orientConstraint1.cpim";
connectAttr "Thumb2_L_JNT.jo" "Thumb2_L_JNT_orientConstraint1.cjo";
connectAttr "Thumb2_L_JNT.is" "Thumb2_L_JNT_orientConstraint1.is";
connectAttr "Thumb2_L_Ctrl.r" "Thumb2_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Thumb2_L_Ctrl.ro" "Thumb2_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Thumb2_L_Ctrl.pm" "Thumb2_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Thumb2_L_JNT_orientConstraint1.w0" "Thumb2_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Thumb1_L_JNT.ro" "Thumb1_L_JNT_orientConstraint1.cro";
connectAttr "Thumb1_L_JNT.pim" "Thumb1_L_JNT_orientConstraint1.cpim";
connectAttr "Thumb1_L_JNT.jo" "Thumb1_L_JNT_orientConstraint1.cjo";
connectAttr "Thumb1_L_JNT.is" "Thumb1_L_JNT_orientConstraint1.is";
connectAttr "Thumb1_L_Ctrl.r" "Thumb1_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Thumb1_L_Ctrl.ro" "Thumb1_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Thumb1_L_Ctrl.pm" "Thumb1_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Thumb1_L_JNT_orientConstraint1.w0" "Thumb1_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Palm_L_JNT.s" "Pinky1_L_JNT.is";
connectAttr "Pinky1_L_JNT_orientConstraint1.crx" "Pinky1_L_JNT.rx";
connectAttr "Pinky1_L_JNT_orientConstraint1.cry" "Pinky1_L_JNT.ry";
connectAttr "Pinky1_L_JNT_orientConstraint1.crz" "Pinky1_L_JNT.rz";
connectAttr "Pinky1_L_JNT.s" "Pinky2_L_JNT.is";
connectAttr "Pinky2_L_JNT_orientConstraint1.crx" "Pinky2_L_JNT.rx";
connectAttr "Pinky2_L_JNT_orientConstraint1.cry" "Pinky2_L_JNT.ry";
connectAttr "Pinky2_L_JNT_orientConstraint1.crz" "Pinky2_L_JNT.rz";
connectAttr "Pinky2_L_JNT.s" "Pinky3_L_JNT.is";
connectAttr "Pinky3_L_JNT_orientConstraint1.crx" "Pinky3_L_JNT.rx";
connectAttr "Pinky3_L_JNT_orientConstraint1.cry" "Pinky3_L_JNT.ry";
connectAttr "Pinky3_L_JNT_orientConstraint1.crz" "Pinky3_L_JNT.rz";
connectAttr "Pinky3_L_JNT.s" "Pinky_end_L_JNT.is";
connectAttr "Pinky3_L_JNT.ro" "Pinky3_L_JNT_orientConstraint1.cro";
connectAttr "Pinky3_L_JNT.pim" "Pinky3_L_JNT_orientConstraint1.cpim";
connectAttr "Pinky3_L_JNT.jo" "Pinky3_L_JNT_orientConstraint1.cjo";
connectAttr "Pinky3_L_JNT.is" "Pinky3_L_JNT_orientConstraint1.is";
connectAttr "Pinky3_L_Ctrl.r" "Pinky3_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Pinky3_L_Ctrl.ro" "Pinky3_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Pinky3_L_Ctrl.pm" "Pinky3_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Pinky3_L_JNT_orientConstraint1.w0" "Pinky3_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Pinky2_L_JNT.ro" "Pinky2_L_JNT_orientConstraint1.cro";
connectAttr "Pinky2_L_JNT.pim" "Pinky2_L_JNT_orientConstraint1.cpim";
connectAttr "Pinky2_L_JNT.jo" "Pinky2_L_JNT_orientConstraint1.cjo";
connectAttr "Pinky2_L_JNT.is" "Pinky2_L_JNT_orientConstraint1.is";
connectAttr "Pinky2_L_Ctrl.r" "Pinky2_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Pinky2_L_Ctrl.ro" "Pinky2_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Pinky2_L_Ctrl.pm" "Pinky2_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Pinky2_L_JNT_orientConstraint1.w0" "Pinky2_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Pinky1_L_JNT.ro" "Pinky1_L_JNT_orientConstraint1.cro";
connectAttr "Pinky1_L_JNT.pim" "Pinky1_L_JNT_orientConstraint1.cpim";
connectAttr "Pinky1_L_JNT.jo" "Pinky1_L_JNT_orientConstraint1.cjo";
connectAttr "Pinky1_L_JNT.is" "Pinky1_L_JNT_orientConstraint1.is";
connectAttr "Pinky1_L_Ctrl.r" "Pinky1_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Pinky1_L_Ctrl.ro" "Pinky1_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Pinky1_L_Ctrl.pm" "Pinky1_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Pinky1_L_JNT_orientConstraint1.w0" "Pinky1_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Wrist_L_JNT.ro" "Wrist_L_JNT_orientConstraint1.cro";
connectAttr "Wrist_L_JNT.pim" "Wrist_L_JNT_orientConstraint1.cpim";
connectAttr "Wrist_L_JNT.jo" "Wrist_L_JNT_orientConstraint1.cjo";
connectAttr "Wrist_L_JNT.is" "Wrist_L_JNT_orientConstraint1.is";
connectAttr "Wrist_L_Ctrl.r" "Wrist_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Wrist_L_Ctrl.ro" "Wrist_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Wrist_L_Ctrl.pm" "Wrist_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Wrist_L_JNT_orientConstraint1.w0" "Wrist_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Elbow_L_JNT.ro" "Elbow_L_JNT_orientConstraint1.cro";
connectAttr "Elbow_L_JNT.pim" "Elbow_L_JNT_orientConstraint1.cpim";
connectAttr "Elbow_L_JNT.jo" "Elbow_L_JNT_orientConstraint1.cjo";
connectAttr "Elbow_L_JNT.is" "Elbow_L_JNT_orientConstraint1.is";
connectAttr "Elbow_L_Ctrl.r" "Elbow_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Elbow_L_Ctrl.ro" "Elbow_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Elbow_L_Ctrl.pm" "Elbow_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Elbow_L_JNT_orientConstraint1.w0" "Elbow_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_L_JNT.ro" "Shoulder_L_JNT_orientConstraint1.cro";
connectAttr "Shoulder_L_JNT.pim" "Shoulder_L_JNT_orientConstraint1.cpim";
connectAttr "Shoulder_L_JNT.jo" "Shoulder_L_JNT_orientConstraint1.cjo";
connectAttr "Shoulder_L_JNT.is" "Shoulder_L_JNT_orientConstraint1.is";
connectAttr "Shoulder_L_Ctrl.r" "Shoulder_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Shoulder_L_Ctrl.ro" "Shoulder_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Shoulder_L_Ctrl.pm" "Shoulder_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Shoulder_L_JNT_orientConstraint1.w0" "Shoulder_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Clav2_L_JNT.ro" "Clav2_L_JNT_orientConstraint1.cro";
connectAttr "Clav2_L_JNT.pim" "Clav2_L_JNT_orientConstraint1.cpim";
connectAttr "Clav2_L_JNT.jo" "Clav2_L_JNT_orientConstraint1.cjo";
connectAttr "Clav2_L_JNT.is" "Clav2_L_JNT_orientConstraint1.is";
connectAttr "Clav2_L_Ctrl.r" "Clav2_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Clav2_L_Ctrl.ro" "Clav2_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Clav2_L_Ctrl.pm" "Clav2_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Clav2_L_JNT_orientConstraint1.w0" "Clav2_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Spine3_JNT.ro" "Spine3_JNT_orientConstraint1.cro";
connectAttr "Spine3_JNT.pim" "Spine3_JNT_orientConstraint1.cpim";
connectAttr "Spine3_JNT.jo" "Spine3_JNT_orientConstraint1.cjo";
connectAttr "Spine3_JNT.is" "Spine3_JNT_orientConstraint1.is";
connectAttr "Spine3_Ctrl.r" "Spine3_JNT_orientConstraint1.tg[0].tr";
connectAttr "Spine3_Ctrl.ro" "Spine3_JNT_orientConstraint1.tg[0].tro";
connectAttr "Spine3_Ctrl.pm" "Spine3_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Spine3_JNT_orientConstraint1.w0" "Spine3_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Spine2_JNT.ro" "Spine2_JNT_orientConstraint1.cro";
connectAttr "Spine2_JNT.pim" "Spine2_JNT_orientConstraint1.cpim";
connectAttr "Spine2_JNT.jo" "Spine2_JNT_orientConstraint1.cjo";
connectAttr "Spine2_JNT.is" "Spine2_JNT_orientConstraint1.is";
connectAttr "Spine2_Ctrl.r" "Spine2_JNT_orientConstraint1.tg[0].tr";
connectAttr "Spine2_Ctrl.ro" "Spine2_JNT_orientConstraint1.tg[0].tro";
connectAttr "Spine2_Ctrl.pm" "Spine2_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Spine2_JNT_orientConstraint1.w0" "Spine2_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Spine1_JNT.ro" "Spine1_JNT_orientConstraint1.cro";
connectAttr "Spine1_JNT.pim" "Spine1_JNT_orientConstraint1.cpim";
connectAttr "Spine1_JNT.jo" "Spine1_JNT_orientConstraint1.cjo";
connectAttr "Spine1_JNT.is" "Spine1_JNT_orientConstraint1.is";
connectAttr "Spine1_Ctrl.r" "Spine1_JNT_orientConstraint1.tg[0].tr";
connectAttr "Spine1_Ctrl.ro" "Spine1_JNT_orientConstraint1.tg[0].tro";
connectAttr "Spine1_Ctrl.pm" "Spine1_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Spine1_JNT_orientConstraint1.w0" "Spine1_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Cog_JNT.s" "Hip_R_JNT.is";
connectAttr "Hip_R_JNT.s" "Knee1_R_JNT.is";
connectAttr "Knee1_R_JNT.s" "Knee2_R_JNT.is";
connectAttr "Knee2_R_JNT.s" "Ankle_R_JNT.is";
connectAttr "Ankle_R_JNT.s" "Toe_R_JNT.is";
connectAttr "Toe_R_JNT.s" "|Root_JNT|Cog_JNT|Hip_R_JNT|Knee1_R_JNT|Knee2_R_JNT|Ankle_R_JNT|Toe_R_JNT|Toe_end_JNT.is"
		;
connectAttr "|Root_JNT|Cog_JNT|Hip_R_JNT|Knee1_R_JNT|Knee2_R_JNT|Ankle_R_JNT|Toe_R_JNT|Toe_end_JNT.tx" "effector3.tx"
		;
connectAttr "|Root_JNT|Cog_JNT|Hip_R_JNT|Knee1_R_JNT|Knee2_R_JNT|Ankle_R_JNT|Toe_R_JNT|Toe_end_JNT.ty" "effector3.ty"
		;
connectAttr "|Root_JNT|Cog_JNT|Hip_R_JNT|Knee1_R_JNT|Knee2_R_JNT|Ankle_R_JNT|Toe_R_JNT|Toe_end_JNT.tz" "effector3.tz"
		;
connectAttr "Toe_R_JNT.tx" "effector2.tx";
connectAttr "Toe_R_JNT.ty" "effector2.ty";
connectAttr "Toe_R_JNT.tz" "effector2.tz";
connectAttr "Ankle_R_JNT.tx" "effector1.tx";
connectAttr "Ankle_R_JNT.ty" "effector1.ty";
connectAttr "Ankle_R_JNT.tz" "effector1.tz";
connectAttr "Cog_JNT.s" "Hip_L_JNT.is";
connectAttr "Hip_L_JNT.s" "Knee1_L_JNT.is";
connectAttr "Knee1_L_JNT.s" "Knee2_L_JNT.is";
connectAttr "Knee2_L_JNT.s" "Ankle_L_JNT.is";
connectAttr "Ankle_L_JNT.s" "Toe_L_JNT.is";
connectAttr "Toe_L_JNT.s" "|Root_JNT|Cog_JNT|Hip_L_JNT|Knee1_L_JNT|Knee2_L_JNT|Ankle_L_JNT|Toe_L_JNT|Toe_end_JNT.is"
		;
connectAttr "Cog_JNT.ro" "Cog_JNT_orientConstraint1.cro";
connectAttr "Cog_JNT.pim" "Cog_JNT_orientConstraint1.cpim";
connectAttr "Cog_JNT.jo" "Cog_JNT_orientConstraint1.cjo";
connectAttr "Cog_JNT.is" "Cog_JNT_orientConstraint1.is";
connectAttr "Hips_Ctrl.r" "Cog_JNT_orientConstraint1.tg[0].tr";
connectAttr "Hips_Ctrl.ro" "Cog_JNT_orientConstraint1.tg[0].tro";
connectAttr "Hips_Ctrl.pm" "Cog_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Cog_JNT_orientConstraint1.w0" "Cog_JNT_orientConstraint1.tg[0].tw";
connectAttr "Cog_JNT.pim" "Cog_JNT_pointConstraint1.cpim";
connectAttr "Cog_JNT.rp" "Cog_JNT_pointConstraint1.crp";
connectAttr "Cog_JNT.rpt" "Cog_JNT_pointConstraint1.crt";
connectAttr "Hips_Ctrl.t" "Cog_JNT_pointConstraint1.tg[0].tt";
connectAttr "Hips_Ctrl.rp" "Cog_JNT_pointConstraint1.tg[0].trp";
connectAttr "Hips_Ctrl.rpt" "Cog_JNT_pointConstraint1.tg[0].trt";
connectAttr "Hips_Ctrl.pm" "Cog_JNT_pointConstraint1.tg[0].tpm";
connectAttr "Cog_JNT_pointConstraint1.w0" "Cog_JNT_pointConstraint1.tg[0].tw";
connectAttr "Root_JNT.pim" "Root_JNT_pointConstraint1.cpim";
connectAttr "Root_JNT.rp" "Root_JNT_pointConstraint1.crp";
connectAttr "Root_JNT.rpt" "Root_JNT_pointConstraint1.crt";
connectAttr "Root_Ctrl.t" "Root_JNT_pointConstraint1.tg[0].tt";
connectAttr "Root_Ctrl.rp" "Root_JNT_pointConstraint1.tg[0].trp";
connectAttr "Root_Ctrl.rpt" "Root_JNT_pointConstraint1.tg[0].trt";
connectAttr "Root_Ctrl.pm" "Root_JNT_pointConstraint1.tg[0].tpm";
connectAttr "Root_JNT_pointConstraint1.w0" "Root_JNT_pointConstraint1.tg[0].tw";
connectAttr "transformGeometry1.og" "Hips_CtrlShape.cr";
connectAttr "Hip_R_JNT.msg" "Leg_R_IK.hsj";
connectAttr "effector1.hp" "Leg_R_IK.hee";
connectAttr "ikRPsolver.msg" "Leg_R_IK.hsv";
connectAttr "Leg_R_IK_poleVectorConstraint1.ctx" "Leg_R_IK.pvx";
connectAttr "Leg_R_IK_poleVectorConstraint1.cty" "Leg_R_IK.pvy";
connectAttr "Leg_R_IK_poleVectorConstraint1.ctz" "Leg_R_IK.pvz";
connectAttr "Leg_R_IK.pim" "Leg_R_IK_poleVectorConstraint1.cpim";
connectAttr "Hip_R_JNT.pm" "Leg_R_IK_poleVectorConstraint1.ps";
connectAttr "Hip_R_JNT.t" "Leg_R_IK_poleVectorConstraint1.crp";
connectAttr "Knee_R_Ctrl.t" "Leg_R_IK_poleVectorConstraint1.tg[0].tt";
connectAttr "Knee_R_Ctrl.rp" "Leg_R_IK_poleVectorConstraint1.tg[0].trp";
connectAttr "Knee_R_Ctrl.rpt" "Leg_R_IK_poleVectorConstraint1.tg[0].trt";
connectAttr "Knee_R_Ctrl.pm" "Leg_R_IK_poleVectorConstraint1.tg[0].tpm";
connectAttr "Leg_R_IK_poleVectorConstraint1.w0" "Leg_R_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Ankle_R_JNT.msg" "Ankle_R_IK.hsj";
connectAttr "effector2.hp" "Ankle_R_IK.hee";
connectAttr "ikRPsolver.msg" "Ankle_R_IK.hsv";
connectAttr "Toe_R_JNT.msg" "Ball_R_IK.hsj";
connectAttr "effector3.hp" "Ball_R_IK.hee";
connectAttr "ikRPsolver.msg" "Ball_R_IK.hsv";
connectAttr "Ankle_L_JNT.msg" "Ankle_L_IK.hsj";
connectAttr "effector5.hp" "Ankle_L_IK.hee";
connectAttr "ikRPsolver.msg" "Ankle_L_IK.hsv";
connectAttr "Hip_L_JNT.msg" "Leg_L_IK.hsj";
connectAttr "effector6.hp" "Leg_L_IK.hee";
connectAttr "ikRPsolver.msg" "Leg_L_IK.hsv";
connectAttr "Leg_L_IK_poleVectorConstraint1.ctx" "Leg_L_IK.pvx";
connectAttr "Leg_L_IK_poleVectorConstraint1.cty" "Leg_L_IK.pvy";
connectAttr "Leg_L_IK_poleVectorConstraint1.ctz" "Leg_L_IK.pvz";
connectAttr "Leg_L_IK.pim" "Leg_L_IK_poleVectorConstraint1.cpim";
connectAttr "Hip_L_JNT.pm" "Leg_L_IK_poleVectorConstraint1.ps";
connectAttr "Hip_L_JNT.t" "Leg_L_IK_poleVectorConstraint1.crp";
connectAttr "Knee_L_Ctrl.t" "Leg_L_IK_poleVectorConstraint1.tg[0].tt";
connectAttr "Knee_L_Ctrl.rp" "Leg_L_IK_poleVectorConstraint1.tg[0].trp";
connectAttr "Knee_L_Ctrl.rpt" "Leg_L_IK_poleVectorConstraint1.tg[0].trt";
connectAttr "Knee_L_Ctrl.pm" "Leg_L_IK_poleVectorConstraint1.tg[0].tpm";
connectAttr "Leg_L_IK_poleVectorConstraint1.w0" "Leg_L_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Toe_L_JNT.msg" "Ball_L_IK.hsj";
connectAttr "effector4.hp" "Ball_L_IK.hee";
connectAttr "ikRPsolver.msg" "Ball_L_IK.hsv";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG:HumanBody:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG:HumanBody:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG:HumanBody1:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG:HumanBody1:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG:HumanBody2:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG:HumanBody2:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody1:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody1:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody2:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody2:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG:HumanBody:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG:HumanBody:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG:HumanBody1:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG:HumanBody1:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG:HumanBody2:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG:HumanBody2:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody1:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody1:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody2:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Basic_testKnight_RIG1:HumanBody2:blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "humanBodySG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.o" "ReflectionMap.uv";
connectAttr "place2dTexture1.ofu" "ReflectionMap.ofu";
connectAttr "place2dTexture1.ofv" "ReflectionMap.ofv";
connectAttr "place2dTexture1.rf" "ReflectionMap.rf";
connectAttr "place2dTexture1.reu" "ReflectionMap.reu";
connectAttr "place2dTexture1.rev" "ReflectionMap.rev";
connectAttr "place2dTexture1.vt1" "ReflectionMap.vt1";
connectAttr "place2dTexture1.vt2" "ReflectionMap.vt2";
connectAttr "place2dTexture1.vt3" "ReflectionMap.vt3";
connectAttr "place2dTexture1.vc1" "ReflectionMap.vc1";
connectAttr "place2dTexture1.ofs" "ReflectionMap.fs";
connectAttr ":defaultColorMgtGlobals.cme" "ReflectionMap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ReflectionMap.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ReflectionMap.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ReflectionMap.ws";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "Basic_testKnight_RIG:HumanBody:humanBodySG.msg" "Basic_testKnight_RIG:HumanBody:materialInfo1.sg"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.o" "Basic_testKnight_RIG:HumanBody:ReflectionMap.uv"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.ofu" "Basic_testKnight_RIG:HumanBody:ReflectionMap.ofu"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.ofv" "Basic_testKnight_RIG:HumanBody:ReflectionMap.ofv"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.rf" "Basic_testKnight_RIG:HumanBody:ReflectionMap.rf"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.reu" "Basic_testKnight_RIG:HumanBody:ReflectionMap.reu"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.rev" "Basic_testKnight_RIG:HumanBody:ReflectionMap.rev"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.vt1" "Basic_testKnight_RIG:HumanBody:ReflectionMap.vt1"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.vt2" "Basic_testKnight_RIG:HumanBody:ReflectionMap.vt2"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.vt3" "Basic_testKnight_RIG:HumanBody:ReflectionMap.vt3"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.vc1" "Basic_testKnight_RIG:HumanBody:ReflectionMap.vc1"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.ofs" "Basic_testKnight_RIG:HumanBody:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Basic_testKnight_RIG:HumanBody:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Basic_testKnight_RIG:HumanBody:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Basic_testKnight_RIG:HumanBody:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Basic_testKnight_RIG:HumanBody:ReflectionMap.ws"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:blinn1.oc" "Basic_testKnight_RIG:HumanBody:blinn1SG.ss"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:blinn1SG.msg" "Basic_testKnight_RIG:HumanBody:materialInfo2.sg"
		;
connectAttr "Basic_testKnight_RIG:HumanBody:blinn1.msg" "Basic_testKnight_RIG:HumanBody:materialInfo2.m"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:humanBodySG.msg" "Basic_testKnight_RIG:HumanBody1:materialInfo1.sg"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.o" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.uv"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.ofu" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.ofu"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.ofv" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.ofv"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.rf" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.rf"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.reu" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.reu"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.rev" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.rev"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.vt1" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.vt1"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.vt2" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.vt2"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.vt3" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.vt3"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.vc1" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.vc1"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.ofs" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Basic_testKnight_RIG:HumanBody1:ReflectionMap.ws"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:blinn1.oc" "Basic_testKnight_RIG:HumanBody1:blinn1SG.ss"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:blinn1SG.msg" "Basic_testKnight_RIG:HumanBody1:materialInfo2.sg"
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:blinn1.msg" "Basic_testKnight_RIG:HumanBody1:materialInfo2.m"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:humanBodySG.msg" "Basic_testKnight_RIG:HumanBody2:materialInfo1.sg"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.o" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.uv"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.ofu" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.ofu"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.ofv" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.ofv"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.rf" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.rf"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.reu" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.reu"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.rev" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.rev"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.vt1" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.vt1"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.vt2" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.vt2"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.vt3" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.vt3"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.vc1" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.vc1"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.ofs" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Basic_testKnight_RIG:HumanBody2:ReflectionMap.ws"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:blinn1.oc" "Basic_testKnight_RIG:HumanBody2:blinn1SG.ss"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:blinn1SG.msg" "Basic_testKnight_RIG:HumanBody2:materialInfo2.sg"
		;
connectAttr "Basic_testKnight_RIG:HumanBody2:blinn1.msg" "Basic_testKnight_RIG:HumanBody2:materialInfo2.m"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:humanBodySG.msg" "Basic_testKnight_RIG1:HumanBody:materialInfo1.sg"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.o" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.uv"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.ofu" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.ofu"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.ofv" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.ofv"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.rf" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.rf"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.reu" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.reu"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.rev" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.rev"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.vt1" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.vt1"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.vt2" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.vt2"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.vt3" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.vt3"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.vc1" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.vc1"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.ofs" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Basic_testKnight_RIG1:HumanBody:ReflectionMap.ws"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1.oc" "Basic_testKnight_RIG1:HumanBody:blinn1SG.ss"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1SG.msg" "Basic_testKnight_RIG1:HumanBody:materialInfo2.sg"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1.msg" "Basic_testKnight_RIG1:HumanBody:materialInfo2.m"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:humanBodySG.msg" "Basic_testKnight_RIG1:HumanBody1:materialInfo1.sg"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.o" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.uv"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.ofu" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.ofu"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.ofv" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.ofv"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.rf" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.rf"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.reu" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.reu"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.rev" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.rev"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.vt1" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.vt1"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.vt2" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.vt2"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.vt3" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.vt3"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.vc1" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.vc1"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.ofs" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.ws"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1.oc" "Basic_testKnight_RIG1:HumanBody1:blinn1SG.ss"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1SG.msg" "Basic_testKnight_RIG1:HumanBody1:materialInfo2.sg"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1.msg" "Basic_testKnight_RIG1:HumanBody1:materialInfo2.m"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:humanBodySG.msg" "Basic_testKnight_RIG1:HumanBody2:materialInfo1.sg"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.o" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.uv"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.ofu" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.ofu"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.ofv" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.ofv"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.rf" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.rf"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.reu" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.reu"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.rev" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.rev"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.vt1" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.vt1"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.vt2" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.vt2"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.vt3" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.vt3"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.vc1" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.vc1"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.ofs" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.ws"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1.oc" "Basic_testKnight_RIG1:HumanBody2:blinn1SG.ss"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1SG.msg" "Basic_testKnight_RIG1:HumanBody2:materialInfo2.sg"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1.msg" "Basic_testKnight_RIG1:HumanBody2:materialInfo2.m"
		;
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "Middle1_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Spine3_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Clav2_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Root_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Ling3_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Middle3_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Ankle_L_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "Middle3_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "Middle1_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "Middle1_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Leg_R_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "Ring1_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "Neck_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "Toe_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "Thumb2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "Basic_testKnight_RIG1:HumanBody:humanBodySG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Pinky_end_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Thumb3_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "Index1_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "Ring3_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "Ring2_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "Pinky2_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Middle2_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Ring1_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Clav2_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "Thumb1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "Clav1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "Toe_end_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Foot_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Spine3_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Neck_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "Index1_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Ring2_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "Pinky3_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Ring1_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Thumb1_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Thumb2_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Index2_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "Middle3_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "effector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "Ring_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Pinky1_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Pinky2_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Spine3_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "Thumb1_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "Ring1_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Hip_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "Wrist_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Shoulder_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Pinky1_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Elbow_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "Ring2_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "Middle2_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Pinky2_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Ring3_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Index1_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Knee2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "Middle1_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Thumb2_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn";
connectAttr "Thumb3_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Knee_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn";
connectAttr "Thumb1_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn";
connectAttr "Thumb1_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Pinky3_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Wrist_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Ring1_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn";
connectAttr "Ring3_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Clav2_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn";
connectAttr "Palm_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "Toe_end_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Index2_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Middle3_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Hip_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "Ring3_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Spine2_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "Spine3_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Index_end_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Middle1_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn";
connectAttr "Ankle_R_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn";
connectAttr "Elbow_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn";
connectAttr "Pinky3_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Index3_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Toe_end_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Foot_L_Ctrl_Group.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "|Root_JNT|Cog_JNT|Hip_L_JNT|Knee1_L_JNT|Knee2_L_JNT|Ankle_L_JNT|Toe_L_JNT|Toe_end_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Shoulder_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Ball_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Clav2_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Middle2_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "Pinky1_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn";
connectAttr "Wrist_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Middle2_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Middle2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "transformGeometry1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Ring3_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Thumb3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn";
connectAttr "Ankle_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "Clav2_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "Ankle_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "Ball_L_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn";
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Thumb1_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn";
connectAttr "Head1_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Pinky2_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn";
connectAttr "Thumb3_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn";
connectAttr "Pinky3_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Ring3_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "Ball_R_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn";
connectAttr "Toe_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Foot_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn";
connectAttr "Wrist_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn";
connectAttr "Pinky3_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Wrist_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "Thumb2_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Thumb_end_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Thumb1_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "Elbow_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Middle3_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Toe_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn";
connectAttr "Wrist_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn";
connectAttr "Foot_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn";
connectAttr "Shoulder_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Elbow_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Head_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn";
connectAttr "Index3_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "Toe_end_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Thumb3_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Middle2_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Ring1_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Index3_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn";
connectAttr "Clav2_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Middle3_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Spine2_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Ring1_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn";
connectAttr "Ring1_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn";
connectAttr "Knee2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn";
connectAttr "Root_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn";
connectAttr "Ring2_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Elbow_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Thumb1_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Root_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "Root_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Pinky3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn";
connectAttr "Elbow_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Middle1_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "Middle3_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Leg_L_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn";
connectAttr "Index2_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Foot_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Pinky2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn";
connectAttr "Shoulder_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Pinky2_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Index2_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Leg_L_IK_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody:ReflectionMap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Middle3_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:humanBodySG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Index1_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn";
connectAttr "Wrist_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Pinky3_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn";
connectAttr "Wrist_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Index3_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Cog_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Thumb3_R_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn";
connectAttr "Knee_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn";
connectAttr "Middle2_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "Ring2_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Middle2_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Pinky3_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn";
connectAttr "Elbow_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Pinky2_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Ball_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn";
connectAttr "Toe_end_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn";
connectAttr "Middle2_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Ankle_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Pinky2_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn";
connectAttr "Clav2_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Thumb3_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Middle1_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Head_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Pinky1_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Toe_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn";
connectAttr "Ankle_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn";
connectAttr "Pinky3_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "Ring2_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn";
connectAttr "Index1_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn";
connectAttr "Index1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn";
connectAttr "Knee_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Spine1_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Thumb2_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Thumb1_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Thumb2_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Thumb2_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn";
connectAttr "Index2_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn";
connectAttr "effector1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn";
connectAttr "Index2_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Toe_end_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Toe_end_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Index1_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn";
connectAttr "Thumb2_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn";
connectAttr "Pinky2_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn";
connectAttr "Index_3_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Middle1_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Shoulder_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Ling2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn";
connectAttr "Neck_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Index3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn";
connectAttr "Knee1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "Middle3_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Ring2_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Ball_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn";
connectAttr "Middle1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn";
connectAttr "Thumb1_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Index_3_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Elbow_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn";
connectAttr "Middle2_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Pinky3_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn";
connectAttr "Index3_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Spine1_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn";
connectAttr "Clav2_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Root_Ctrl_Group.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Ankle_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn";
connectAttr "Thumb3_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Cog_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Pinky1_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn";
connectAttr "Ling3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn";
connectAttr "Shoulder_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Index1_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Leg_R_IK_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Hips_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn";
connectAttr "Ring1_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Thumb3_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn";
connectAttr "Middle1_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Spine2_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Ankle_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Index2_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Ring_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn";
connectAttr "Pinky2_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn";
connectAttr "Spine1_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Spine1_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn";
connectAttr "Index2_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn";
connectAttr "Pinky1_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn";
connectAttr "Clav2_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Middle2_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Toe_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn";
connectAttr "Ling_end_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Pinky1_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Spine2_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn";
connectAttr "Ankle_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn";
connectAttr "Index3_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "effector5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn";
connectAttr "effector6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn";
connectAttr "Shoulder_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Thumb2_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn";
connectAttr "Thumb2_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Pinky1_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Pinky1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn";
connectAttr "Index2_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "Elbow_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn";
connectAttr "effector4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn";
connectAttr "Wrist_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Knee_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Ring2_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Clav2_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn";
connectAttr "Middle3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn";
connectAttr "Wrist_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn";
connectAttr "Ankle_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn";
connectAttr "Thumb3_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Cog_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn";
connectAttr "Thumb1_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Shoulder_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Ring2_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Shoulder_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Pinky3_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Thumb2_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Ring3_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn";
connectAttr "Middle1_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "Clav2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn";
connectAttr "Elbow_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Middle_end_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Toe_end_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn";
connectAttr "Index2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn";
connectAttr "|Root_JNT|Cog_JNT|Hip_R_JNT|Knee1_R_JNT|Knee2_R_JNT|Ankle_R_JNT|Toe_R_JNT|Toe_end_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "Index1_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "Elbow_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn";
connectAttr "Pinky1_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "Pinky2_R_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Index1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody2:humanBodySG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Ankle_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Pinky1_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn";
connectAttr "Index1_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Shoulder_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Ring3_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "Knee1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn";
connectAttr "Ring3_L_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn";
connectAttr "Thumb3_R_ctrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "makeNurbCircle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Ball_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "effector3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn";
connectAttr "Foot_R_Ctrl_Group.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "Hips_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "Shoulder_R_LOC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Ankle_L_LOCShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Index3_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Index2_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "humanBodySG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "Basic_testKnight_RIG:HumanBody:humanBodySG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody:blinn1SG.pa" ":renderPartition.st" -na
		;
connectAttr "Basic_testKnight_RIG:HumanBody1:humanBodySG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody1:blinn1SG.pa" ":renderPartition.st" 
		-na;
connectAttr "Basic_testKnight_RIG:HumanBody2:humanBodySG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody2:blinn1SG.pa" ":renderPartition.st" 
		-na;
connectAttr "Basic_testKnight_RIG1:HumanBody:humanBodySG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1SG.pa" ":renderPartition.st" 
		-na;
connectAttr "Basic_testKnight_RIG1:HumanBody1:humanBodySG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody2:humanBodySG.pa" ":renderPartition.st"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "Basic_testKnight_RIG:HumanBody:blinn1.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "Basic_testKnight_RIG:HumanBody1:blinn1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody2:blinn1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody:blinn1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody1:blinn1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody2:blinn1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Basic_testKnight_RIG:HumanBody:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody1:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody2:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody1:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody2:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "Basic_testKnight_RIG:HumanBody:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody1:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Basic_testKnight_RIG:HumanBody2:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody1:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Basic_testKnight_RIG1:HumanBody2:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Rig_KnightClean_Vr1.ma
