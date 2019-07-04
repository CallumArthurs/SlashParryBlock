//Maya ASCII 2018ff09 scene
//Name: Basic_testKnight.RIG.ma
//Last modified: Thu, Jul 04, 2019 02:12:17 PM
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
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "D250F5BB-4C85-5328-67EE-B6A965785807";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 82.051200204880658 172.97809451042451 -649.76755012367732 ;
	setAttr ".r" -type "double3" 350.09473361541427 171.39999999987239 0 ;
	setAttr ".rp" -type "double3" -5.6843418860808015e-14 0 5.6843418860808015e-14 ;
	setAttr ".rpt" -type "double3" 8.6982321296220025e-14 2.6829107025304795e-15 -1.3132024133412179e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F5FED9EE-4249-5D1E-E539-E6AF9E9C5E1C";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 684.65049219088712;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B33127CE-442F-1C56-2DD3-EF852CFD9C0F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CE835D63-41A9-A4BA-D789-86A3A7B06B35";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 46.366172505010915;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "702B91A1-4AF1-3232-89C9-0FBE1BBD8DE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.5341893646687783 45.35830355776806 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C6D85331-49BD-2763-54EA-90876D8B233E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 587.97304984216987;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "262D52E0-48B2-EF70-0C80-0DA008CC1D83";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 37.094446932252325 -2.1067884909816215 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "39EBCC3C-4BA5-6ABD-12E6-A0A8AC5330E2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 203.73855390779624;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root_JNT";
	rename -uid "1B7044C5-4282-7257-C224-41BD443F8001";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.975301975164072 ;
	setAttr ".radi" 2;
createNode joint -n "Cog_JNT" -p "root_JNT";
	rename -uid "0682D022-4282-13CA-DDF5-EEB45DE29BB0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.024698024836387906 ;
	setAttr ".radi" 1.2323525304156104;
createNode joint -n "Spine1_JNT" -p "Cog_JNT";
	rename -uid "DE8ABF65-48BB-640F-1C3A-8C8639633AE1";
	setAttr ".t" -type "double3" 22.73242127626807 -1.7971749868848942e-13 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode joint -n "Neck1_JNT" -p "Spine1_JNT";
	rename -uid "34072946-4C7C-FA68-D165-A39393A73DA8";
	setAttr ".t" -type "double3" 20.001942648429136 -1.6556817090182214e-13 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 2.2069531490250793e-32 2.3933940545122461 ;
	setAttr ".radi" 1.3790203052508279;
createNode joint -n "Neck2_JNT" -p "Neck1_JNT";
	rename -uid "DCDAEBDB-45D1-7137-8202-A1AEA31A261B";
	setAttr ".t" -type "double3" 4.4882509633522352 7.6327832942979512e-15 9.4909827659402983e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 2.9464741160813768 ;
	setAttr ".radi" 2;
createNode joint -n "Headt_end_JNT" -p "Neck2_JNT";
	rename -uid "7E1B321A-4CDC-2F8E-A957-FF9CC688486D";
	setAttr ".t" -type "double3" 36.682401625308444 2.0142732440801019e-15 -6.3874947875714234e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "Neck2_JNT_orientConstraint1" -p "Neck2_JNT";
	rename -uid "DDE41138-492B-CE4D-2838-46A8BB56A967";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck2_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -6.9489775777321669e-15 7.0163823865395822e-15 -89.44691993843135 ;
	setAttr ".o" -type "double3" 0 0 89.446919938431336 ;
	setAttr -k on ".w0";
createNode joint -n "Clav_L_JNT" -p "Neck1_JNT";
	rename -uid "53C239B9-49DC-3B12-AE2A-42B198F256A7";
	setAttr ".t" -type "double3" -0.93868124415270793 17.969892637958178 2.2006771500097083e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622632 0 170.73410140098963 ;
	setAttr ".radi" 1.0719114659363527;
createNode joint -n "Shoulder_L_JNT" -p "Clav_L_JNT";
	rename -uid "1838F18D-43AC-9104-86B1-CB804AD1A018";
	setAttr ".t" -type "double3" 12.056955008102836 -6.3583068012057356e-15 -2.9179239209869351e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 78.34070734647689 ;
	setAttr ".radi" 2;
createNode joint -n "Elbow_L_JNT" -p "Shoulder_L_JNT";
	rename -uid "1BE4881D-43C0-7695-7AD3-628E556307C6";
	setAttr ".t" -type "double3" 30.738752998466435 4.8519901135799227e-15 1.3291454442972519e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.40634623330886638 ;
	setAttr ".radi" 1.8152669808925543;
createNode joint -n "Wrist_JNT" -p "Elbow_L_JNT";
	rename -uid "4C2E750D-4158-7298-8861-1E8777F848E3";
	setAttr ".t" -type "double3" 26.428494963922727 8.5265028460203679e-14 1.1448764335597174e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 0 89.855276512386084 ;
	setAttr ".radi" 1.8152669808925543;
createNode orientConstraint -n "Elbow_L_JNT_orientConstraint1" -p "Elbow_L_JNT";
	rename -uid "9A3E14E8-48EC-5137-F2C4-6397EE24CAD8";
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
	setAttr ".lr" -type "double3" 0 0 -0.40634623330886638 ;
	setAttr ".o" -type "double3" 0 0 0.40634623330886638 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Shoulder_L_JNT_orientConstraint1" -p "Shoulder_L_JNT";
	rename -uid "EBF62BFF-4CFB-2D2A-7E0B-8F9CAD9D010F";
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
	setAttr ".lr" -type "double3" 0 0 2.5444437451708134e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Clav_R_JNT" -p "Neck1_JNT";
	rename -uid "C5AD11E1-4FEE-E0ED-405E-51AF4A0F50EF";
	setAttr ".t" -type "double3" 0.56433490174910372 -17.985588905923308 -2.2025993884419098e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -165.94718031737813 ;
	setAttr ".radi" 1.0719114659363527;
createNode joint -n "Shoulder_R_JNT" -p "Clav_R_JNT";
	rename -uid "4F4A86BF-4FD8-61E7-F90D-8F98F290C0A5";
	setAttr ".t" -type "double3" 12.056777494836687 7.6569305095582768e-15 -3.0499728658356542e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 78.340574371890781 ;
	setAttr ".radi" 2;
createNode joint -n "Elbow_R_JNT" -p "Shoulder_R_JNT";
	rename -uid "5079D50C-4E02-C640-2038-4B807E6C7125";
	setAttr ".t" -type "double3" 30.738700000000012 1.1384254650081969e-14 -3.764365812669981e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.40541142127722918 ;
	setAttr ".radi" 1.8152669808925543;
createNode joint -n "Wrist_JNT" -p "Elbow_R_JNT";
	rename -uid "66047B98-428C-77E6-470F-F2B69F52CEFF";
	setAttr ".t" -type "double3" 26.428461586706103 -4.8808233930192069e-14 -3.2363337585059349e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.8152669808925543;
createNode orientConstraint -n "Elbow_R_JNT_orientConstraint1" -p "Elbow_R_JNT";
	rename -uid "C5114CB0-4F46-F1D9-4B3C-BE9CFB6623F6";
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
	setAttr ".lr" -type "double3" 0 -179.99999999999997 -0.40541142127721214 ;
	setAttr ".o" -type "double3" 180 2.7586914362813491e-33 179.59458857872278 ;
	setAttr ".rsrr" -type "double3" 180 -180.00000000000003 180 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Shoulder_R_JNT_orientConstraint1" -p "Shoulder_R_JNT";
	rename -uid "E2AD9A0E-4D3B-DE73-A4B3-8AA22E7011CA";
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
	setAttr ".lr" -type "double3" 0 180 5.0888874903416268e-14 ;
	setAttr ".o" -type "double3" 0 180 0 ;
	setAttr ".rsrr" -type "double3" 0 360 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Spine1_JNT_orientConstraint1" -p "Spine1_JNT";
	rename -uid "0E814560-48B9-AA7B-0328-3CB243210420";
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
	setAttr ".lr" -type "double3" 0 0 -90.000000000000469 ;
	setAttr ".o" -type "double3" 0 0 90.000000000000469 ;
	setAttr -k on ".w0";
createNode joint -n "Hip_L_JNT" -p "Cog_JNT";
	rename -uid "FB760F63-478E-0236-C4B5-FB9B83A53FA8";
	setAttr ".t" -type "double3" -0.19584249242271312 -15.157550453494084 0 ;
	setAttr ".r" -type "double3" -1.4033418597069752e-14 2.2849999778211461e-27 1.2588647682001284e-22 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 0 ;
	setAttr ".radi" 2;
createNode joint -n "Knee_L_JNT" -p "Hip_L_JNT";
	rename -uid "1CF2CD57-4DDE-8D3D-8AAB-C69C30D6D54F";
	setAttr ".t" -type "double3" 40.21946004306254 3.2152058793144533e-13 -4.9254633005171421e-15 ;
	setAttr ".r" -type "double3" 6.6266360029847769e-13 1.2162905300548817e-06 -5.4706553187876314e-12 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 90 0 ;
	setAttr ".radi" 1.9706895925391232;
createNode joint -n "Ankle_L_JNT" -p "Knee_L_JNT";
	rename -uid "1AABEBD9-44A9-1B2F-BF6A-ED91652443BE";
	setAttr ".t" -type "double3" 29.433332122423046 2.1671553440683056e-13 -3.6045435971966338e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "Ankle_L_JNT_orientConstraint1" -p "Ankle_L_JNT";
	rename -uid "85AA10C5-43DB-CE6D-8B01-98AA09DE10A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Foot_R_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -179.99999878370949 9.4787915988669323e-23 -89.999999999999545 ;
	setAttr ".o" -type "double3" 180 -1.2162905278622697e-06 -89.999999999999545 ;
	setAttr ".rsrr" -type "double3" -7.0166995571919059e-15 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Knee_L_JNT";
	rename -uid "2648A946-4D40-E4FD-B4F7-2EB2EBBFAB09";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Hip_R_JNT" -p "Cog_JNT";
	rename -uid "E04FBA3F-49F0-ACC1-A524-3AB89B552155";
	setAttr ".t" -type "double3" -0.19587991988203157 15.157566089580127 0 ;
	setAttr ".r" -type "double3" -8.5377366028501255e-07 1.3298391618693177e-19 7.6590598600288229e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 0 ;
	setAttr ".radi" 2;
createNode joint -n "Knee_R_JNT" -p "Hip_R_JNT";
	rename -uid "70801223-41A5-AC67-5577-7F8240C30A56";
	setAttr ".t" -type "double3" 40.219399999999993 3.1974423109204508e-13 -4.9254559473627056e-15 ;
	setAttr ".r" -type "double3" 6.6809474986460335e-13 1.2163368830239678e-06 -5.2515486980653686e-12 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 90 0 ;
	setAttr ".radi" 1.9706895925391232;
createNode joint -n "Ankle_R_JNT" -p "Knee_R_JNT";
	rename -uid "0D93572E-49A1-F565-02AF-44A2656B67FF";
	setAttr ".t" -type "double3" 29.433355000000002 2.1849189124623081e-13 3.6045463988917755e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "Ankle_R_JNT_orientConstraint1" -p "Ankle_R_JNT";
	rename -uid "F77CEDB5-4340-44E9-557A-4CAB26A50152";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Foot_L_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -179.99999878366313 0 -89.999999999999545 ;
	setAttr ".o" -type "double3" -179.99999743867906 -1.2163071360632358e-06 -89.999999999999588 ;
	setAttr ".rsrr" -type "double3" -180 -180 180 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "Knee_R_JNT";
	rename -uid "92A2FA74-4AD2-042B-56FB-55AFDAF0B1E3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "Cog_JNT_orientConstraint1" -p "Cog_JNT";
	rename -uid "E8194123-4CD3-1B4C-4071-D785B52789EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -90.000000000000469 ;
	setAttr ".o" -type "double3" 0 0 90.000000000000469 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Cog_JNT_pointConstraint1" -p "Cog_JNT";
	rename -uid "F5608DCE-4D94-FF7D-2ACA-B78110F459CA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 69.980887239029911 3.9771563820067968e-10 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "root_JNT_orientConstraint1" -p "root_JNT";
	rename -uid "506CEDF8-47F1-F15B-0E6B-0AA00715EBDF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -89.975301975164072 ;
	setAttr ".o" -type "double3" 0 0 89.975301975164072 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "root_JNT_pointConstraint1" -p "root_JNT";
	rename -uid "0966FA03-4FAF-AF01-C8A6-DCB9CD8F9F24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "root_Ctrl";
	rename -uid "E7D06911-4B74-33B8-EE88-4D81F002F699";
createNode nurbsCurve -n "root_CtrlShape" -p "root_Ctrl";
	rename -uid "7FC5704D-463F-B78D-994E-7288689A8426";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		38.233585961800912 2.3411319334022335e-15 -38.233585961800912
		3.3108605315221823e-15 3.3108605315221823e-15 -54.070455805336401
		-38.233585961800912 2.3411319334022327e-15 -38.233585961800905
		-54.070455805336422 1.7163559460826735e-31 -2.8030219770756228e-15
		-38.233585961800912 -2.3411319334022331e-15 38.233585961800912
		-5.4162745384985507e-15 -3.3108605315221846e-15 54.070455805336437
		38.233585961800912 -2.3411319334022327e-15 38.233585961800905
		54.070455805336422 -4.5150088169223704e-31 7.3735689670946701e-15
		38.233585961800912 2.3411319334022335e-15 -38.233585961800912
		3.3108605315221823e-15 3.3108605315221823e-15 -54.070455805336401
		-38.233585961800912 2.3411319334022327e-15 -38.233585961800905
		;
createNode transform -n "Foot_Ctrl_group" -p "root_Ctrl";
	rename -uid "60CBD28E-4D84-0225-8EB1-1490D04CB919";
createNode transform -n "Foot_R_Ctrl" -p "Foot_Ctrl_group";
	rename -uid "A328C65A-416B-6A2A-1E55-259E7CEB6173";
	setAttr ".rp" -type "double3" 15.187716484069824 0.1322452574968338 6.2481882423526258e-07 ;
	setAttr ".sp" -type "double3" 15.187716484069824 0.1322452574968338 6.2481882423526258e-07 ;
createNode nurbsCurve -n "Foot_R_CtrlShape" -p "Foot_R_Ctrl";
	rename -uid "47D32435-4F2A-8779-CE58-23BA0297776C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		23.74598392693418 0.13224525749683438 -15.813085265709189
		15.187716484069824 0.13224525749683461 -22.363079904536512
		6.6294490412054667 0.13224525749683438 -15.813085265709184
		3.0844985959549387 0.13224525749683375 6.2481882307595665e-07
		6.6294490412054614 0.13224525749683319 15.813086515346834
		15.187716484069824 0.132245257496833 22.363081154174171
		23.74598392693418 0.13224525749683319 15.81308651534683
		27.290934372184704 0.1322452574968338 6.2481882728490783e-07
		23.74598392693418 0.13224525749683438 -15.813085265709189
		15.187716484069824 0.13224525749683461 -22.363079904536512
		6.6294490412054667 0.13224525749683438 -15.813085265709184
		;
createNode ikHandle -n "Leg_R_IK" -p "Foot_R_Ctrl";
	rename -uid "4E9778A6-44DD-B37E-0FFA-F4A57CDA0679";
	setAttr ".t" -type "double3" 15.187716543074217 0.13224526197397779 6.2481885110384478e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "Leg_R_IK";
	rename -uid "CDC863E3-44C2-2FE6-59F9-ACA9725112E0";
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
	setAttr ".rst" -type "double3" -5.9004365837722617e-08 -40.21946087411483 -60.355178079348413 ;
	setAttr -k on ".w0";
createNode transform -n "Knee_R_Ctrl" -p "Leg_R_IK";
	rename -uid "1A045002-46C8-F666-CBFD-9FAB8144056B";
	setAttr ".t" -type "double3" -15.187716543074217 -0.13224526197397779 -6.2481885110384478e-07 ;
	setAttr ".rp" -type "double3" 15.187716484069824 29.565576553344727 -60.355178079348413 ;
	setAttr ".sp" -type "double3" 15.187716484069824 29.565576553344727 -60.355178079348413 ;
createNode nurbsCurve -n "Knee_R_CtrlShape" -p "Knee_R_Ctrl";
	rename -uid "4ACC30DE-498B-87AD-1BC6-83AF8D2542EC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.983265942222694 25.770027095191857 -60.355178079348413
		15.187716484069824 24.197859032967092 -60.355178079348413
		11.392167025916958 25.77002709519186 -60.355178079348413
		9.8199989636921856 29.565576553344727 -60.355178079348413
		11.392167025916958 33.361126011497596 -60.355178079348413
		15.187716484069824 34.933294073722365 -60.355178079348413
		18.983265942222694 33.361126011497596 -60.355178079348413
		20.555434004447463 29.565576553344727 -60.355178079348413
		18.983265942222694 25.770027095191857 -60.355178079348413
		15.187716484069824 24.197859032967092 -60.355178079348413
		11.392167025916958 25.77002709519186 -60.355178079348413
		;
createNode transform -n "Foot_L_Ctrl" -p "Foot_Ctrl_group";
	rename -uid "75B3E403-4A4B-11F7-5EEB-88920F3153E4";
	setAttr ".rp" -type "double3" -15.127400398254395 0.13224500417709351 6.2484315321853501e-07 ;
	setAttr ".sp" -type "double3" -15.127400398254395 0.13224500417709351 6.2484315321853501e-07 ;
createNode nurbsCurve -n "Foot_L_CtrlShape" -p "Foot_L_Ctrl";
	rename -uid "71AE1928-43F3-CE36-22A2-98BC57B87740";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.5564812254843243 0.13224500417709412 -15.836461830275582
		-15.127400398254395 0.13224500417709434 -22.396139359198074
		-23.698319571024467 0.13224500417709412 -15.836461830275576
		-27.248510534389421 0.13224500417709348 6.2484315205751521e-07
		-23.69831957102447 0.13224500417709292 15.836463079961886
		-15.127400398254395 0.13224500417709273 22.396140608884394
		-6.5564812254843279 0.13224500417709292 15.836463079961884
		-3.0062902621193768 0.13224500417709351 6.2484315627268848e-07
		-6.5564812254843243 0.13224500417709412 -15.836461830275582
		-15.127400398254395 0.13224500417709434 -22.396139359198074
		-23.698319571024467 0.13224500417709412 -15.836461830275576
		;
createNode ikHandle -n "Leg_L_IK" -p "Foot_L_Ctrl";
	rename -uid "1B6C6147-406A-3BBA-94EE-A1B9B36C01B9";
	setAttr ".t" -type "double3" -15.127400000000021 0.13224499999999395 6.2482786449490716e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "Leg_L_IK";
	rename -uid "D8640265-4C43-1EF2-DB80-77A6BCC7EB3B";
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
	setAttr ".rst" -type "double3" -3.9825437347928982e-07 -40.219400558471662 -60.31242044836695 ;
	setAttr -k on ".w0";
createNode transform -n "Knee_L_Ctrl" -p "Leg_L_IK";
	rename -uid "481EB549-4B6B-AAA8-012D-C68E8050FDCC";
	setAttr ".t" -type "double3" 15.127400000000021 -0.13224499999999395 -6.2482786449490716e-07 ;
	setAttr ".rp" -type "double3" -15.127400398254395 29.56559944152832 -60.31242044836695 ;
	setAttr ".sp" -type "double3" -15.127400398254395 29.56559944152832 -60.31242044836695 ;
createNode nurbsCurve -n "Knee_L_CtrlShape" -p "Knee_L_Ctrl";
	rename -uid "26AE061D-4F78-C6B5-5112-98B1F18C2E3F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-11.331850940101527 25.770049983375451 -60.31242044836695
		-15.127400398254395 24.197881921150685 -60.31242044836695
		-18.922949856407261 25.770049983375454 -60.31242044836695
		-20.495117918632033 29.56559944152832 -60.31242044836695
		-18.922949856407261 33.36114889968119 -60.31242044836695
		-15.127400398254395 34.933316961905959 -60.31242044836695
		-11.331850940101527 33.36114889968119 -60.31242044836695
		-9.7596828778767559 29.56559944152832 -60.31242044836695
		-11.331850940101527 25.770049983375451 -60.31242044836695
		-15.127400398254395 24.197881921150685 -60.31242044836695
		-18.922949856407261 25.770049983375454 -60.31242044836695
		;
createNode transform -n "Hip_Ctrl" -p "root_Ctrl";
	rename -uid "F55220BC-46C8-DC6B-0A43-DE9B42D26B85";
	setAttr ".rp" -type "double3" 0.030166089534759521 69.980880737304688 0 ;
	setAttr ".sp" -type "double3" 0.030166089534759521 69.980880737304688 0 ;
createNode nurbsCurve -n "Hip_CtrlShape" -p "Hip_Ctrl";
	rename -uid "8FF7E517-4AAF-58A7-D9DD-9997AA1E2487";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		29.515184141063735 69.980880737304688 -31.814908804832381
		0.030166089534762068 69.980880737304688 -44.993075517457129
		-29.454851961994219 69.980880737304688 -31.814908804832374
		-41.66794632575305 69.980880737304688 -2.3324489800067231e-15
		-29.454851961994219 69.980880737304688 31.814908804832381
		0.030166089534755344 69.980880737304688 44.993075517457157
		29.515184141063735 69.980880737304688 31.814908804832374
		41.728278504822576 69.980880737304688 6.1356898222582825e-15
		29.515184141063735 69.980880737304688 -31.814908804832381
		0.030166089534762068 69.980880737304688 -44.993075517457129
		-29.454851961994219 69.980880737304688 -31.814908804832374
		;
createNode transform -n "Spine1_Ctrl" -p "Hip_Ctrl";
	rename -uid "6E468DAC-4650-CA31-E2D8-F68950788433";
	setAttr ".rp" -type "double3" 0.030166089534759521 92.713302612304688 0 ;
	setAttr ".sp" -type "double3" 0.030166089534759521 92.713302612304688 0 ;
createNode nurbsCurve -n "Spine1_CtrlShape" -p "Spine1_Ctrl";
	rename -uid "295A830A-439A-10E0-D46E-C399D98A683F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		24.995080907395295 83.589599096315467 -26.937629370366096
		0.030166089534761679 83.589599096315467 -38.095560793751531
		-24.934748728325776 83.589599096315467 -26.937629370366093
		-35.275555029372661 83.589599096315467 -1.9748805987199992e-15
		-24.934748728325776 83.589599096315467 26.937629370366096
		0.030166089534755983 83.589599096315467 38.095560793751559
		24.995080907395295 83.589599096315467 26.937629370366093
		35.335887208442173 83.589599096315467 5.1950781747460628e-15
		24.995080907395295 83.589599096315467 -26.937629370366096
		0.030166089534761679 83.589599096315467 -38.095560793751531
		-24.934748728325776 83.589599096315467 -26.937629370366093
		;
createNode transform -n "Neck2_Ctrl" -p "Spine1_Ctrl";
	rename -uid "EC91410E-4854-900C-69EF-5FB6AA29F8E4";
	setAttr ".rp" -type "double3" -0.15726533532142639 117.19957733154297 -1.6080724515682491e-32 ;
	setAttr ".sp" -type "double3" -0.15726533532142639 117.19957733154297 -1.6080724515682491e-32 ;
createNode nurbsCurve -n "Neck2_CtrlShape" -p "Neck2_Ctrl";
	rename -uid "DA968DF1-4F91-EB95-B01B-45A26F914026";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		22.539602754012236 116.9714459360469 -26.272382406693943
		-0.15726533532142412 122.67550402701076 -33.965124539248627
		-22.8541334246551 116.9714459360469 -26.272382406693939
		-32.255484010650271 116.9714459360469 -5.6841249403140633e-15
		-22.8541334246551 116.9714459360469 25.852496116869638
		-0.15726533532142992 116.9714459360469 36.734873225574582
		22.539602754012236 116.9714459360469 25.852496116869634
		31.940953340007344 116.9714459360469 1.639136675905174e-15
		22.539602754012236 116.9714459360469 -26.272382406693943
		-0.15726533532142412 122.67550402701076 -33.965124539248627
		-22.8541334246551 116.9714459360469 -26.272382406693939
		;
createNode transform -n "Shoulder_R_Ctrl" -p "Spine1_Ctrl";
	rename -uid "73DC4422-419E-20D5-B7BD-BA8D2BC07F20";
	setAttr ".rp" -type "double3" 20.46019172668457 100.71963500976563 -5.4043299381947778e-17 ;
	setAttr ".sp" -type "double3" 20.46019172668457 100.71963500976563 -5.4043299381947778e-17 ;
createNode nurbsCurve -n "Shoulder_R_CtrlShape" -p "Shoulder_R_Ctrl";
	rename -uid "8349C820-4604-0EA8-2D4F-1C9827BB2468";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		22.239438981486629 112.18516065901197 -12.371525508064744
		22.239438981486629 100.71963500976563 -17.495979160749865
		22.239438981486629 89.254109360519223 -12.371525508064742
		22.239438981486636 84.504933136864764 -2.7535905675143369e-15
		22.239438981486629 89.254109360519223 12.371525508064744
		22.239438981486629 100.71963500976561 17.495979160749872
		22.239438981486629 112.18516065901197 12.371525508064742
		22.239438981486622 116.93433688266641 5.3932458244647965e-16
		22.239438981486629 112.18516065901197 -12.371525508064744
		22.239438981486629 100.71963500976563 -17.495979160749865
		22.239438981486629 89.254109360519223 -12.371525508064742
		;
createNode transform -n "Elbow_R_Ctrl" -p "Shoulder_R_Ctrl";
	rename -uid "50E0734B-4EB9-0F5A-ABE2-F7AC7C35FCF4";
	setAttr ".rp" -type "double3" 51.198944091796875 100.71963500976563 -4.4859214654024981e-07 ;
	setAttr ".sp" -type "double3" 51.198944091796875 100.71963500976563 -4.4859214654024981e-07 ;
createNode nurbsCurve -n "Elbow_R_CtrlShape" -p "Elbow_R_Ctrl";
	rename -uid "3C3A55BA-4F4F-8F9E-62A9-8BBFB3C9B37C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		51.198944091796875 111.00960684282794 -11.103080490837341
		51.198944091796875 100.71963500976563 -15.702126828449318
		51.198944091796875 90.429663176703329 -11.103080490837339
		51.198944091796889 86.167417287011816 -4.4859214857465074e-07
		51.198944091796875 90.429663176703329 11.103079593653055
		51.198944091796875 100.71963500976561 15.702125931265046
		51.198944091796875 111.00960684282794 11.103079593653053
		51.198944091796868 115.27185273251942 -4.4859214561935634e-07
		51.198944091796875 111.00960684282794 -11.103080490837341
		51.198944091796875 100.71963500976563 -15.702126828449318
		51.198944091796875 90.429663176703329 -11.103080490837339
		;
createNode transform -n "Shoulder_L_Ctrl" -p "Spine1_Ctrl";
	rename -uid "4A830CA9-4423-21B2-B519-389181AFB45C";
	setAttr ".rp" -type "double3" -20.399900436401367 100.72000122070314 -5.352809820922525e-17 ;
	setAttr ".sp" -type "double3" -20.399900436401367 100.72000122070314 -5.352809820922525e-17 ;
createNode nurbsCurve -n "Shoulder_L_CtrlShape" -p "Shoulder_L_Ctrl";
	rename -uid "4890680B-4120-4B9A-8ABB-BF9089216B91";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-22.817983362205876 111.94268006705273 -12.109489077420386
		-22.817983362205876 100.72000122070314 -17.125403686696771
		-22.817983362205876 89.497322374353558 -12.109489077420383
		-22.817983362205862 84.84873659003793 -2.6192642904125604e-15
		-22.817983362205876 89.497322374353558 12.109489077420386
		-22.817983362205876 100.72000122070313 17.125403686696778
		-22.817983362205876 111.94268006705273 12.109489077420383
		-22.817983362205887 116.59126585136831 6.0390491497998326e-16
		-22.817983362205876 111.94268006705273 -12.109489077420386
		-22.817983362205876 100.72000122070314 -17.125403686696771
		-22.817983362205876 89.497322374353558 -12.109489077420383
		;
createNode transform -n "Elbow_L_Ctrl" -p "Shoulder_L_Ctrl";
	rename -uid "B2D38B38-4E6F-2B87-15A5-01B5E16A3E18";
	setAttr ".rp" -type "double3" -51.138599395751953 100.72000122070313 -5.0283469021596198e-17 ;
	setAttr ".sp" -type "double3" -51.138599395751953 100.72000122070313 -5.0283469021596198e-17 ;
createNode nurbsCurve -n "Elbow_L_CtrlShape" -p "Elbow_L_Ctrl";
	rename -uid "3B2DF54F-4EBF-CEBF-581B-8192985286C3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-51.138599395751953 111.13903263288854 -11.242337842020479
		-51.138599395751953 100.72000122070313 -15.899066648965622
		-51.138599395751953 90.300969808517834 -11.242337842020476
		-51.138599395751939 85.98526569079938 -2.2289288598082823e-15
		-51.138599395751953 90.300969808517834 11.242337842020479
		-51.138599395751953 100.72000122070311 15.899066648965629
		-51.138599395751953 111.13903263288854 11.242337842020476
		-51.13859939575196 115.45473675060704 7.6343166815040848e-16
		-51.138599395751953 111.13903263288854 -11.242337842020479
		-51.138599395751953 100.72000122070313 -15.899066648965622
		-51.138599395751953 90.300969808517834 -11.242337842020476
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5B075428-414C-E775-D96C-DF856708D4A0";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "105F3D6F-4E0D-18D6-A722-D7BDE89F443A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "869161E4-4857-2A93-A7F0-6FBF5E38DC45";
createNode displayLayerManager -n "layerManager";
	rename -uid "54B97975-4192-4418-21E5-76A48C58D6DF";
createNode displayLayer -n "defaultLayer";
	rename -uid "557BAC47-4461-231C-CF0A-77AD2CC7EA33";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FB837858-4361-7176-8A3B-C2815F66A935";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0C9BD54E-43EC-D6DC-494A-E3B7AE173FD1";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "1C14E7A7-4AF4-95E3-5C0A-8A8E4BC18AEA";
createNode shadingEngine -n "HumanBody:humanBodySG";
	rename -uid "A3433054-429F-DF8E-0666-9CB36C7A2E33";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "HumanBody:materialInfo1";
	rename -uid "4D96306E-42FB-025E-7A60-A498223E7CD9";
createNode file -n "HumanBody:ReflectionMap";
	rename -uid "812CE1B6-45E5-0227-3591-A0A2287137ED";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "HumanBody:place2dTexture1";
	rename -uid "838E534F-4A9E-49B8-9649-449F38825220";
createNode script -n "HumanBody:uiConfigurationScriptNode";
	rename -uid "18DB5AFD-4064-195B-D59B-B99A4C10BEB4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 333\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 546\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 546\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 546\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 100 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "HumanBody:sceneConfigurationScriptNode";
	rename -uid "E0A46F23-49CE-BCDB-C89F-1E91F003BC4A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode blinn -n "HumanBody:blinn1";
	rename -uid "63BAFCE0-4F7D-152C-E856-1D892E05C8E1";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "HumanBody:blinn1SG";
	rename -uid "48396E09-4C6A-3792-7A5B-FCB4BBBD005E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "HumanBody:materialInfo2";
	rename -uid "D42B99F6-416B-EC65-E989-58BBA45AD860";
createNode shadingEngine -n "HumanBody1:humanBodySG";
	rename -uid "5440C827-402E-7C84-30CB-18B2A61C97D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "HumanBody1:materialInfo1";
	rename -uid "3EC6D318-4A24-C0C3-3604-6EAF5D4C45ED";
createNode file -n "HumanBody1:ReflectionMap";
	rename -uid "6874233A-46EF-FF1C-75B2-8CB053763664";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "HumanBody1:place2dTexture1";
	rename -uid "382C4E01-477E-B3CA-7CF9-F28B526DA74A";
createNode blinn -n "HumanBody1:blinn1";
	rename -uid "5C348C58-44BC-5F11-D7E6-B993403BD514";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "HumanBody1:blinn1SG";
	rename -uid "BD69E178-4957-D890-D7FF-269BD1929038";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "HumanBody1:materialInfo2";
	rename -uid "45D41974-4CA3-6DE1-6029-DE98903FE746";
createNode shadingEngine -n "HumanBody2:humanBodySG";
	rename -uid "A51E2517-4663-CEF4-F3BA-86A818EA604A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "HumanBody2:materialInfo1";
	rename -uid "83088C5C-4126-3FF3-DD93-278575C815A1";
createNode file -n "HumanBody2:ReflectionMap";
	rename -uid "4B1E2CF7-4AD3-085F-B675-09AA4198B61A";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2014/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "HumanBody2:place2dTexture1";
	rename -uid "5CF42743-4622-F491-9922-46BFAF1072DD";
createNode blinn -n "HumanBody2:blinn1";
	rename -uid "CF35E951-4E76-E01D-3E8D-E78FE00554B6";
	setAttr ".c" -type "float3" 0.92150003 0.68229997 0.53719997 ;
createNode shadingEngine -n "HumanBody2:blinn1SG";
	rename -uid "10A76313-4C3C-4F11-6DCE-C6ABDA5491F8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "HumanBody2:materialInfo2";
	rename -uid "BEC8D4B0-4550-BEEF-6A77-03BCA92F70C5";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "CAA3A431-424B-E25D-25EE-5C90D46BCB7A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -784.52377834963534 -3.5714284295127645 ;
	setAttr ".tgi[0].vh" -type "double2" 758.33330319987556 85.714282308306167 ;
	setAttr -s 63 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 620;
	setAttr ".tgi[0].ni[0].y" -1035.7142333984375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -105.71428680419922;
	setAttr ".tgi[0].ni[1].y" 10;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 965.71429443359375;
	setAttr ".tgi[0].ni[2].y" 752.85711669921875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 620;
	setAttr ".tgi[0].ni[3].y" -762.85711669921875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 620;
	setAttr ".tgi[0].ni[4].y" 1082.857177734375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 47.142856597900391;
	setAttr ".tgi[0].ni[5].y" 140;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -1222.857177734375;
	setAttr ".tgi[0].ni[6].y" 1.4285714626312256;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 965.71429443359375;
	setAttr ".tgi[0].ni[7].y" 910;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -107.14286041259766;
	setAttr ".tgi[0].ni[8].y" 140;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 620;
	setAttr ".tgi[0].ni[9].y" 347.14285278320313;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 965.71429443359375;
	setAttr ".tgi[0].ni[10].y" -22.857143402099609;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 620;
	setAttr ".tgi[0].ni[11].y" -445.71429443359375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 312.85714721679688;
	setAttr ".tgi[0].ni[12].y" -840;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -1530;
	setAttr ".tgi[0].ni[13].y" -97.142860412597656;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 965.71429443359375;
	setAttr ".tgi[0].ni[14].y" 487.14285278320313;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -105.71428680419922;
	setAttr ".tgi[0].ni[15].y" 140;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 620;
	setAttr ".tgi[0].ni[16].y" 822.85711669921875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 620;
	setAttr ".tgi[0].ni[17].y" -128.57142639160156;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 965.71429443359375;
	setAttr ".tgi[0].ni[18].y" 78.571426391601563;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 620;
	setAttr ".tgi[0].ni[19].y" -287.14285278320313;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 965.71429443359375;
	setAttr ".tgi[0].ni[20].y" 267.14285278320313;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -105.71428680419922;
	setAttr ".tgi[0].ni[21].y" 10;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -105.71428680419922;
	setAttr ".tgi[0].ni[22].y" 140;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -54.285713195800781;
	setAttr ".tgi[0].ni[23].y" 24.285715103149414;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 965.71429443359375;
	setAttr ".tgi[0].ni[24].y" -805.71429443359375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 965.71429443359375;
	setAttr ".tgi[0].ni[25].y" -907.14288330078125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 45.714286804199219;
	setAttr ".tgi[0].ni[26].y" 140;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -105.71428680419922;
	setAttr ".tgi[0].ni[27].y" 10;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 661.4285888671875;
	setAttr ".tgi[0].ni[28].y" 175.71427917480469;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -158.57142639160156;
	setAttr ".tgi[0].ni[29].y" 75.714286804199219;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 965.71429443359375;
	setAttr ".tgi[0].ni[30].y" -124.28571319580078;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 620;
	setAttr ".tgi[0].ni[31].y" -661.4285888671875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 968.5714111328125;
	setAttr ".tgi[0].ni[32].y" 175.71427917480469;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -260;
	setAttr ".tgi[0].ni[33].y" 144.28572082519531;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 47.142856597900391;
	setAttr ".tgi[0].ni[34].y" 240;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -1181.4285888671875;
	setAttr ".tgi[0].ni[35].y" 42.857143402099609;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -874.28570556640625;
	setAttr ".tgi[0].ni[36].y" 42.857143402099609;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 661.4285888671875;
	setAttr ".tgi[0].ni[37].y" 277.14285278320313;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 968.5714111328125;
	setAttr ".tgi[0].ni[38].y" 277.14285278320313;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 354.28570556640625;
	setAttr ".tgi[0].ni[39].y" 261.42855834960938;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 354.28570556640625;
	setAttr ".tgi[0].ni[40].y" -12.857142448425293;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 661.4285888671875;
	setAttr ".tgi[0].ni[41].y" -27.142856597900391;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 968.5714111328125;
	setAttr ".tgi[0].ni[42].y" -27.142856597900391;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 354.28570556640625;
	setAttr ".tgi[0].ni[43].y" 88.571426391601563;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 47.142856597900391;
	setAttr ".tgi[0].ni[44].y" 24.285715103149414;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 661.4285888671875;
	setAttr ".tgi[0].ni[45].y" 74.285713195800781;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -567.14288330078125;
	setAttr ".tgi[0].ni[46].y" 130;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 968.5714111328125;
	setAttr ".tgi[0].ni[47].y" 74.285713195800781;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 354.28570556640625;
	setAttr ".tgi[0].ni[48].y" -114.28571319580078;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 661.4285888671875;
	setAttr ".tgi[0].ni[49].y" -128.57142639160156;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 968.5714111328125;
	setAttr ".tgi[0].ni[50].y" -128.57142639160156;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -54.285713195800781;
	setAttr ".tgi[0].ni[51].y" 125.71428680419922;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 47.142856597900391;
	setAttr ".tgi[0].ni[52].y" 140;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 404.28570556640625;
	setAttr ".tgi[0].ni[53].y" 74.285713195800781;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 620;
	setAttr ".tgi[0].ni[54].y" 245.71427917480469;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 312.85714721679688;
	setAttr ".tgi[0].ni[55].y" 241.42857360839844;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 965.71429443359375;
	setAttr ".tgi[0].ni[56].y" 368.57144165039063;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" -105.71428680419922;
	setAttr ".tgi[0].ni[57].y" 140;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 620;
	setAttr ".tgi[0].ni[58].y" 30;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -105.71428680419922;
	setAttr ".tgi[0].ni[59].y" 10;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 620;
	setAttr ".tgi[0].ni[60].y" 505.71429443359375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 965.71429443359375;
	setAttr ".tgi[0].ni[61].y" 588.5714111328125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 45.714286804199219;
	setAttr ".tgi[0].ni[62].y" 140;
	setAttr ".tgi[0].ni[62].nvs" 18304;
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
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
connectAttr "root_JNT_orientConstraint1.crx" "root_JNT.rx";
connectAttr "root_JNT_orientConstraint1.cry" "root_JNT.ry";
connectAttr "root_JNT_orientConstraint1.crz" "root_JNT.rz";
connectAttr "root_JNT_pointConstraint1.ctx" "root_JNT.tx";
connectAttr "root_JNT_pointConstraint1.cty" "root_JNT.ty";
connectAttr "root_JNT_pointConstraint1.ctz" "root_JNT.tz";
connectAttr "root_JNT.s" "Cog_JNT.is";
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
connectAttr "Spine1_JNT.s" "Neck1_JNT.is";
connectAttr "Neck1_JNT.s" "Neck2_JNT.is";
connectAttr "Neck2_JNT_orientConstraint1.crx" "Neck2_JNT.rx";
connectAttr "Neck2_JNT_orientConstraint1.cry" "Neck2_JNT.ry";
connectAttr "Neck2_JNT_orientConstraint1.crz" "Neck2_JNT.rz";
connectAttr "Neck2_JNT.s" "Headt_end_JNT.is";
connectAttr "Neck2_JNT.ro" "Neck2_JNT_orientConstraint1.cro";
connectAttr "Neck2_JNT.pim" "Neck2_JNT_orientConstraint1.cpim";
connectAttr "Neck2_JNT.jo" "Neck2_JNT_orientConstraint1.cjo";
connectAttr "Neck2_JNT.is" "Neck2_JNT_orientConstraint1.is";
connectAttr "Neck2_Ctrl.r" "Neck2_JNT_orientConstraint1.tg[0].tr";
connectAttr "Neck2_Ctrl.ro" "Neck2_JNT_orientConstraint1.tg[0].tro";
connectAttr "Neck2_Ctrl.pm" "Neck2_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Neck2_JNT_orientConstraint1.w0" "Neck2_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Neck1_JNT.s" "Clav_L_JNT.is";
connectAttr "Clav_L_JNT.s" "Shoulder_L_JNT.is";
connectAttr "Shoulder_L_JNT_orientConstraint1.crx" "Shoulder_L_JNT.rx";
connectAttr "Shoulder_L_JNT_orientConstraint1.cry" "Shoulder_L_JNT.ry";
connectAttr "Shoulder_L_JNT_orientConstraint1.crz" "Shoulder_L_JNT.rz";
connectAttr "Shoulder_L_JNT.s" "Elbow_L_JNT.is";
connectAttr "Elbow_L_JNT_orientConstraint1.crx" "Elbow_L_JNT.rx";
connectAttr "Elbow_L_JNT_orientConstraint1.cry" "Elbow_L_JNT.ry";
connectAttr "Elbow_L_JNT_orientConstraint1.crz" "Elbow_L_JNT.rz";
connectAttr "Elbow_L_JNT.s" "|root_JNT|Cog_JNT|Spine1_JNT|Neck1_JNT|Clav_L_JNT|Shoulder_L_JNT|Elbow_L_JNT|Wrist_JNT.is"
		;
connectAttr "Elbow_L_JNT.ro" "Elbow_L_JNT_orientConstraint1.cro";
connectAttr "Elbow_L_JNT.pim" "Elbow_L_JNT_orientConstraint1.cpim";
connectAttr "Elbow_L_JNT.jo" "Elbow_L_JNT_orientConstraint1.cjo";
connectAttr "Elbow_L_JNT.is" "Elbow_L_JNT_orientConstraint1.is";
connectAttr "Elbow_R_Ctrl.r" "Elbow_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Elbow_R_Ctrl.ro" "Elbow_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Elbow_R_Ctrl.pm" "Elbow_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Elbow_L_JNT_orientConstraint1.w0" "Elbow_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_L_JNT.ro" "Shoulder_L_JNT_orientConstraint1.cro";
connectAttr "Shoulder_L_JNT.pim" "Shoulder_L_JNT_orientConstraint1.cpim";
connectAttr "Shoulder_L_JNT.jo" "Shoulder_L_JNT_orientConstraint1.cjo";
connectAttr "Shoulder_L_JNT.is" "Shoulder_L_JNT_orientConstraint1.is";
connectAttr "Shoulder_R_Ctrl.r" "Shoulder_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Shoulder_R_Ctrl.ro" "Shoulder_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Shoulder_R_Ctrl.pm" "Shoulder_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Shoulder_L_JNT_orientConstraint1.w0" "Shoulder_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Neck1_JNT.s" "Clav_R_JNT.is";
connectAttr "Clav_R_JNT.s" "Shoulder_R_JNT.is";
connectAttr "Shoulder_R_JNT_orientConstraint1.crx" "Shoulder_R_JNT.rx";
connectAttr "Shoulder_R_JNT_orientConstraint1.cry" "Shoulder_R_JNT.ry";
connectAttr "Shoulder_R_JNT_orientConstraint1.crz" "Shoulder_R_JNT.rz";
connectAttr "Shoulder_R_JNT.s" "Elbow_R_JNT.is";
connectAttr "Elbow_R_JNT_orientConstraint1.crx" "Elbow_R_JNT.rx";
connectAttr "Elbow_R_JNT_orientConstraint1.cry" "Elbow_R_JNT.ry";
connectAttr "Elbow_R_JNT_orientConstraint1.crz" "Elbow_R_JNT.rz";
connectAttr "Elbow_R_JNT.s" "|root_JNT|Cog_JNT|Spine1_JNT|Neck1_JNT|Clav_R_JNT|Shoulder_R_JNT|Elbow_R_JNT|Wrist_JNT.is"
		;
connectAttr "Elbow_R_JNT.ro" "Elbow_R_JNT_orientConstraint1.cro";
connectAttr "Elbow_R_JNT.pim" "Elbow_R_JNT_orientConstraint1.cpim";
connectAttr "Elbow_R_JNT.jo" "Elbow_R_JNT_orientConstraint1.cjo";
connectAttr "Elbow_R_JNT.is" "Elbow_R_JNT_orientConstraint1.is";
connectAttr "Elbow_L_Ctrl.r" "Elbow_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Elbow_L_Ctrl.ro" "Elbow_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Elbow_L_Ctrl.pm" "Elbow_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Elbow_R_JNT_orientConstraint1.w0" "Elbow_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_R_JNT.ro" "Shoulder_R_JNT_orientConstraint1.cro";
connectAttr "Shoulder_R_JNT.pim" "Shoulder_R_JNT_orientConstraint1.cpim";
connectAttr "Shoulder_R_JNT.jo" "Shoulder_R_JNT_orientConstraint1.cjo";
connectAttr "Shoulder_R_JNT.is" "Shoulder_R_JNT_orientConstraint1.is";
connectAttr "Shoulder_L_Ctrl.r" "Shoulder_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Shoulder_L_Ctrl.ro" "Shoulder_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Shoulder_L_Ctrl.pm" "Shoulder_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Shoulder_R_JNT_orientConstraint1.w0" "Shoulder_R_JNT_orientConstraint1.tg[0].tw"
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
connectAttr "Cog_JNT.s" "Hip_L_JNT.is";
connectAttr "Hip_L_JNT.s" "Knee_L_JNT.is";
connectAttr "Knee_L_JNT.s" "Ankle_L_JNT.is";
connectAttr "Ankle_L_JNT_orientConstraint1.crx" "Ankle_L_JNT.rx";
connectAttr "Ankle_L_JNT_orientConstraint1.cry" "Ankle_L_JNT.ry";
connectAttr "Ankle_L_JNT_orientConstraint1.crz" "Ankle_L_JNT.rz";
connectAttr "Ankle_L_JNT.ro" "Ankle_L_JNT_orientConstraint1.cro";
connectAttr "Ankle_L_JNT.pim" "Ankle_L_JNT_orientConstraint1.cpim";
connectAttr "Ankle_L_JNT.jo" "Ankle_L_JNT_orientConstraint1.cjo";
connectAttr "Ankle_L_JNT.is" "Ankle_L_JNT_orientConstraint1.is";
connectAttr "Foot_R_Ctrl.r" "Ankle_L_JNT_orientConstraint1.tg[0].tr";
connectAttr "Foot_R_Ctrl.ro" "Ankle_L_JNT_orientConstraint1.tg[0].tro";
connectAttr "Foot_R_Ctrl.pm" "Ankle_L_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ankle_L_JNT_orientConstraint1.w0" "Ankle_L_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Ankle_L_JNT.tx" "effector1.tx";
connectAttr "Ankle_L_JNT.ty" "effector1.ty";
connectAttr "Ankle_L_JNT.tz" "effector1.tz";
connectAttr "Cog_JNT.s" "Hip_R_JNT.is";
connectAttr "Hip_R_JNT.s" "Knee_R_JNT.is";
connectAttr "Knee_R_JNT.s" "Ankle_R_JNT.is";
connectAttr "Ankle_R_JNT_orientConstraint1.crx" "Ankle_R_JNT.rx";
connectAttr "Ankle_R_JNT_orientConstraint1.cry" "Ankle_R_JNT.ry";
connectAttr "Ankle_R_JNT_orientConstraint1.crz" "Ankle_R_JNT.rz";
connectAttr "Ankle_R_JNT.ro" "Ankle_R_JNT_orientConstraint1.cro";
connectAttr "Ankle_R_JNT.pim" "Ankle_R_JNT_orientConstraint1.cpim";
connectAttr "Ankle_R_JNT.jo" "Ankle_R_JNT_orientConstraint1.cjo";
connectAttr "Ankle_R_JNT.is" "Ankle_R_JNT_orientConstraint1.is";
connectAttr "Foot_L_Ctrl.r" "Ankle_R_JNT_orientConstraint1.tg[0].tr";
connectAttr "Foot_L_Ctrl.ro" "Ankle_R_JNT_orientConstraint1.tg[0].tro";
connectAttr "Foot_L_Ctrl.pm" "Ankle_R_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Ankle_R_JNT_orientConstraint1.w0" "Ankle_R_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Ankle_R_JNT.tx" "effector2.tx";
connectAttr "Ankle_R_JNT.ty" "effector2.ty";
connectAttr "Ankle_R_JNT.tz" "effector2.tz";
connectAttr "Cog_JNT.ro" "Cog_JNT_orientConstraint1.cro";
connectAttr "Cog_JNT.pim" "Cog_JNT_orientConstraint1.cpim";
connectAttr "Cog_JNT.jo" "Cog_JNT_orientConstraint1.cjo";
connectAttr "Cog_JNT.is" "Cog_JNT_orientConstraint1.is";
connectAttr "Hip_Ctrl.r" "Cog_JNT_orientConstraint1.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "Cog_JNT_orientConstraint1.tg[0].tro";
connectAttr "Hip_Ctrl.pm" "Cog_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Cog_JNT_orientConstraint1.w0" "Cog_JNT_orientConstraint1.tg[0].tw";
connectAttr "Cog_JNT.pim" "Cog_JNT_pointConstraint1.cpim";
connectAttr "Cog_JNT.rp" "Cog_JNT_pointConstraint1.crp";
connectAttr "Cog_JNT.rpt" "Cog_JNT_pointConstraint1.crt";
connectAttr "Hip_Ctrl.t" "Cog_JNT_pointConstraint1.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "Cog_JNT_pointConstraint1.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "Cog_JNT_pointConstraint1.tg[0].trt";
connectAttr "Hip_Ctrl.pm" "Cog_JNT_pointConstraint1.tg[0].tpm";
connectAttr "Cog_JNT_pointConstraint1.w0" "Cog_JNT_pointConstraint1.tg[0].tw";
connectAttr "root_JNT.ro" "root_JNT_orientConstraint1.cro";
connectAttr "root_JNT.pim" "root_JNT_orientConstraint1.cpim";
connectAttr "root_JNT.jo" "root_JNT_orientConstraint1.cjo";
connectAttr "root_JNT.is" "root_JNT_orientConstraint1.is";
connectAttr "root_Ctrl.r" "root_JNT_orientConstraint1.tg[0].tr";
connectAttr "root_Ctrl.ro" "root_JNT_orientConstraint1.tg[0].tro";
connectAttr "root_Ctrl.pm" "root_JNT_orientConstraint1.tg[0].tpm";
connectAttr "root_JNT_orientConstraint1.w0" "root_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "root_JNT.pim" "root_JNT_pointConstraint1.cpim";
connectAttr "root_JNT.rp" "root_JNT_pointConstraint1.crp";
connectAttr "root_JNT.rpt" "root_JNT_pointConstraint1.crt";
connectAttr "root_Ctrl.t" "root_JNT_pointConstraint1.tg[0].tt";
connectAttr "root_Ctrl.rp" "root_JNT_pointConstraint1.tg[0].trp";
connectAttr "root_Ctrl.rpt" "root_JNT_pointConstraint1.tg[0].trt";
connectAttr "root_Ctrl.pm" "root_JNT_pointConstraint1.tg[0].tpm";
connectAttr "root_JNT_pointConstraint1.w0" "root_JNT_pointConstraint1.tg[0].tw";
connectAttr "Hip_L_JNT.msg" "Leg_R_IK.hsj";
connectAttr "effector1.hp" "Leg_R_IK.hee";
connectAttr "ikRPsolver.msg" "Leg_R_IK.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "Leg_R_IK.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "Leg_R_IK.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "Leg_R_IK.pvz";
connectAttr "Leg_R_IK.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "Hip_L_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "Hip_L_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "Knee_R_Ctrl.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "Knee_R_Ctrl.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "Knee_R_Ctrl.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "Knee_R_Ctrl.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Hip_R_JNT.msg" "Leg_L_IK.hsj";
connectAttr "effector2.hp" "Leg_L_IK.hee";
connectAttr "ikRPsolver.msg" "Leg_L_IK.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "Leg_L_IK.pvx";
connectAttr "ikHandle2_poleVectorConstraint1.cty" "Leg_L_IK.pvy";
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "Leg_L_IK.pvz";
connectAttr "Leg_L_IK.pim" "ikHandle2_poleVectorConstraint1.cpim";
connectAttr "Hip_R_JNT.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "Hip_R_JNT.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "Knee_L_Ctrl.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "Knee_L_Ctrl.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "Knee_L_Ctrl.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "Knee_L_Ctrl.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HumanBody:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HumanBody:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HumanBody1:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HumanBody1:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HumanBody2:humanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HumanBody2:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HumanBody:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HumanBody:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HumanBody1:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HumanBody1:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HumanBody2:humanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HumanBody2:blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HumanBody:humanBodySG.msg" "HumanBody:materialInfo1.sg";
connectAttr "HumanBody:place2dTexture1.o" "HumanBody:ReflectionMap.uv";
connectAttr "HumanBody:place2dTexture1.ofu" "HumanBody:ReflectionMap.ofu";
connectAttr "HumanBody:place2dTexture1.ofv" "HumanBody:ReflectionMap.ofv";
connectAttr "HumanBody:place2dTexture1.rf" "HumanBody:ReflectionMap.rf";
connectAttr "HumanBody:place2dTexture1.reu" "HumanBody:ReflectionMap.reu";
connectAttr "HumanBody:place2dTexture1.rev" "HumanBody:ReflectionMap.rev";
connectAttr "HumanBody:place2dTexture1.vt1" "HumanBody:ReflectionMap.vt1";
connectAttr "HumanBody:place2dTexture1.vt2" "HumanBody:ReflectionMap.vt2";
connectAttr "HumanBody:place2dTexture1.vt3" "HumanBody:ReflectionMap.vt3";
connectAttr "HumanBody:place2dTexture1.vc1" "HumanBody:ReflectionMap.vc1";
connectAttr "HumanBody:place2dTexture1.ofs" "HumanBody:ReflectionMap.fs";
connectAttr ":defaultColorMgtGlobals.cme" "HumanBody:ReflectionMap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "HumanBody:ReflectionMap.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "HumanBody:ReflectionMap.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "HumanBody:ReflectionMap.ws";
connectAttr "HumanBody:blinn1.oc" "HumanBody:blinn1SG.ss";
connectAttr "HumanBody:blinn1SG.msg" "HumanBody:materialInfo2.sg";
connectAttr "HumanBody:blinn1.msg" "HumanBody:materialInfo2.m";
connectAttr "HumanBody1:humanBodySG.msg" "HumanBody1:materialInfo1.sg";
connectAttr "HumanBody1:place2dTexture1.o" "HumanBody1:ReflectionMap.uv";
connectAttr "HumanBody1:place2dTexture1.ofu" "HumanBody1:ReflectionMap.ofu";
connectAttr "HumanBody1:place2dTexture1.ofv" "HumanBody1:ReflectionMap.ofv";
connectAttr "HumanBody1:place2dTexture1.rf" "HumanBody1:ReflectionMap.rf";
connectAttr "HumanBody1:place2dTexture1.reu" "HumanBody1:ReflectionMap.reu";
connectAttr "HumanBody1:place2dTexture1.rev" "HumanBody1:ReflectionMap.rev";
connectAttr "HumanBody1:place2dTexture1.vt1" "HumanBody1:ReflectionMap.vt1";
connectAttr "HumanBody1:place2dTexture1.vt2" "HumanBody1:ReflectionMap.vt2";
connectAttr "HumanBody1:place2dTexture1.vt3" "HumanBody1:ReflectionMap.vt3";
connectAttr "HumanBody1:place2dTexture1.vc1" "HumanBody1:ReflectionMap.vc1";
connectAttr "HumanBody1:place2dTexture1.ofs" "HumanBody1:ReflectionMap.fs";
connectAttr ":defaultColorMgtGlobals.cme" "HumanBody1:ReflectionMap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "HumanBody1:ReflectionMap.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "HumanBody1:ReflectionMap.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "HumanBody1:ReflectionMap.ws";
connectAttr "HumanBody1:blinn1.oc" "HumanBody1:blinn1SG.ss";
connectAttr "HumanBody1:blinn1SG.msg" "HumanBody1:materialInfo2.sg";
connectAttr "HumanBody1:blinn1.msg" "HumanBody1:materialInfo2.m";
connectAttr "HumanBody2:humanBodySG.msg" "HumanBody2:materialInfo1.sg";
connectAttr "HumanBody2:place2dTexture1.o" "HumanBody2:ReflectionMap.uv";
connectAttr "HumanBody2:place2dTexture1.ofu" "HumanBody2:ReflectionMap.ofu";
connectAttr "HumanBody2:place2dTexture1.ofv" "HumanBody2:ReflectionMap.ofv";
connectAttr "HumanBody2:place2dTexture1.rf" "HumanBody2:ReflectionMap.rf";
connectAttr "HumanBody2:place2dTexture1.reu" "HumanBody2:ReflectionMap.reu";
connectAttr "HumanBody2:place2dTexture1.rev" "HumanBody2:ReflectionMap.rev";
connectAttr "HumanBody2:place2dTexture1.vt1" "HumanBody2:ReflectionMap.vt1";
connectAttr "HumanBody2:place2dTexture1.vt2" "HumanBody2:ReflectionMap.vt2";
connectAttr "HumanBody2:place2dTexture1.vt3" "HumanBody2:ReflectionMap.vt3";
connectAttr "HumanBody2:place2dTexture1.vc1" "HumanBody2:ReflectionMap.vc1";
connectAttr "HumanBody2:place2dTexture1.ofs" "HumanBody2:ReflectionMap.fs";
connectAttr ":defaultColorMgtGlobals.cme" "HumanBody2:ReflectionMap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "HumanBody2:ReflectionMap.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "HumanBody2:ReflectionMap.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "HumanBody2:ReflectionMap.ws";
connectAttr "HumanBody2:blinn1.oc" "HumanBody2:blinn1SG.ss";
connectAttr "HumanBody2:blinn1SG.msg" "HumanBody2:materialInfo2.sg";
connectAttr "HumanBody2:blinn1.msg" "HumanBody2:materialInfo2.m";
connectAttr "ikHandle2_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Elbow_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Shoulder_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "effector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "Elbow_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Knee_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Cog_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Elbow_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Spine1_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Neck2_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "Spine1_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Spine1_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "Knee_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "Hip_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "Neck2_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Shoulder_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Shoulder_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Elbow_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "Shoulder_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Shoulder_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Elbow_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Elbow_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Shoulder_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "root_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Leg_L_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "Cog_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Hip_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "Neck2_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Neck2_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "root_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "Ankle_L_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Foot_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "Headt_end_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "Neck1_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "Clav_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "root_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "Cog_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "Elbow_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "|root_JNT|Cog_JNT|Spine1_JNT|Neck1_JNT|Clav_L_JNT|Shoulder_L_JNT|Elbow_L_JNT|Wrist_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Shoulder_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "Shoulder_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "Elbow_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "|root_JNT|Cog_JNT|Spine1_JNT|Neck1_JNT|Clav_R_JNT|Shoulder_R_JNT|Elbow_R_JNT|Wrist_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Hip_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "Clav_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "Knee_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "Spine1_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "Ankle_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "Hip_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "Knee_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "Ankle_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "root_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "root_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "Foot_Ctrl_group.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Leg_R_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "effector1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "ikHandle1_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Foot_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Knee_R_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "Knee_R_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Foot_L_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "Ankle_R_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Foot_L_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "HumanBody:humanBodySG.pa" ":renderPartition.st" -na;
connectAttr "HumanBody:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "HumanBody1:humanBodySG.pa" ":renderPartition.st" -na;
connectAttr "HumanBody1:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "HumanBody2:humanBodySG.pa" ":renderPartition.st" -na;
connectAttr "HumanBody2:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "HumanBody:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "HumanBody1:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "HumanBody2:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "HumanBody:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HumanBody1:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HumanBody2:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "HumanBody:ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "HumanBody1:ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "HumanBody2:ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Basic_testKnight.RIG.ma
