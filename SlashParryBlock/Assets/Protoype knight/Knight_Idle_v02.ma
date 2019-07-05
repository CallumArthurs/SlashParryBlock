//Maya ASCII 2018ff09 scene
//Name: Knight_Idle_v02.ma
//Last modified: Thu, Jul 04, 2019 04:34:06 PM
//Codeset: 1252
file -rdi 1 -ns "Basic_testKnight_MESH" -rfn "Basic_testKnight_MESHRN" -op "v=0;"
		 -typ "mayaAscii" "D:/Shaziah's_Stuff/MajorProject/Prototype/Maya/Prototype_Knight//scenes/Basic_testKnight.MESH.ma";
file -rdi 1 -ns "Basic_testKnight_RIG" -rfn "Basic_testKnight_RIGRN" -op "v=0;"
		 -typ "mayaAscii" "D:/Shaziah's_Stuff/MajorProject/Prototype/Maya/Prototype_Knight//scenes/Basic_testKnight.RIG.ma";
file -r -ns "Basic_testKnight_MESH" -dr 1 -rfn "Basic_testKnight_MESHRN" -op "v=0;"
		 -typ "mayaAscii" "D:/Shaziah's_Stuff/MajorProject/Prototype/Maya/Prototype_Knight//scenes/Basic_testKnight.MESH.ma";
file -r -ns "Basic_testKnight_RIG" -dr 1 -rfn "Basic_testKnight_RIGRN" -op "v=0;"
		 -typ "mayaAscii" "D:/Shaziah's_Stuff/MajorProject/Prototype/Maya/Prototype_Knight//scenes/Basic_testKnight.RIG.ma";
requires maya "2018ff09";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "8BE91D32-4C70-170D-3EAA-43AB6E41B359";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 253.78512714919208 94.702257333862093 -433.77881123789376 ;
	setAttr ".r" -type "double3" -3.9052663843862359 1227.4000000003541 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3CDF4D47-4CE5-08DA-2605-2883B1073362";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 501.16819166989126;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 7.471893310546875 71.924085567710378 2.1237237518644889 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1A3FB466-49FE-01DD-3069-9593921764B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "297B879B-4E01-79DF-DC87-95916F5B2843";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "6405C008-4959-9D9B-07DD-9BA97D16CEEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "86E0C0A6-42E4-B0BA-5282-C2A9719ACCDE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "5E5F17E7-4EE3-96CC-0E71-51AB4372B2EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CC0615BB-44BD-5AD7-381E-5C8C84BD6356";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "72ED93A4-4192-42A0-8F7B-598A78E5E1D2";
createNode transform -n "polySurface2" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "F5FFEAD5-4DCF-9EDC-C174-3BBED325E4EE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "60567B06-44C5-46D9-56D9-3DBDA299813A";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape2Orig" -p "polySurface2";
	rename -uid "1257DE8A-4B69-79E0-6A78-34B7C3FF9CC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.4808417 0.24684821
		 0.625 0.22531596 0.625 1.4901161e-08 0.5 1.4901161e-08 0.5 1 0.625 1 0.625 0.75 0.5
		 0.75 0.875 0.22531596 0.875 1.4901161e-08 0.125 1.4901161e-08 0.125 0.22531596 0.375
		 0.22531596 0.375 1.4901161e-08 0.625 0.52468407 0.48054567 0.50278407 0.375 0.52468407
		 0.375 0.75 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  89.28141785 103.77021027 -5.73674202 89.28142548 103.77021027 5.73674202
		 84.39854431 103.77021027 -5.73674202 84.39855194 103.77021027 5.73674202 90.24559021 179.82771301 -13.52746391
		 90.24559021 197.18562317 -0.00092369318 83.43438721 179.82771301 -13.52746391 83.43438721 197.18562317 -0.00092369318
		 90.24558258 179.82771301 13.52746391 83.43437958 179.82771301 13.52746391 89.28142548 103.77021027 1.6095517e-15
		 84.39855194 103.77021027 -1.0025974e-15;
	setAttr -s 20 ".ed[0:19]"  5 10 1 10 1 0 1 8 0 8 5 0 10 11 1 11 3 0
		 3 1 0 9 3 0 9 8 0 2 0 0 0 4 0 4 6 0 6 2 0 11 7 1 7 9 0 5 4 0 7 5 0 7 6 0 0 10 0 2 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 1 -7 -6 -5
		mu 0 4 4 5 6 7
		f 4 2 -9 7 6
		mu 0 4 2 1 8 9
		f 4 -13 -12 -11 -10
		mu 0 4 10 11 12 13
		f 4 5 -8 -15 -14
		mu 0 4 7 6 14 15
		f 4 11 -18 16 15
		mu 0 4 12 16 15 0
		f 4 -17 14 8 3
		mu 0 4 0 15 14 1
		f 4 10 -16 0 -19
		mu 0 4 13 12 0 3
		f 4 9 18 4 -20
		mu 0 4 17 18 4 7
		f 4 12 19 13 17
		mu 0 4 16 17 7 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "873A4CD4-4A93-9A04-FD0C-B9A1508A0FF7";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "35707AFF-4BEF-9812-F3B3-3A9F7C7387C2";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape4Orig" -p "polySurface4";
	rename -uid "1A3975D8-4899-2AD3-15BE-C1AC16C154CE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.51788497 0.25021124
		 0.625 0.22531596 0.625 1.4901161e-08 0.5 1.4901161e-08 0.5 1 0.625 1 0.625 0.75 0.5
		 0.75 0.875 0.22531596 0.875 1.4901161e-08 0.125 1.4901161e-08 0.125 0.22531596 0.375
		 0.22531596 0.375 1.4901161e-08 0.625 0.52468407 0.51784241 0.49997771 0.375 0.52468407
		 0.375 0.75 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -84.65102386 72.30290985 -22.13337517 -84.65102386 72.30290985 22.13337517
		 -89.83306885 72.30290985 -22.13337517 -89.83306885 72.30290985 22.13337517 -84.056015015 139.55621338 -38.0090026855
		 -88.055938721 155.28918457 0.0024335682 -90.4280777 139.55621338 -38.0090026855 -94.42800903 155.28918457 0.0024334788
		 -84.056015015 139.55621338 38.0090026855 -90.42808533 139.55621338 38.0090026855
		 -88.65094757 53.07882309 5.3407164e-15 -93.83299255 53.07882309 1.9631956e-15;
	setAttr -s 20 ".ed[0:19]"  5 10 1 10 1 0 1 8 0 8 5 0 10 11 1 11 3 0
		 3 1 0 9 3 0 9 8 0 2 0 0 0 4 0 4 6 0 6 2 0 11 7 1 7 9 0 5 4 0 7 5 0 7 6 0 0 10 0 2 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 1 -7 -6 -5
		mu 0 4 4 5 6 7
		f 4 2 -9 7 6
		mu 0 4 2 1 8 9
		f 4 -13 -12 -11 -10
		mu 0 4 10 11 12 13
		f 4 5 -8 -15 -14
		mu 0 4 7 6 14 15
		f 4 11 -18 16 15
		mu 0 4 12 16 15 0
		f 4 -17 14 8 3
		mu 0 4 0 15 14 1
		f 4 10 -16 0 -19
		mu 0 4 13 12 0 3
		f 4 9 18 4 -20
		mu 0 4 17 18 4 7
		f 4 12 19 13 17
		mu 0 4 16 17 7 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Ankle_LShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "47434EEC-4B1A-11B0-A2BC-D4969C6F30F1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Ankle_RShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "219D4C93-4460-6054-5EEB-FAA13646B29C";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Thigh_LShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "A5A177C5-4D8D-9900-5949-228E4A4385F4";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Thigh_RShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "FFA11FB8-40DD-6A8D-F685-01B338C76F56";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Shoulder_LShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "7F6B896C-4863-6B21-7AA9-3BA5CF92402F";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Shoulder_RShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "A368D497-4E31-9E57-8401-0B9F237F1226";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Forearm_LShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "CE692812-4632-9C12-6049-73AEEB907631";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Forearm_RShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "BE83721F-4FAA-E244-3426-58AB894C70A2";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "TorsoShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "83F0B4C9-4935-77B0-88D2-948C7E8EE575";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "HeadShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "08AE74DA-4070-9FF8-7738-D184CB92E608";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "WaistShapeDeformed" -p "Basic_testKnight_MESHRNfosterParent1";
	rename -uid "69E02802-4E6A-79DE-C71E-C280A9495C30";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9DAD5670-44F0-5014-8DA1-949F97FBE4C2";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "53234952-4162-5132-7F00-9D8FBC814DD2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "02D9ECA4-463D-690D-69D6-3B992DBE2969";
createNode displayLayerManager -n "layerManager";
	rename -uid "88362CD7-4745-5C98-3B1F-7FB38B355F3C";
createNode displayLayer -n "defaultLayer";
	rename -uid "85D8D166-4DCE-3748-A966-13852FC9AB8C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "478A6576-40F3-5CE4-F71E-CBAA4DA474BC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C34CE4EC-450F-FB16-FAD2-1F99088ADAF1";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0D957D8F-4E43-91B5-9A27-46B90D640594";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 599\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 598\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1204\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1204\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1204\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1204\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EE349D3B-427E-EB11-4F68-A189AB2E8367";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 119 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "Basic_testKnight_MESHRN";
	rename -uid "E658BF98-43B7-ACC7-2113-30B48B395098";
	setAttr -s 11 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Basic_testKnight_MESHRN"
		"Basic_testKnight_MESHRN" 0
		"Basic_testKnight_MESHRN" 152
		0 "|Basic_testKnight_MESHRNfosterParent1|WaistShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|HeadShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|TorsoShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Forearm_RShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Forearm_LShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Shoulder_RShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Shoulder_LShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Thigh_RShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Thigh_LShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Ankle_RShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|Ankle_LShapeDeformed" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|polySurface4" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sheild" 
		"-s -r "
		0 "|Basic_testKnight_MESHRNfosterParent1|polySurface2" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sword" 
		"-s -r "
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist|Basic_testKnight_MESH:WaistShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist|Basic_testKnight_MESH:WaistShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head|Basic_testKnight_MESH:HeadShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head|Basic_testKnight_MESH:HeadShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso|Basic_testKnight_MESH:TorsoShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso|Basic_testKnight_MESH:TorsoShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R|Basic_testKnight_MESH:Forearm_RShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R|Basic_testKnight_MESH:Forearm_RShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L|Basic_testKnight_MESH:Forearm_LShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L|Basic_testKnight_MESH:Forearm_LShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R|Basic_testKnight_MESH:Shoulder_RShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R|Basic_testKnight_MESH:Shoulder_RShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L|Basic_testKnight_MESH:Shoulder_LShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L|Basic_testKnight_MESH:Shoulder_LShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R|Basic_testKnight_MESH:Thigh_RShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R|Basic_testKnight_MESH:Thigh_RShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L|Basic_testKnight_MESH:Thigh_LShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L|Basic_testKnight_MESH:Thigh_LShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R|Basic_testKnight_MESH:Ankle_RShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R|Basic_testKnight_MESH:Ankle_RShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L|Basic_testKnight_MESH:Ankle_LShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L|Basic_testKnight_MESH:Ankle_LShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sheild|Basic_testKnight_MESH:sheildShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sheild|Basic_testKnight_MESH:sheildShape" 
		"vertexColorSource" " 2"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sword" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sword|Basic_testKnight_MESH:swordShape" 
		"intermediateObject" " 1"
		2 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sword|Basic_testKnight_MESH:swordShape" 
		"vertexColorSource" " 2"
		3 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sheild|Basic_testKnight_MESH:sheildShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:sword|Basic_testKnight_MESH:swordShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist|Basic_testKnight_MESH:WaistShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[1]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head|Basic_testKnight_MESH:HeadShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[2]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso|Basic_testKnight_MESH:TorsoShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[3]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R|Basic_testKnight_MESH:Forearm_RShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[4]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L|Basic_testKnight_MESH:Forearm_LShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[5]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R|Basic_testKnight_MESH:Shoulder_RShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[6]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L|Basic_testKnight_MESH:Shoulder_LShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[7]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R|Basic_testKnight_MESH:Thigh_RShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[8]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L|Basic_testKnight_MESH:Thigh_LShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[9]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R|Basic_testKnight_MESH:Ankle_RShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[10]" ""
		5 3 "Basic_testKnight_MESHRN" "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L|Basic_testKnight_MESH:Ankle_LShape.worldMesh" 
		"Basic_testKnight_MESHRN.placeHolderList[11]" ""
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Waist" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Head" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Torso" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_R" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Forearm_L" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"translateX"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"translateY"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"translateZ"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"rotateX"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"rotateY"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"rotateZ"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"scaleX"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"scaleY"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_R" 
		"scaleZ"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"translateX"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"translateY"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"translateZ"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"rotateX"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"rotateY"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"rotateZ"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"scaleX"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"scaleY"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Shoulder_L" 
		"scaleZ"
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_R" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Thigh_L" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_R" "scaleZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "translateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "translateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "translateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "rotateX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "rotateY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "rotateZ"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "scaleX"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "scaleY"
		
		8 "|Basic_testKnight_MESH:basic_knight|Basic_testKnight_MESH:Ankle_L" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Basic_testKnight_RIGRN";
	rename -uid "1102431C-42C0-08EB-A6D3-53A66AE8BDB8";
	setAttr -s 219 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Basic_testKnight_RIGRN"
		"Basic_testKnight_RIGRN" 0
		"Basic_testKnight_RIGRN" 390
		1 |Basic_testKnight_RIG:root_JNT "lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT "lockInfluenceWeights" 
		"liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT|Basic_testKnight_RIG:Headt_end_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT|Basic_testKnight_RIG:Ankle_L_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT|Basic_testKnight_RIG:Ankle_R_JNT 
		"lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		2 "|Basic_testKnight_RIG:root_JNT" "bindPose" " -type \"matrix\" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0 0 0 1 0 0 0 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT" "lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT" "useObjectColor" 
		" 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT" "objectColor" 
		" 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT" "bindPose" 
		" -type \"matrix\" 0 1 0 0 -1 0 0 0 0 0 1 0 0.030166089534759521 69.9808807373046875 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT" "lockInfluenceWeights" 
		" 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT" 
		"objectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT" 
		"bindPose" " -type \"matrix\" 0 1 0 0 -1 0 0 0 0 0 1 0 0.030166089534754848 92.71330201357275769 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT" 
		"objectColor" " 2"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT" 
		"bindPose" " -type \"matrix\" -0.04176045908590819 0.99912765153254279 0 0 0.99912765153254279 0.04176045908590819 0 0 0 0 -1 0 0.030166089534758175 112.71524466200189352 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"objectColor" " 3"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"rotate" " -type \"double3\" 13.77618547546564365 -9.62356284671970919 0.53303925649239348"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"rotateZ" " -av"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"bindPose" " -type \"matrix\" 0.0096529181872837266 0.99995340949989742 0 0 -0.99995340949989719 0.0096529181872837336 0 0 0 0 1 0 -0.15726533118759323 117.19958030650468572 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT|Basic_testKnight_RIG:Headt_end_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT|Basic_testKnight_RIG:Headt_end_JNT" 
		"objectColor" " 4"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT|Basic_testKnight_RIG:Headt_end_JNT" 
		"bindPose" " -type \"matrix\" 0.0096529181872837266 0.99995340949989742 0 0 -0.99995340949989719 0.0096529181872837336 0 0 0 0 1 0 0.1968268906145908 153.88027288037645235 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT|Basic_testKnight_RIG:Headt_end_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT" 
		"objectColor" " 3"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT" 
		"bindPose" " -type \"matrix\" 0.2020915287278702 -0.9793666392196706 0 0 0.9793666392196706 0.2020915287278702 -1.4901161639534817e-08 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0 18.02358247888099285 112.52781324127957419 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT" 
		"objectColor" " 4"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT" 
		"bindPose" " -type \"matrix\" 1 0 -1.4593700591395284e-08 0 0 1 -3.0113985548666527e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0 20.46019094827163798 100.71963373577112577 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT" 
		"objectColor" " 5"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT" 
		"bindPose" " -type \"matrix\" 0.99997485130835673 0.0070920202220418425 -1.461469047836692e-08 0 -0.0070920202220418425 0.99997485130835673 -2.9078240024243775e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0 51.19894394673806914 100.71963373577112577 -4.4859214457506201e-07 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"objectColor" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"bindPose" " -type \"matrix\" -0.0045661624430429898 0.99998957502593178 -2.9447299535693617e-09 0 0.99998957502593178 0.0045661624430431008 -1.4607298420873438e-08 0 -1.45937000248473e-08 -3.011398552279671e-09 -1 0 77.62677426859035279 100.90706515649348773 -8.3483640683310748e-07 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT" 
		"objectColor" " 3"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT" 
		"bindPose" " -type \"matrix\" -0.20209380168485547 -0.97936617019405103 0 0 -0.97936617019405103 0.20209380168485547 0 0 0 0 -1 0 -17.96330000004539329 112.52800081742255145 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"objectColor" " 4"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"rotate" " -type \"double3\" 20.21051123862096333 371.99936910192536743 -23.50419173648977633"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"rotateZ" " -av"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"bindPose" " -type \"matrix\" -1.00000000000000022 0 0 0 0 1.00000000000000022 0 0 0 0 -1 0 -20.39990000004535631 100.72000081742251609 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT" 
		"objectColor" " 5"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT" 
		"bindPose" " -type \"matrix\" -0.99997496688545695 0.0070757050835730572 0 0 0.0070757050835730572 0.99997496688545695 0 0 0 0 -1 0 -51.13860000004537198 100.72000081742248767 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"objectColor" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"bindPose" " -type \"matrix\" -0.99997496688545695 0.0070757050835730572 0 0 0.0070757050835730572 0.99997496688545695 0 0 0 0 -1 0 -77.56640000004537683 100.90700081742251371 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT" 
		"objectColor" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT" 
		"rotate" " -type \"double3\" 5.86673041460229783 -19.95089440530887259 -6.44978639986661939"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT" 
		"bindPose" " -type \"matrix\" 0 -1 0 0 -1 0 0 0 0 0 -1 0 15.187716543028845 69.78503824488210228 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT" 
		"objectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT" 
		"rotate" " -type \"double3\" 0 60.42874096345016 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT" 
		"bindPose" " -type \"matrix\" 0 -0.99999999999999978 2.1228491558194922e-08 0 -1 0 0 0 0 -2.1228491558194922e-08 -0.99999999999999978 0 15.18771654302885032 29.56557820181956231 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT|Basic_testKnight_RIG:Ankle_L_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT|Basic_testKnight_RIG:Ankle_L_JNT" 
		"objectColor" " 2"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT|Basic_testKnight_RIG:Ankle_L_JNT" 
		"bindPose" " -type \"matrix\" 0 -0.99999999999999978 2.1228491558194922e-08 0 -1 0 0 0 0 -2.1228491558194922e-08 -0.99999999999999978 0 15.18771654302887164 0.13224607939652344 6.2482524609494872e-07 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT|Basic_testKnight_RIG:Ankle_L_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT" 
		"objectColor" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT" 
		"rotate" " -type \"double3\" -28.09600382165288934 -48.33488700521476034 16.98567509748697901"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT" 
		"bindPose" " -type \"matrix\" 0 -1 0 0 -1 0 0 0 0 0 -1 0 -15.12740000004536611 69.78500081742252803 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT" 
		"objectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT" 
		"rotate" " -type \"double3\" 0 61.51519973472958469 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT" 
		"bindPose" " -type \"matrix\" 0 -0.99999999999999978 2.1229083299748682e-08 0 -1 0 0 0 0 -2.1229083299748682e-08 -0.99999999999999978 0 -15.12740000004535901 29.56560081742253487 0 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT|Basic_testKnight_RIG:Ankle_R_JNT" 
		"useObjectColor" " 1"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT|Basic_testKnight_RIG:Ankle_R_JNT" 
		"objectColor" " 2"
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT|Basic_testKnight_RIG:Ankle_R_JNT" 
		"bindPose" " -type \"matrix\" 0 -0.99999999999999978 2.1229083299748682e-08 0 -0.999999999999999 0 -4.47034838264723e-08 0 4.4703483826472485e-08 -2.1229083299748298e-08 -0.99999999999999878 0 -15.12740000004533947 0.1322458174225396 6.24843141481528e-07 1"
		
		2 "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT|Basic_testKnight_RIG:Ankle_R_JNT" 
		"lockInfluenceWeights" " 0"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl" 
		"translate" " -type \"double3\" 0 0 28.01722094633609927"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl" 
		"translateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl" 
		"translate" " -type \"double3\" 0 0 -10.9789416371993056"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl" 
		"translateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl" 
		"translateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "visibility" 
		" -av 1"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "translate" 
		" -type \"double3\" 0 -11.5720423036713953 7.87394266445736335"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "translateX" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "translateY" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "translateZ" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "rotate" 
		" -type \"double3\" -10.54969167581719702 -13.04875793793996053 0"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "rotateX" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "rotateY" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "rotateZ" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "scale" 
		" -type \"double3\" 1 1 1"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "scaleX" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "scaleY" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl" "scaleZ" 
		" -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl" 
		"rotate" " -type \"double3\" -5.58203353009973391 -0.11809636981877826 0.75389663607152857"
		
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl" 
		"rotateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"visibility" " -av 1"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"translateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"translateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"translateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"rotate" " -type \"double3\" 10.03412386414663615 13.48283368901142509 2.887380520168358"
		
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"rotateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"scaleX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"scaleY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl" 
		"scaleZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"visibility" " -av 1"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"translateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"translateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"translateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"rotate" " -type \"double3\" 16.36027670159679204 -47.51278865083857994 -23.1650631292485869"
		
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"rotateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"scaleX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"scaleY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl" 
		"scaleZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl" 
		"rotate" " -type \"double3\" -20.21051123862096333 11.99936910192536921 23.50419173648982607"
		
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl" 
		"rotateZ" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl" 
		"rotate" " -type \"double3\" -13.56211346644055382 -62.13195047047400976 -27.57470701239668998"
		
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl" 
		"rotateX" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl" 
		"rotateY" " -av"
		2 "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl" 
		"rotateZ" " -av"
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[1]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[2]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[3]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[4]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[5]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[6]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[7]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[8]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[9]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT.bindPose" 
		"Basic_testKnight_RIGRN.placeHolderList[10]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[11]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[12]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[13]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[14]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[15]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[16]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[17]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[18]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[19]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[20]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.bindPose" 
		"Basic_testKnight_RIGRN.placeHolderList[21]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[22]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[23]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[24]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[25]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[26]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[27]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[28]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[29]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[30]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[31]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.bindPose" 
		"Basic_testKnight_RIGRN.placeHolderList[32]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[33]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[34]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[35]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[36]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[37]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[38]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[39]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[40]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[41]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT.bindPose" 
		"Basic_testKnight_RIGRN.placeHolderList[42]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[43]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[44]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT.bindPose" 
		"Basic_testKnight_RIGRN.placeHolderList[45]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[46]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Neck2_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[47]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[48]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[49]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[50]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[51]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[52]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[53]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[54]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[55]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[56]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[57]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[58]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[59]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[60]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[61]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[62]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[63]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[64]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_L_JNT|Basic_testKnight_RIG:Shoulder_L_JNT|Basic_testKnight_RIG:Elbow_L_JNT|Basic_testKnight_RIG:Wrist_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[65]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[66]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[67]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[68]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[69]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[70]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[71]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[72]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[73]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[74]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[75]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[76]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[77]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[78]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[79]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[80]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[81]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[82]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Spine1_JNT|Basic_testKnight_RIG:Neck1_JNT|Basic_testKnight_RIG:Clav_R_JNT|Basic_testKnight_RIG:Shoulder_R_JNT|Basic_testKnight_RIG:Elbow_R_JNT|Basic_testKnight_RIG:Wrist_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[83]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[84]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[85]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[86]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[87]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[88]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[89]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[90]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_L_JNT|Basic_testKnight_RIG:Knee_L_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[91]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[92]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[93]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[94]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[95]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT.message" 
		"Basic_testKnight_RIGRN.placeHolderList[96]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT.lockInfluenceWeights" 
		"Basic_testKnight_RIGRN.placeHolderList[97]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT.worldMatrix" 
		"Basic_testKnight_RIGRN.placeHolderList[98]" ""
		5 3 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_JNT|Basic_testKnight_RIG:Cog_JNT|Basic_testKnight_RIG:Hip_R_JNT|Basic_testKnight_RIG:Knee_R_JNT.objectColorRGB" 
		"Basic_testKnight_RIGRN.placeHolderList[99]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[100]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[101]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[102]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[103]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[104]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[105]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[106]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[107]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[108]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[109]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[110]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[111]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[112]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[113]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[114]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[115]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[116]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[117]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[118]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[119]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[120]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[121]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[122]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[123]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[124]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[125]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[126]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[127]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[128]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_R_Ctrl|Basic_testKnight_RIG:Leg_R_IK|Basic_testKnight_RIG:Knee_R_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[129]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[130]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[131]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[132]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[133]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[134]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[135]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[136]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[137]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[138]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[139]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[140]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[141]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[142]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[143]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[144]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[145]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[146]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[147]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[148]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Foot_Ctrl_group|Basic_testKnight_RIG:Foot_L_Ctrl|Basic_testKnight_RIG:Leg_L_IK|Basic_testKnight_RIG:Knee_L_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[149]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[150]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[151]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[152]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[153]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[154]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[155]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[156]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[157]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[158]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[159]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[160]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[161]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[162]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[163]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[164]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[165]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[166]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[167]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[168]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[169]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[170]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[171]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[172]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[173]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[174]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[175]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[176]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[177]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[178]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Neck2_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[179]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[180]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[181]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[182]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[183]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[184]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[185]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[186]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[187]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[188]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[189]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[190]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[191]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[192]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[193]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[194]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[195]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[196]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[197]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[198]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_R_Ctrl|Basic_testKnight_RIG:Elbow_R_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[199]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[200]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[201]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[202]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[203]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[204]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[205]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[206]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[207]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[208]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[209]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.rotateX" 
		"Basic_testKnight_RIGRN.placeHolderList[210]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.rotateY" 
		"Basic_testKnight_RIGRN.placeHolderList[211]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.rotateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[212]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.visibility" 
		"Basic_testKnight_RIGRN.placeHolderList[213]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.translateX" 
		"Basic_testKnight_RIGRN.placeHolderList[214]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.translateY" 
		"Basic_testKnight_RIGRN.placeHolderList[215]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.translateZ" 
		"Basic_testKnight_RIGRN.placeHolderList[216]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.scaleX" 
		"Basic_testKnight_RIGRN.placeHolderList[217]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.scaleY" 
		"Basic_testKnight_RIGRN.placeHolderList[218]" ""
		5 4 "Basic_testKnight_RIGRN" "|Basic_testKnight_RIG:root_Ctrl|Basic_testKnight_RIG:Hip_Ctrl|Basic_testKnight_RIG:Spine1_Ctrl|Basic_testKnight_RIG:Shoulder_L_Ctrl|Basic_testKnight_RIG:Elbow_L_Ctrl.scaleZ" 
		"Basic_testKnight_RIGRN.placeHolderList[219]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode skinCluster -n "skinCluster1";
	rename -uid "1D599972-4E0E-86B3-1464-D992C77DAE41";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 0.0096529181872837353 -0.99995340949989764 -2.4481682226294728e-16 0
		 0.99995340949989742 0.0096529181872837284 -3.9320397189993178e-18 0 6.2950532794773976e-18 -2.4476746046704781e-16 1 0
		 -117.19260185007074 -1.2885759643998436 4.2233220618175007e-16 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
	rename -uid "D550A4EE-403F-E21C-3D27-77BE12C529D1";
createNode objectSet -n "skinCluster1Set";
	rename -uid "DD34B5A7-4593-32DB-C3D0-3CA83CBEDCCF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "96B8B119-49E7-A2F7-D8D3-28A1EE9C62D3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "12C46CA8-4B44-2000-6234-84BF3A571E32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "5264F32E-4498-DA7A-8D16-7398A5C36132";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "0BC35122-4AEC-C19C-D2C3-C5A2FF658D41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "24B830FF-4233-7392-CAE7-9EA5A9092F06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "12FD0C6E-42CD-6E9C-FC6C-A9BF8631B338";
	setAttr -s 5 ".wm";
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029911 3.9771563820067968e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971749868848942e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556817090182214e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4882509633522352 7.6327832942979512e-15
		 9.4909827659402983e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99966944321124773 0.025710004078452701 1.5742837100371249e-18 6.1212099191703563e-17 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "E518C835-4DFD-D582-6B86-F8BFDD8C29F9";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" -0.99999999999999978 -1.1102230246251561e-15 3.6728720786836467e-16 0
		 -1.1102230246251561e-15 0.99999999999999978 5.1141812550484167e-18 0 -3.6728720786836477e-16 5.1141812550479776e-18 -1 0
		 -20.399900000045239 -100.72000081742253 6.9239938734139762e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
	rename -uid "DBE4F132-4065-B580-EE26-8491FFA429C0";
createNode objectSet -n "skinCluster2Set";
	rename -uid "9BC6869E-4BF1-51F2-01D0-CE9BA3081FCC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "C859D22F-4081-03DF-7E03-4A8995B27C1C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "1A19CD6E-463F-FF4C-A747-1AA09D0068FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "C2F8B1BA-4542-B786-4271-D5BFFB35FAED";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "707AA85C-4A78-D7EF-B383-C696E4C2BFF7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "09078E0D-44C6-8760-3C41-F59E7574AF86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "5E323557-4277-0B52-F6E7-BA9301152627";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534754848 92.713302013572758 0 1;
	setAttr ".wm[3]" -type "matrix" -0.04176045908590819 0.99912765153254279 -3.8518598887744717e-34 0
		 0.99912765153254279 0.04176045908590819 1.2246467991473532e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 0.030166089534758175 112.71524466200189 0 1;
	setAttr ".wm[4]" -type "matrix" -0.20209380168485547 -0.97936617019405103 -2.9736418785592647e-17 0
		 -0.97936617019405103 0.20209380168485547 -1.1879959269469926e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 -17.963300000045393 112.52800081742255 -2.7610131682735413e-30 1;
	setAttr ".wm[5]" -type "matrix" -1.0000000000000002 -1.1102230246251565e-15 -3.6728720786836472e-16 0
		 -1.1102230246251565e-15 1.0000000000000002 5.1141812550480107e-18 0 3.6728720786836482e-16 5.1141812550483866e-18 -1 0
		 -20.399900000045356 100.72000081742252 -5.3528098207610551e-17 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029926 3.9771564167012663e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971388266424526e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556894744113038e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.56433490174910372 -17.985588905923308
		 -2.2025993884419098e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99248987190792692 0.12232683336123269 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 6.2831853071795862 0 0 12.056777494836687
		 7.6569305095582768e-15 -3.0499728658356542e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.6316273419965065 0.77527214630891272 1 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId5";
	rename -uid "DF6D185E-4DE3-A3FB-395C-5A97513F614D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "AD680B55-4E5E-6663-E037-028920671F78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster3";
	rename -uid "64864EDE-4BBC-D8E5-BAFD-3DA88B607930";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" -0.99997496688545651 0.0070757050835730537 4.653725315496611e-17 0
		 0.0070757050835730537 0.99997496688545651 1.2985151581888905e-16 0 -4.5617297151987974e-17 1.3017754910974409e-16 -1 0
		 -51.849984863415301 -100.35563783011807 -1.8277888387270325e-14 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak3";
	rename -uid "7BE6BCDA-4E64-990B-5A8E-67AB1808E5AB";
createNode objectSet -n "skinCluster3Set";
	rename -uid "1E03C2C3-4ABD-5307-EF5E-DE86607EA132";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "D4DE7055-464F-9013-7709-37ABED8C2B81";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "AE7D620B-4B4C-7D2B-559B-15810F41F2C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "F1DF0537-4A17-F931-74B3-949A5E8CECC0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId7";
	rename -uid "21F61076-49AF-4BE8-D233-84A022F0CC7A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "E9B23071-4428-8E4F-B810-FABE614BD610";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "93777595-4F31-4A94-A528-3688644FF440";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534754848 92.713302013572758 0 1;
	setAttr ".wm[3]" -type "matrix" -0.04176045908590819 0.99912765153254279 -3.8518598887744717e-34 0
		 0.99912765153254279 0.04176045908590819 1.2246467991473532e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 0.030166089534758175 112.71524466200189 0 1;
	setAttr ".wm[4]" -type "matrix" -0.20209380168485547 -0.97936617019405103 -2.9736418785592647e-17 0
		 -0.97936617019405103 0.20209380168485547 -1.1879959269469926e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 -17.963300000045393 112.52800081742255 -2.7610131682735413e-30 1;
	setAttr ".wm[5]" -type "matrix" -1.0000000000000002 -1.1102230246251565e-15 -3.6728720786836472e-16 0
		 -1.1102230246251565e-15 1.0000000000000002 5.1141812550480107e-18 0 3.6728720786836482e-16 5.1141812550483866e-18 -1 0
		 -20.399900000045356 100.72000081742252 -5.3528098207610551e-17 1;
	setAttr ".wm[6]" -type "matrix" -0.99997496688545695 0.0070757050835730572 -4.5617297151987974e-17 0
		 0.0070757050835730572 0.99997496688545695 1.3017754910974407e-16 0 4.6537253154966128e-17 1.298515158188891e-16 -1 0
		 -51.138600000045372 100.72000081742249 -7.5790935820409378e-15 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029911 3.9771563820067968e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971749868848942e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556817090182214e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.56433490174910372 -17.985588905923308
		 -2.2025993884419098e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99248987190792692 0.12232683336123269 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 6.2831853071795862 0 0 12.056777494836687
		 7.6569305095582768e-15 -3.0499728658356542e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.6316273419965065 0.77527214630891272 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.1415926535897931 -3.1415926535897936
		 3.1415926535897931 0 30.738700000000012 1.1384254650081969e-14 -3.764365812669981e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0035378746828619708 0.99999374170178101 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId8";
	rename -uid "516F0B89-4BB1-22F4-2F6E-BC9F1362496E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "853CA9AA-4C13-4A4F-6256-34A0B807473C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster4";
	rename -uid "F93F9C20-49FB-A651-6455-9BB1881B710E";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999999978 2.613638829008337e-16 1.4593700591395282e-08 0
		 -3.492587806430023e-16 1 3.0113985548666474e-09 0 -1.4593700591395279e-08 -3.0113985548666519e-09 0.99999999999999978 0
		 -20.460190948271599 -100.71963373577111 -6.0189686016640815e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
	rename -uid "B6287A16-415E-CFFA-8C6F-4593A1725711";
createNode objectSet -n "skinCluster4Set";
	rename -uid "06A73C98-4206-662A-0B8B-B6812F375977";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "03C7C854-45D2-D59D-4CEF-E48E79864B62";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "66DC2B74-4B63-5C6B-205F-67B8D48A2176";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "98109A6E-4EA4-4CA3-7283-3FB17F905BA2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "A9783263-4417-722E-07AB-B7908D8D881D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "1210934B-4AD9-E4B3-0563-2397A11D9E62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose4";
	rename -uid "B7A232D1-4AEF-BD31-D7B4-15AEDB927941";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534754848 92.713302013572758 0 1;
	setAttr ".wm[3]" -type "matrix" -0.04176045908590819 0.99912765153254279 -3.8518598887744717e-34 0
		 0.99912765153254279 0.04176045908590819 1.2246467991473532e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 0.030166089534758175 112.71524466200189 0 1;
	setAttr ".wm[4]" -type "matrix" 0.2020915287278702 -0.9793666392196706 1.9718826053915795e-17 0
		 0.9793666392196706 0.2020915287278702 -1.4901161639534817e-08 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 18.023582478880993 112.52781324127957 -1.1832913578315177e-30 1;
	setAttr ".wm[5]" -type "matrix" 1 -3.0531133177191805e-16 -1.4593700591395284e-08 0
		 3.0531133177191805e-16 1 -3.0113985548666527e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 20.460190948271638 100.71963373577113 -5.4043298807868552e-17 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029911 3.9771563820067968e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971749868848942e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556817090182214e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.93868124415270793 17.969892637958178
		 2.2006771500097083e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.080772132416083262 0.99673259333933628 7.4262368026069904e-09 6.0179930543231492e-10 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 4.4408920985006262e-16 0 12.056955008102836
		 -6.3583068012057356e-15 -2.9179239209869351e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.63162824163907105 0.77527141335401717 1 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId11";
	rename -uid "7452AA59-48A4-651D-49F3-9C9B927FD357";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "45E4FE1E-4409-2BE9-E60A-43A3013E43AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster5";
	rename -uid "E75118AC-416E-E632-8B7E-ADA58440C041";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 0.9999748513083565 -0.007092020222041885 1.4593700591395282e-08 0
		 0.0070920202220417982 0.99997485130835673 3.0113985548666474e-09 0 -1.4614690478366915e-08 -2.9078240024243767e-09 0.99999999999999978 0
		 -51.911962039495016 -100.35399682294241 -6.018968734578627e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak5";
	rename -uid "A41A8C0E-4335-BF1F-6C6F-38BD31677466";
createNode objectSet -n "skinCluster5Set";
	rename -uid "4C1223AE-4EBF-C487-031A-A0974A0BC9CA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "85C8829C-4AF1-C0CC-1CF8-E49ED0798F7D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "0B0E2AEA-4B0E-B058-DCCD-89A6A2E3C843";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "AD7EF5C6-4EFD-7636-16D9-B29B34433D82";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId13";
	rename -uid "951AFEC4-4711-4850-F3A1-D5B664B7684B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "3665817C-458B-64F0-6D29-E8A282B59744";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	rename -uid "E1F3BF80-46AB-0F39-F51E-AE9E271CBD8C";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534754848 92.713302013572758 0 1;
	setAttr ".wm[3]" -type "matrix" -0.04176045908590819 0.99912765153254279 -3.8518598887744717e-34 0
		 0.99912765153254279 0.04176045908590819 1.2246467991473532e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 0.030166089534758175 112.71524466200189 0 1;
	setAttr ".wm[4]" -type "matrix" 0.2020915287278702 -0.9793666392196706 1.9718826053915795e-17 0
		 0.9793666392196706 0.2020915287278702 -1.4901161639534817e-08 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 18.023582478880993 112.52781324127957 -1.1832913578315177e-30 1;
	setAttr ".wm[5]" -type "matrix" 1 -3.0531133177191805e-16 -1.4593700591395284e-08 0
		 3.0531133177191805e-16 1 -3.0113985548666527e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 20.460190948271638 100.71963373577113 -5.4043298807868552e-17 1;
	setAttr ".wm[6]" -type "matrix" 0.99997485130835673 0.0070920202220418425 -1.461469047836692e-08 0
		 -0.0070920202220418425 0.99997485130835673 -2.9078240024243775e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 51.198943946738069 100.71963373577113 -4.4859214457506201e-07 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029911 3.9771563820067968e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971749868848942e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556817090182214e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.93868124415270793 17.969892637958178
		 2.2006771500097083e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.080772132416083262 0.99673259333933628 7.4262368026069904e-09 6.0179930543231492e-10 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 4.4408920985006262e-16 0 12.056955008102836
		 -6.3583068012057356e-15 -2.9179239209869351e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.63162824163907105 0.77527141335401717 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 30.738752998466435 4.8519901135799227e-15
		 1.3291454442972519e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0035460324056100405 0.99999371280732474 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId14";
	rename -uid "E9C182C9-4E9B-60ED-4453-A2BF4B7973AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "CB7EFBE8-4A8C-BFF5-B247-D1998C2F7989";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster6";
	rename -uid "AEF25109-4366-16B7-C371-DCB0C2BDF42D";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" -8.1112959231244286e-15 -1 0 0 1 -8.1112959231244286e-15 0 0
		 0 0 1 0 -92.713302013572758 0.030166089535506872 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak6";
	rename -uid "3B09A879-4739-476C-6C95-168421ABB4E1";
createNode objectSet -n "skinCluster6Set";
	rename -uid "99ABA43D-4C15-A0E9-443B-5DA6B9950746";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "90F52377-4CD8-DF78-413E-A4AF6E447EB1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "CD6578C7-48EC-963D-B1A2-EE8D503CB0C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "FD0EFFC4-4EC0-4F6A-225E-A8A0D00C8D2A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	rename -uid "FC4E7979-4359-ADCA-4B65-4BBDCDFB5F07";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "CB991905-4E3E-C2E5-0EA2-96A437192D8B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "0801D2C1-4D89-213B-43FB-7CA032D1A38F";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" -8.1112959231244286e-15 -1 0 0 1 -8.1112959231244286e-15 0 0
		 0 0 1 0 -69.980880737304688 0.030166089535327158 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak7";
	rename -uid "C6FCD808-4FD9-5047-1879-03BA64214B27";
createNode objectSet -n "skinCluster7Set";
	rename -uid "5FE541E3-47B2-8239-D3BD-8091040CE3F5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "E684B8E4-4AC5-F63A-A143-208570FCCC85";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "083F7058-4056-0363-2C18-7C8982C11B24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "A393911B-4794-5184-4E34-28B8159B272A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "3172BE4F-49F3-F8E1-4189-C98D728BFC72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "AFBB2BDA-4681-0A8F-F8FA-3CA40CF8188F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	rename -uid "D1FB0F2F-45BC-197A-8298-A1A5B2A28162";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 8.111295923124427e-15 -1 1.7219537682092037e-22 0
		 -0.99999999999999978 -8.1112959231244286e-15 -2.1229083299748682e-08 0 2.1229083299748682e-08 4.7019774032891511e-38 -0.99999999999999978 0
		 29.565600817422652 -15.127400000045119 6.2765060256018333e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak10";
	rename -uid "1638C58E-4631-1017-625C-0AA1532A91A6";
createNode objectSet -n "skinCluster10Set";
	rename -uid "FD532156-4C56-BF57-496F-EEB1A3DB4C52";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "8078BCEA-43D3-08AD-F831-378C3CD8D1F3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "C949096C-4E60-09BC-68BF-A397F57E14FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "233D454A-46E7-EC55-2359-819937F7847C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	rename -uid "CB98CB8B-4B1D-AEAA-782A-7EBEA829691E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "92DDA358-4552-F7C5-4FE6-31996E636AD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose8";
	rename -uid "66E17A29-42D4-9D7D-59F9-248CF1E332AC";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" 8.1112959231244286e-15 -1 -1.2246467991473532e-16 0
		 -1 -8.1112959231244286e-15 0 0 -9.9334725891913069e-31 1.2246467991473532e-16 -1 0
		 -15.127400000045366 69.785000817422528 0 1;
	setAttr ".wm[3]" -type "matrix" 8.111295923124427e-15 -0.99999999999999978 2.1229083299748682e-08 0
		 -1 -8.1112959231244286e-15 0 0 1.7219537682092035e-22 -2.1229083299748682e-08 -0.99999999999999978 0
		 -15.127400000045359 29.565600817422535 7.8886090522101181e-31 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029926 3.9771564167012663e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -1.4901161438777017e-08 2.3210071896581422e-21
		 1.3367581216483901e-16 0 -0.19587991988203157 15.157566089580127 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 6.123233995736766e-17 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.1660453100425268e-14 2.1229083422213361e-08
		 -9.1656815610062246e-14 0 40.219400000000007 3.1619151741324458e-13 -4.9254559473627072e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId25";
	rename -uid "776713BE-454B-25A6-8B31-D0A218A1925A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "4DE25D85-444E-61C0-11E9-9B80C72D2322";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode animCurveTU -n "Foot_L_Ctrl_visibility";
	rename -uid "BFF4DC0D-4CE3-BEF2-CE1C-64A4A87CF40C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Foot_L_Ctrl_translateX";
	rename -uid "573BDE6F-426A-4379-B362-31B2175326C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Foot_L_Ctrl_translateY";
	rename -uid "E2499E41-4D26-FC66-E655-7A8AD7B4418C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Foot_L_Ctrl_translateZ";
	rename -uid "EE7FE984-4E1D-6C1E-A38B-EFB2BFEB7846";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -10.978941637199306;
createNode animCurveTA -n "Foot_L_Ctrl_rotateX";
	rename -uid "04980DEB-46E5-54B1-82E7-90866578EA3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Foot_L_Ctrl_rotateY";
	rename -uid "7918E09E-4412-66D9-2968-709E2C8A388C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Foot_L_Ctrl_rotateZ";
	rename -uid "8C3028F0-49EE-2F37-96E8-08995F5B55EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Foot_L_Ctrl_scaleX";
	rename -uid "AF0C91BE-4706-BE7D-39BF-ED870DCB20A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Foot_L_Ctrl_scaleY";
	rename -uid "81C67A38-42F1-DADE-3C63-FCB7482460F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Foot_L_Ctrl_scaleZ";
	rename -uid "09B24F1A-48FB-5622-0D73-F794AD747ED6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode skinCluster -n "skinCluster11";
	rename -uid "DA4B2CCA-4DFF-2034-9BD7-A9B503F4A7C7";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 8.1112959231244286e-15 -1 -9.9334725891913069e-31 0
		 -1 -8.1112959231244286e-15 1.2246467991473532e-16 0 -1.2246467991473532e-16 0 -1 0
		 69.785000817422656 -15.127400000044799 -8.5461977879552082e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak11";
	rename -uid "A35DB76A-4918-F104-0195-F2B7B3D2539B";
createNode objectSet -n "skinCluster11Set";
	rename -uid "035155A4-4E6B-00C2-D8BE-949E1C93B2F8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "39F6CEEB-49D8-D155-F031-8D9C6479C01E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "D92FD709-4EBA-BD11-940B-E9A9C6AEFA25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "4178B29E-421E-F4CC-337E-33A07DCB5DBD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId27";
	rename -uid "94B4CA34-436E-600B-5563-B78CDAF28CBE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "6606094E-4F7A-511E-334B-43814395621E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId28";
	rename -uid "A430010A-4AE1-CA74-35A0-9D8AF1C240CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "B1B110F3-4F45-C518-0985-E297503F782E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster12";
	rename -uid "562D0071-4924-D3FC-419B-83AB76337C7C";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 8.111295923124427e-15 -1 1.7219057703006782e-22 0
		 -0.99999999999999978 -8.1112959231244286e-15 -2.1228491558194922e-08 0 2.1228491558194922e-08 2.3509887016445755e-38 -0.99999999999999978 0
		 29.565578201819431 15.18771654302909 6.2763262727047574e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak12";
	rename -uid "06A94445-4F18-596C-313E-A780AA44E8C4";
createNode objectSet -n "skinCluster12Set";
	rename -uid "643818EB-4511-656A-7C3A-97BBC7CD531B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	rename -uid "5268ACE0-4E2D-C3BF-AB10-A09FAD0D7242";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	rename -uid "6EF74134-481A-5D89-7C8C-A6984F43601E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	rename -uid "0ADD0AAA-4AEB-113A-0393-A0A75929978A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	rename -uid "A3634905-493D-EDC8-2843-E799B5C24095";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "03A57DAF-4249-D951-F601-97AD08321242";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose9";
	rename -uid "A667E591-4BA3-5725-DB43-AC9D0E5C7B53";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" 8.1112959231244286e-15 -1 -1.2246467991473532e-16 0
		 -1 -8.1112959231244286e-15 0 0 -9.9334725891913069e-31 1.2246467991473532e-16 -1 0
		 15.187716543028845 69.785038244882102 0 1;
	setAttr ".wm[3]" -type "matrix" 8.111295923124427e-15 -0.99999999999999978 2.1228491558194922e-08 0
		 -1 -8.1112959231244286e-15 0 0 1.721905770300678e-22 -2.1228491558194922e-08 -0.99999999999999978 0
		 15.18771654302885 29.565578201819562 1.5777218104420236e-30 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029926 3.9771564167012663e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.4492935982947064e-16 3.9880301873741861e-29
		 2.1971560164122496e-24 0 -0.19584249242271312 -15.157550453494084 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 6.123233995736766e-17 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.1565661658326504e-14 2.1228491680659597e-08
		 -9.5479896488456053e-14 0 40.21946004306254 3.2329694477084558e-13 -4.9254633005171429e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId31";
	rename -uid "9591064E-4059-A48C-83A6-8FA3EFF0BDB5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "02C8A2B4-4552-66FD-DE4F-0C9E7239E10D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster13";
	rename -uid "D67A1E95-4C8F-B2D9-403A-FFAFE3B6A083";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 8.1112959231244286e-15 -1 -9.9334725891913069e-31 0
		 -1 -8.1112959231244286e-15 1.2246467991473532e-16 0 -1.2246467991473532e-16 0 -1 0
		 69.785038244881974 15.187716543029412 -8.5462023714970334e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak13";
	rename -uid "E07A4880-4BD8-5F19-CE53-E18E040B300A";
createNode objectSet -n "skinCluster13Set";
	rename -uid "EA5367CC-4DC4-813C-40A2-ACB121E1FDF4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster13GroupId";
	rename -uid "A6606A35-4A14-8A65-28CA-25854F845477";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster13GroupParts";
	rename -uid "05253E96-423D-9B7C-8B79-9B8EABAB7169";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	rename -uid "5848DE6F-4123-0AD5-CB6E-11B279D4AD19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId33";
	rename -uid "7AA04D1D-4455-F18A-4FAB-9DB1F889F9AC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "78844467-474B-9673-D495-3FA02794E524";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId34";
	rename -uid "B1B60458-4BAC-79E5-FCA0-EBA1938D4476";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "9ABE898F-4BF6-E103-85CE-BE8F2CFA695D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode skinCluster -n "skinCluster14";
	rename -uid "E6EE8409-407F-FF56-AF64-6B9E96E64993";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" -0.99997496688545651 0.0070757050835730537 4.653725315496611e-17 0
		 0.0070757050835730537 0.99997496688545651 1.2985151581888905e-16 0 -4.5617297151987974e-17 1.3017754910974409e-16 -1 0
		 -78.278446450121407 -100.35563783011803 -1.5041554628764392e-14 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode groupId -n "groupId36";
	rename -uid "AC55BEA4-4DBA-A4E3-84CE-9299ED19CF80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "34451942-4B61-3831-D69A-11A995AACF65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode tweak -n "tweak14";
	rename -uid "DB0C1CB3-45CA-8DAD-2D39-36AF7D65CD21";
createNode objectSet -n "skinCluster14Set";
	rename -uid "37894D3C-4897-EBDB-510A-DAB348F3355C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster14GroupId";
	rename -uid "E91C340B-4268-0240-AE84-2C9410F592F6";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster14GroupParts";
	rename -uid "C9ACEF35-4FDD-0FBA-033F-52985868D4E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet14";
	rename -uid "92E64740-4C0C-B404-288F-66A5451747F5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "926ED2ED-48AB-3275-C623-AA9B85873CC4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "BF412B8A-418E-6271-1948-4AA5DD60C1CD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose10";
	rename -uid "F31D7625-4BDA-2039-F9F3-00B3AA6A094D";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534754848 92.713302013572758 0 1;
	setAttr ".wm[3]" -type "matrix" -0.04176045908590819 0.99912765153254279 -3.8518598887744717e-34 0
		 0.99912765153254279 0.04176045908590819 1.2246467991473532e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 0.030166089534758175 112.71524466200189 0 1;
	setAttr ".wm[4]" -type "matrix" -0.20209380168485547 -0.97936617019405103 -2.9736418785592647e-17 0
		 -0.97936617019405103 0.20209380168485547 -1.1879959269469926e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 -17.963300000045393 112.52800081742255 -2.7610131682735413e-30 1;
	setAttr ".wm[5]" -type "matrix" -1.0000000000000002 -1.1102230246251565e-15 -3.6728720786836472e-16 0
		 -1.1102230246251565e-15 1.0000000000000002 5.1141812550480107e-18 0 3.6728720786836482e-16 5.1141812550483866e-18 -1 0
		 -20.399900000045356 100.72000081742252 -5.3528098207610551e-17 1;
	setAttr ".wm[6]" -type "matrix" -0.99997496688545695 0.0070757050835730572 -4.5617297151987974e-17 0
		 0.0070757050835730572 0.99997496688545695 1.3017754910974407e-16 0 4.6537253154966128e-17 1.298515158188891e-16 -1 0
		 -51.138600000045372 100.72000081742249 -7.5790935820409378e-15 1;
	setAttr ".wm[7]" -type "matrix" -0.99997496688545695 0.0070757050835730572 -4.5617297151987974e-17 0
		 0.0070757050835730572 0.99997496688545695 1.3017754910974407e-16 0 4.6537253154966128e-17 1.298515158188891e-16 -1 0
		 -77.566400000045377 100.90700081742251 -5.5483548090056813e-15 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029911 3.9771563820067968e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971749868848942e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556817090182214e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.56433490174910372 -17.985588905923308
		 -2.2025993884419098e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99248987190792692 0.12232683336123269 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 6.2831853071795862 0 0 12.056777494836687
		 7.6569305095582768e-15 -3.0499728658356542e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.6316273419965065 0.77527214630891272 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.1415926535897931 -3.1415926535897936
		 3.1415926535897931 0 30.738700000000012 1.1384254650081969e-14 -3.764365812669981e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0035378746828619708 0.99999374170178101 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.428461586706103 -4.8808233930192069e-14
		 -3.2363337585059349e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster15";
	rename -uid "E09D1D20-41D0-3457-C86E-6EB28F1A3B6E";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" -0.0045661624430431451 0.99998957502593178 -1.4593700024847303e-08 0
		 0.999989575025932 0.0045661624430429464 -3.011398552279671e-09 0 -2.9447299535693596e-09 -1.4607298420873435e-08 -0.99999999999999989 0
		 -100.55155674171613 -78.086723062636878 6.0189684066629039e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode groupId -n "groupId39";
	rename -uid "675AA38E-4A06-2BCE-69A9-E9BEDA57A198";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "0C07DF63-4D58-8627-7EB8-4DB02E358769";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode tweak -n "tweak15";
	rename -uid "E52C360F-468E-5A88-530D-368C7CED39F6";
createNode objectSet -n "skinCluster15Set";
	rename -uid "44ECBFD4-4B08-AD51-6982-76B1B870C342";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster15GroupId";
	rename -uid "35C7C1B3-45A9-F1FA-FEA9-C49D1576BE62";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster15GroupParts";
	rename -uid "FB9BA80D-4F89-CC48-EB95-FF8647F3C219";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet15";
	rename -uid "F394F7EE-4A66-A5BF-099E-DDA4DBD47AF3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId41";
	rename -uid "5658DCAF-45EC-CF3E-33D0-2BA510DA6650";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "15231D15-4803-A2E5-0CC4-53B2140C90B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose11";
	rename -uid "0D73C17A-4E53-D2C3-5875-D7ABFC136FEF";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.00043106183877661408 0.99999990709284126 0 0 -0.99999990709284126 0.00043106183877661408 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534759521 69.980880737304688 0 1;
	setAttr ".wm[2]" -type "matrix" -8.1112959231244286e-15 1 0 0 -1 -8.1112959231244286e-15 0 0
		 0 0 1 0 0.030166089534754848 92.713302013572758 0 1;
	setAttr ".wm[3]" -type "matrix" -0.04176045908590819 0.99912765153254279 -3.8518598887744717e-34 0
		 0.99912765153254279 0.04176045908590819 1.2246467991473532e-16 0 1.2235784803889406e-16 5.1141812550481463e-18 -1 0
		 0.030166089534758175 112.71524466200189 0 1;
	setAttr ".wm[4]" -type "matrix" 0.2020915287278702 -0.9793666392196706 1.9718826053915795e-17 0
		 0.9793666392196706 0.2020915287278702 -1.4901161639534817e-08 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 18.023582478880993 112.52781324127957 -1.1832913578315177e-30 1;
	setAttr ".wm[5]" -type "matrix" 1 -3.0531133177191805e-16 -1.4593700591395284e-08 0
		 3.0531133177191805e-16 1 -3.0113985548666527e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 20.460190948271638 100.71963373577113 -5.4043298807868552e-17 1;
	setAttr ".wm[6]" -type "matrix" 0.99997485130835673 0.0070920202220418425 -1.461469047836692e-08 0
		 -0.0070920202220418425 0.99997485130835673 -2.9078240024243775e-09 0 1.4593700591395284e-08 3.0113985548666482e-09 1 0
		 51.198943946738069 100.71963373577113 -4.4859214457506201e-07 1;
	setAttr ".wm[7]" -type "matrix" -0.0045661624430429898 0.99998957502593178 -2.9447299535693617e-09 0
		 0.99998957502593178 0.0045661624430431008 -1.4607298420873438e-08 0 -1.45937000248473e-08 -3.011398552279671e-09 -1 0
		 77.626774268590353 100.90706515649349 -8.3483640683310748e-07 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70695436138453216 0.70725916814092149 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 69.980887239029911 3.9771563820067968e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0002155309243984542 0.99999997677321006 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.73242127626807 -1.7971749868848942e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.001942648429136 -1.6556817090182214e-13
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978188909695276 0.020884784742210113 1.2788242392714547e-18 6.1218984516403869e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.93868124415270793 17.969892637958178
		 2.2006771500097083e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.080772132416083262 0.99673259333933628 7.4262368026069904e-09 6.0179930543231492e-10 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 4.4408920985006262e-16 0 12.056955008102836
		 -6.3583068012057356e-15 -2.9179239209869351e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.63162824163907105 0.77527141335401717 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 30.738752998466435 4.8519901135799227e-15
		 1.3291454442972519e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0035460324056100405 0.99999371280732474 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.428494963922727 8.5265028460203679e-14
		 1.1448764335597174e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70799925800733832 0.70621317649917748 2.000539110743814e-16 2.0055986678732415e-16 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode animCurveTU -n "Hip_Ctrl_visibility";
	rename -uid "27FD216D-4F60-9B8C-5E4F-CFA3E84EE738";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 40 1 60 1 80 1 100 1 120 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
createNode animCurveTL -n "Hip_Ctrl_translateX";
	rename -uid "23C1378F-41D5-BAC7-1586-9AB312B25EBA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 20 0 40 0 60 0 80 0 100 0 120 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "Hip_Ctrl_translateY";
	rename -uid "0ACCFB4A-49EF-1430-8FE7-CDA021478783";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -11.572042303671395 20 -9.5893506331463954
		 40 -13.271658596284823 60 -9.5893506331463954 80 -13.271658596284823 100 -9.5893506331463954
		 120 -11.572042303671395;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "Hip_Ctrl_translateZ";
	rename -uid "DF361295-45D5-F613-2D82-828155CCCDF3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 7.8739426644573633 20 7.8739426644573633
		 40 7.8739426644573633 60 7.8739426644573633 80 7.8739426644573633 100 7.8739426644573633
		 120 7.8739426644573633;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "Hip_Ctrl_rotateX";
	rename -uid "6D810ABE-4325-5E05-0364-EF8CEBB64F3C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -10.549691675817197 20 -10.549691675817197
		 40 -10.549691675817197 60 -10.549691675817197 80 -10.549691675817197 100 -10.549691675817197
		 120 -10.549691675817197;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "Hip_Ctrl_rotateY";
	rename -uid "E35E02BB-40BF-005F-38A6-6F9A19F30692";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -13.048757937939961 20 -13.048757937939961
		 40 -13.048757937939961 60 -13.048757937939961 80 -13.048757937939961 100 -13.048757937939961
		 120 -13.048757937939961;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "Hip_Ctrl_rotateZ";
	rename -uid "F4422197-4DD7-CD45-A14B-FDB8E8C14088";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 2.0405368435153002e-16 20 0 40 0 60 0
		 80 0 100 0 120 0;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "Hip_Ctrl_scaleX";
	rename -uid "C1B86CC0-44DA-445C-A695-B69ADE316C20";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 40 1 60 1 80 1 100 1 120 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "Hip_Ctrl_scaleY";
	rename -uid "931D55F6-4FA1-55DC-9D21-75B96C581EE2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 40 1 60 1 80 1 100 1 120 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "Hip_Ctrl_scaleZ";
	rename -uid "D91D4579-4D02-68C2-B3B4-67843E823E9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 40 1 60 1 80 1 100 1 120 1;
	setAttr -s 7 ".kit[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 18 18 1 1 1 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "Foot_R_Ctrl_translateX";
	rename -uid "71007EE2-46E3-592D-3E35-9AB00AFC8C3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Foot_R_Ctrl_translateY";
	rename -uid "D7CE072A-4B4B-1786-075A-B5ABD40C3E8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Foot_R_Ctrl_translateZ";
	rename -uid "4B4AD777-4054-CBF1-6D89-53828909B3BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 28.017220946336099;
createNode animCurveTU -n "Foot_R_Ctrl_visibility";
	rename -uid "77B13FC3-4C9C-59EF-0499-10BB0143E00E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Foot_R_Ctrl_rotateX";
	rename -uid "1D1D383D-4757-CB44-089D-859FD39A61ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Foot_R_Ctrl_rotateY";
	rename -uid "CEF2030D-4867-B844-E2FB-6F84E1CBAF70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Foot_R_Ctrl_rotateZ";
	rename -uid "C71736E3-4CAF-298C-1160-0482EEEF872A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Foot_R_Ctrl_scaleX";
	rename -uid "49D3FC7F-4B27-2F71-5692-C39253C4D1A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Foot_R_Ctrl_scaleY";
	rename -uid "CEB87FD5-441C-ACDF-930D-FD907E4D6D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Foot_R_Ctrl_scaleZ";
	rename -uid "44581044-4E4D-FB41-2F71-4ABD89747AA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "Knee_R_Ctrl_translateX";
	rename -uid "DC8F86CD-437D-20BE-39A8-FB95E2941841";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1504946241666794;
createNode animCurveTL -n "Knee_R_Ctrl_translateY";
	rename -uid "821026FE-4E3E-905F-32E9-DB808EC78317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.13224526197397779;
createNode animCurveTL -n "Knee_R_Ctrl_translateZ";
	rename -uid "A7EE6B71-4C92-42D0-94AC-EEB71FDC846C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -6.2481886531469949e-07;
createNode animCurveTU -n "Knee_R_Ctrl_visibility";
	rename -uid "4A55AF0B-4207-974A-5807-4C8A5E125F14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Knee_R_Ctrl_rotateX";
	rename -uid "5BD2B66E-4FB6-79EC-2061-66AA1801DAF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Knee_R_Ctrl_rotateY";
	rename -uid "722AA38D-431F-E80A-99D1-7E92D1999D02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Knee_R_Ctrl_rotateZ";
	rename -uid "A3F50083-4814-87C8-D006-78A33405C142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Knee_R_Ctrl_scaleX";
	rename -uid "0F6A6EB9-4ED9-734B-E573-89B5DCCBBDEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Knee_R_Ctrl_scaleY";
	rename -uid "2A6D0500-42B9-3C8C-47E0-9AA67A063546";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Knee_R_Ctrl_scaleZ";
	rename -uid "41E6791B-4466-549D-4A89-E28A19913CD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Spine1_Ctrl_rotateX";
	rename -uid "43F2935F-4894-2F59-F80B-0BA9A6394ABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.5820335300997339 120 -5.5820335300997339;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Spine1_Ctrl_rotateY";
	rename -uid "EFF25779-4905-D657-1D2F-C49253DE5528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.11809636981877826 120 -0.11809636981877826;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Spine1_Ctrl_rotateZ";
	rename -uid "4EDCE7FE-411A-70C3-6F5F-599F19136ED0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.75389663607152857 120 0.75389663607152857;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine1_Ctrl_visibility";
	rename -uid "F4BB5CBD-497B-2F11-63AE-519D5031F92B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Spine1_Ctrl_translateX";
	rename -uid "69FC61A8-48A4-C650-E8E7-8E9F9BBA9AC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Spine1_Ctrl_translateY";
	rename -uid "062D949D-4119-B63D-0C34-BBA573091282";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Spine1_Ctrl_translateZ";
	rename -uid "862ACF73-45F2-7A52-F4F1-E6B8FAFF8606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine1_Ctrl_scaleX";
	rename -uid "625151B6-4D49-4496-CADE-00ABA1736D7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine1_Ctrl_scaleY";
	rename -uid "823A7D2D-42E0-6D0A-69CC-B6A80267B41D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine1_Ctrl_scaleZ";
	rename -uid "5BA6F1E6-480F-22C8-4B37-379534D971D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Shoulder_L_Ctrl_rotateX";
	rename -uid "AC88FEBC-46DA-9C3D-D9D8-8BBBF8E65702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -20.210511238620963 19 -19.8619384056034
		 39 -20.647183214208496 59 -20.08924709151885 79 -20.826955073351115 99 -19.956002929996821
		 120 -20.210511238620963;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Shoulder_L_Ctrl_rotateY";
	rename -uid "63A44FD9-4276-E0B2-DAB3-B0B183EA23FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 11.999369101925369 19 10.638013064277958
		 39 13.308863731501249 59 11.530123227893807 79 13.7681207654012 99 10.935235107128063
		 120 11.999369101925369;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Shoulder_L_Ctrl_rotateZ";
	rename -uid "EB6C40B2-4118-A5CB-94F4-C6A33742B25E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 23.504191736489826 19 27.276218689450687
		 39 19.775632431391923 59 24.804241849840775 79 18.437092269313535 99 26.430771759782111
		 120 23.504191736489826;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_L_Ctrl_visibility";
	rename -uid "069C1607-4C38-F4E2-7790-B98E3D7AD6D5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 19 1 39 1 59 1 79 1 99 1 120 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 9 9 9 1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "Shoulder_L_Ctrl_translateX";
	rename -uid "1982CFEC-41E7-7BEE-79CC-2EB3B8E20C60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 19 0 39 0 59 0 79 0 99 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "Shoulder_L_Ctrl_translateY";
	rename -uid "45496556-4FA4-2A66-C880-F48EE8F43354";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 19 0 39 0 59 0 79 0 99 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "Shoulder_L_Ctrl_translateZ";
	rename -uid "E266C613-4AF0-7D71-9911-E68A2B5E8255";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 19 0 39 0 59 0 79 0 99 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_L_Ctrl_scaleX";
	rename -uid "9AB328A2-4B63-A8DE-E797-03BC7A9FD583";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 19 1 39 1 59 1 79 1 99 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_L_Ctrl_scaleY";
	rename -uid "4026C00A-4065-F56F-190C-3687B1C9844B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 19 1 39 1 59 1 79 1 99 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_L_Ctrl_scaleZ";
	rename -uid "B95D870D-4DA4-2EDB-F119-898C78EE3669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 19 1 39 1 59 1 79 1 99 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Elbow_L_Ctrl_rotateX";
	rename -uid "4B9AB0F1-4A67-ACA1-58AD-458C51A0E5C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -13.562113466440554;
createNode animCurveTA -n "Elbow_L_Ctrl_rotateY";
	rename -uid "6717B178-4D4E-0514-0F09-6A814C570A02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -62.13195047047401;
createNode animCurveTA -n "Elbow_L_Ctrl_rotateZ";
	rename -uid "CD202ECD-4390-7634-7F92-F9813778ED3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -27.57470701239669;
createNode animCurveTU -n "Elbow_L_Ctrl_visibility";
	rename -uid "1632ACE8-43DE-8AF4-2E7F-60AAF0929E9B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Elbow_L_Ctrl_translateX";
	rename -uid "5B690F77-43BE-5159-5CD6-76995E4EA0EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Elbow_L_Ctrl_translateY";
	rename -uid "BC6C25F2-4C16-1B42-78E8-FDB5088AF917";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Elbow_L_Ctrl_translateZ";
	rename -uid "D0045CFB-4068-F2C3-C93D-66A4BB5FFBDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Elbow_L_Ctrl_scaleX";
	rename -uid "581606B1-458D-EC39-E422-44B5776750A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Elbow_L_Ctrl_scaleY";
	rename -uid "DFEF59F1-4CFA-BEEC-D6F4-14A5BFEF32A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Elbow_L_Ctrl_scaleZ";
	rename -uid "A7FCED08-417D-EBA9-F747-CDBDC19AB056";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Shoulder_R_Ctrl_rotateX";
	rename -uid "29206CC6-4D5A-6053-6F9C-5BA653488760";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 16.360276701596792 21 13.643665696596299
		 41 16.564966557488525 61 14.501402964664198 81 17.391563189091254 101 14.008361993014212
		 120 16.360276701596792;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Shoulder_R_Ctrl_rotateY";
	rename -uid "43CEEC02-4176-0137-A960-91AE26979A5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -47.51278865083858 21 -46.624616107325977
		 41 -47.590342862998213 61 -46.896806483622377 81 -47.891026888375961 101 -46.743424974400703
		 120 -47.51278865083858;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Shoulder_R_Ctrl_rotateZ";
	rename -uid "5B0AD09B-4DA1-4F05-6606-15A959860B5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -23.165063129248587 21 -26.592487607886806
		 41 -22.904270123265437 61 -25.512913969338566 81 -21.852062032734331 101 -26.132040233969377
		 120 -23.165063129248587;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_R_Ctrl_visibility";
	rename -uid "5513908C-434A-3F15-B9F7-0EBD287FF901";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 21 1 41 1 61 1 81 1 101 1 120 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 9 9 9 1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "Shoulder_R_Ctrl_translateX";
	rename -uid "63A388F7-4C09-07AD-8E88-7FB85FBBB462";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 21 0 41 0 61 0 81 0 101 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "Shoulder_R_Ctrl_translateY";
	rename -uid "E1DB963C-44DB-8454-AC90-6BAFD4B48E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 21 0 41 0 61 0 81 0 101 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "Shoulder_R_Ctrl_translateZ";
	rename -uid "701730A1-4116-8F8C-88F2-F4A749A19F07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 21 0 41 0 61 0 81 0 101 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_R_Ctrl_scaleX";
	rename -uid "98057BF4-4C8C-EA2B-2F5B-5281090DBD8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 21 1 41 1 61 1 81 1 101 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_R_Ctrl_scaleY";
	rename -uid "48470896-4538-8045-910F-DDBEA3555B75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 21 1 41 1 61 1 81 1 101 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Shoulder_R_Ctrl_scaleZ";
	rename -uid "0AD81171-4A32-CA34-99A5-E29C431FCED8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 21 1 41 1 61 1 81 1 101 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Elbow_R_Ctrl_rotateX";
	rename -uid "12B04387-44F5-56D7-488D-89ADF09BE8D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -74.211122529309634;
createNode animCurveTA -n "Elbow_R_Ctrl_rotateY";
	rename -uid "F139F250-4B45-5F72-FF52-44A4F787B106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 47.457754881857092;
createNode animCurveTA -n "Elbow_R_Ctrl_rotateZ";
	rename -uid "7A6D0E7B-4AEC-5386-5EC2-2B9702849BC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -15.827156674006293;
createNode animCurveTU -n "Elbow_R_Ctrl_visibility";
	rename -uid "AB365126-40BF-F452-5BE1-72821C3A2D0A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Elbow_R_Ctrl_translateX";
	rename -uid "10655E93-4EFE-B825-6BDF-2C959FB3CA54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Elbow_R_Ctrl_translateY";
	rename -uid "069D765C-4B79-4D88-79C0-23BC3237BDAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Elbow_R_Ctrl_translateZ";
	rename -uid "2855C2A5-466D-5546-0F2D-A4A93830C6ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Elbow_R_Ctrl_scaleX";
	rename -uid "3897D956-4F5C-3A7E-B47C-5EB8F789AA7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Elbow_R_Ctrl_scaleY";
	rename -uid "14ED7266-4074-44B0-0B16-078E8ED356A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Elbow_R_Ctrl_scaleZ";
	rename -uid "8AC87445-4BB8-9358-65F4-6D8B53BB9C5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Neck2_Ctrl_rotateX";
	rename -uid "A931397B-4FD4-A05C-74D0-478537040C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 10.034123864146636 15 4.3370339218851433
		 35 9.9597117852010566 55 5.8630242406041813 75 11.236969568528476 95 5.9008961739266441
		 120 10.034123864146636;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Neck2_Ctrl_rotateY";
	rename -uid "492C7072-4D6A-9A65-1757-818534A6B6A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 13.482833689011425 15 13.473216738031082
		 35 13.482431567445426 55 13.476383585765937 75 13.48343474492947 95 13.4762926887155
		 120 13.482833689011425;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Neck2_Ctrl_rotateZ";
	rename -uid "60F275B0-4A32-AC20-1332-DDB90DF0ECEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 2.887380520168358 15 2.8097504323167417
		 35 2.8863783191698458 55 2.8304602342305021 75 2.9038942815063447 95 2.8309984319678341
		 120 2.887380520168358;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Neck2_Ctrl_visibility";
	rename -uid "060B8946-4278-7E28-31E3-B0B9DE28FC40";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 15 1 35 1 55 1 75 1 95 1 120 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 9 9 9 1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "Neck2_Ctrl_translateX";
	rename -uid "6F986414-468E-077B-1DCF-F6AD8F22EB8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 0 35 0 55 0 75 0 95 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "Neck2_Ctrl_translateY";
	rename -uid "F1FC5679-45B9-12E9-2655-6EBC2B296ADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 0 35 0 55 0 75 0 95 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTL -n "Neck2_Ctrl_translateZ";
	rename -uid "036C67D6-4404-3E26-940A-65A2A80449D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 0 35 0 55 0 75 0 95 0 120 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Neck2_Ctrl_scaleX";
	rename -uid "1ADD723F-45E3-9ECB-141C-96BD5CAA86FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 15 1 35 1 55 1 75 1 95 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Neck2_Ctrl_scaleY";
	rename -uid "BFF309BD-43A9-2DB8-DAFC-00A1643ECDDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 15 1 35 1 55 1 75 1 95 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Neck2_Ctrl_scaleZ";
	rename -uid "11C52DC4-45E1-DA60-DD55-FCA3F8F01B75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 15 1 35 1 55 1 75 1 95 1 120 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "root_Ctrl_rotateX";
	rename -uid "F159F342-495D-780F-C988-60B3B2295BB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "root_Ctrl_rotateY";
	rename -uid "26130D73-4E55-E523-3AE3-E3B10434FC81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "root_Ctrl_rotateZ";
	rename -uid "C3BC587D-4230-A670-C382-3598C16267D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "root_Ctrl_visibility";
	rename -uid "086FE0C7-447B-8F3A-B0EF-4B8D2852FBC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "root_Ctrl_translateX";
	rename -uid "FCC2AA24-4A0C-1A70-7466-458D415DDD1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "root_Ctrl_translateY";
	rename -uid "C641E221-49CB-7CD0-A5CF-EA943D9E5B5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "root_Ctrl_translateZ";
	rename -uid "2153461C-4D4A-2BAF-0E3A-72828F7AF612";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "root_Ctrl_scaleX";
	rename -uid "5192CA5C-4249-0D63-77DE-26996FF3A434";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "root_Ctrl_scaleY";
	rename -uid "1CE07199-47F7-E5DE-59D5-D5A6D8CB039D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "root_Ctrl_scaleZ";
	rename -uid "DD97D2C7-4860-775A-F8A4-DCAB107237D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "Knee_L_Ctrl_rotateX";
	rename -uid "8DB4CF6E-4D4B-B284-EBA3-86A8A0878A73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Knee_L_Ctrl_rotateY";
	rename -uid "6AEF7602-4FC9-B3E2-B7F2-168507591CFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Knee_L_Ctrl_rotateZ";
	rename -uid "CC10E365-41CB-7473-1F0D-E6AD6A7A664D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Knee_L_Ctrl_visibility";
	rename -uid "8381D56F-4B8C-FEFE-6118-D5802498D1C7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Knee_L_Ctrl_translateX";
	rename -uid "267DCDFB-4335-27F5-79D2-4DA4077644DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.4575113911674897;
createNode animCurveTL -n "Knee_L_Ctrl_translateY";
	rename -uid "11831A90-4165-3194-512F-8C8F869A1606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.13224499999999395;
createNode animCurveTL -n "Knee_L_Ctrl_translateZ";
	rename -uid "456C2130-496E-F866-4AA5-8282523042AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -6.2482786449490716e-07;
createNode animCurveTU -n "Knee_L_Ctrl_scaleX";
	rename -uid "1FE3A7FE-4C67-6C44-D6AD-A989A8AF4795";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Knee_L_Ctrl_scaleY";
	rename -uid "B5B8A3F7-4DB5-1551-0CCD-CAB8EA744E53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Knee_L_Ctrl_scaleZ";
	rename -uid "E04BF5EA-4CB8-49D5-CA7E-1389E50FF8EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
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
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 24 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "Basic_testKnight_MESHRN.phl[1]" "groupParts18.ig";
connectAttr "Basic_testKnight_MESHRN.phl[2]" "groupParts2.ig";
connectAttr "Basic_testKnight_MESHRN.phl[3]" "groupParts16.ig";
connectAttr "Basic_testKnight_MESHRN.phl[4]" "groupParts7.ig";
connectAttr "Basic_testKnight_MESHRN.phl[5]" "groupParts13.ig";
connectAttr "Basic_testKnight_MESHRN.phl[6]" "groupParts4.ig";
connectAttr "Basic_testKnight_MESHRN.phl[7]" "groupParts10.ig";
connectAttr "Basic_testKnight_MESHRN.phl[8]" "groupParts27.ig";
connectAttr "Basic_testKnight_MESHRN.phl[9]" "groupParts33.ig";
connectAttr "Basic_testKnight_MESHRN.phl[10]" "groupParts24.ig";
connectAttr "Basic_testKnight_MESHRN.phl[11]" "groupParts30.ig";
connectAttr "Basic_testKnight_RIGRN.phl[1]" "bindPose2.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[2]" "bindPose1.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[3]" "bindPose3.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[4]" "bindPose4.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[5]" "bindPose5.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[6]" "bindPose8.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[7]" "bindPose9.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[8]" "bindPose10.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[9]" "bindPose11.m[0]";
connectAttr "Basic_testKnight_RIGRN.phl[10]" "bindPose1.wm[0]";
connectAttr "Basic_testKnight_RIGRN.phl[11]" "bindPose2.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[12]" "bindPose1.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[13]" "bindPose3.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[14]" "bindPose4.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[15]" "bindPose5.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[16]" "bindPose8.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[17]" "bindPose9.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[18]" "bindPose10.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[19]" "bindPose11.m[1]";
connectAttr "Basic_testKnight_RIGRN.phl[20]" "skinCluster7.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[21]" "bindPose1.wm[1]";
connectAttr "Basic_testKnight_RIGRN.phl[22]" "skinCluster7.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[23]" "skinCluster7.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[24]" "bindPose2.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[25]" "bindPose1.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[26]" "bindPose3.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[27]" "bindPose4.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[28]" "bindPose5.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[29]" "bindPose10.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[30]" "bindPose11.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[31]" "skinCluster6.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[32]" "bindPose1.wm[2]";
connectAttr "Basic_testKnight_RIGRN.phl[33]" "skinCluster6.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[34]" "skinCluster6.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[35]" "bindPose2.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[36]" "bindPose1.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[37]" "bindPose3.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[38]" "bindPose4.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[39]" "bindPose5.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[40]" "bindPose10.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[41]" "bindPose11.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[42]" "bindPose1.wm[3]";
connectAttr "Basic_testKnight_RIGRN.phl[43]" "bindPose1.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[44]" "skinCluster1.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[45]" "bindPose1.wm[4]";
connectAttr "Basic_testKnight_RIGRN.phl[46]" "skinCluster1.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[47]" "skinCluster1.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[48]" "bindPose5.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[49]" "bindPose4.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[50]" "bindPose11.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[51]" "bindPose5.m[5]";
connectAttr "Basic_testKnight_RIGRN.phl[52]" "bindPose4.m[5]";
connectAttr "Basic_testKnight_RIGRN.phl[53]" "bindPose11.m[5]";
connectAttr "Basic_testKnight_RIGRN.phl[54]" "skinCluster4.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[55]" "skinCluster4.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[56]" "skinCluster4.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[57]" "bindPose11.m[6]";
connectAttr "Basic_testKnight_RIGRN.phl[58]" "bindPose5.m[6]";
connectAttr "Basic_testKnight_RIGRN.phl[59]" "skinCluster5.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[60]" "skinCluster5.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[61]" "skinCluster5.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[62]" "bindPose11.m[7]";
connectAttr "Basic_testKnight_RIGRN.phl[63]" "skinCluster15.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[64]" "skinCluster15.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[65]" "skinCluster15.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[66]" "bindPose3.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[67]" "bindPose2.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[68]" "bindPose10.m[4]";
connectAttr "Basic_testKnight_RIGRN.phl[69]" "bindPose3.m[5]";
connectAttr "Basic_testKnight_RIGRN.phl[70]" "bindPose2.m[5]";
connectAttr "Basic_testKnight_RIGRN.phl[71]" "bindPose10.m[5]";
connectAttr "Basic_testKnight_RIGRN.phl[72]" "skinCluster2.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[73]" "skinCluster2.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[74]" "skinCluster2.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[75]" "bindPose10.m[6]";
connectAttr "Basic_testKnight_RIGRN.phl[76]" "bindPose3.m[6]";
connectAttr "Basic_testKnight_RIGRN.phl[77]" "skinCluster3.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[78]" "skinCluster3.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[79]" "skinCluster3.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[80]" "bindPose10.m[7]";
connectAttr "Basic_testKnight_RIGRN.phl[81]" "skinCluster14.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[82]" "skinCluster14.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[83]" "skinCluster14.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[84]" "bindPose9.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[85]" "skinCluster13.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[86]" "skinCluster13.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[87]" "skinCluster13.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[88]" "bindPose9.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[89]" "skinCluster12.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[90]" "skinCluster12.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[91]" "skinCluster12.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[92]" "bindPose8.m[2]";
connectAttr "Basic_testKnight_RIGRN.phl[93]" "skinCluster11.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[94]" "skinCluster11.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[95]" "skinCluster11.ifcl[0]";
connectAttr "Basic_testKnight_RIGRN.phl[96]" "bindPose8.m[3]";
connectAttr "Basic_testKnight_RIGRN.phl[97]" "skinCluster10.lw[0]";
connectAttr "Basic_testKnight_RIGRN.phl[98]" "skinCluster10.ma[0]";
connectAttr "Basic_testKnight_RIGRN.phl[99]" "skinCluster10.ifcl[0]";
connectAttr "root_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[100]";
connectAttr "root_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[101]";
connectAttr "root_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[102]";
connectAttr "root_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[103]";
connectAttr "root_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[104]";
connectAttr "root_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[105]";
connectAttr "root_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[106]";
connectAttr "root_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[107]";
connectAttr "root_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[108]";
connectAttr "root_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[109]";
connectAttr "Foot_R_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[110]";
connectAttr "Foot_R_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[111]";
connectAttr "Foot_R_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[112]";
connectAttr "Foot_R_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[113]";
connectAttr "Foot_R_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[114]";
connectAttr "Foot_R_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[115]";
connectAttr "Foot_R_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[116]";
connectAttr "Foot_R_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[117]";
connectAttr "Foot_R_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[118]";
connectAttr "Foot_R_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[119]";
connectAttr "Knee_R_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[120]";
connectAttr "Knee_R_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[121]";
connectAttr "Knee_R_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[122]";
connectAttr "Knee_R_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[123]";
connectAttr "Knee_R_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[124]";
connectAttr "Knee_R_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[125]";
connectAttr "Knee_R_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[126]";
connectAttr "Knee_R_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[127]";
connectAttr "Knee_R_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[128]";
connectAttr "Knee_R_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[129]";
connectAttr "Foot_L_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[130]";
connectAttr "Foot_L_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[131]";
connectAttr "Foot_L_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[132]";
connectAttr "Foot_L_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[133]";
connectAttr "Foot_L_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[134]";
connectAttr "Foot_L_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[135]";
connectAttr "Foot_L_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[136]";
connectAttr "Foot_L_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[137]";
connectAttr "Foot_L_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[138]";
connectAttr "Foot_L_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[139]";
connectAttr "Knee_L_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[140]";
connectAttr "Knee_L_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[141]";
connectAttr "Knee_L_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[142]";
connectAttr "Knee_L_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[143]";
connectAttr "Knee_L_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[144]";
connectAttr "Knee_L_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[145]";
connectAttr "Knee_L_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[146]";
connectAttr "Knee_L_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[147]";
connectAttr "Knee_L_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[148]";
connectAttr "Knee_L_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[149]";
connectAttr "Hip_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[150]";
connectAttr "Hip_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[151]";
connectAttr "Hip_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[152]";
connectAttr "Hip_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[153]";
connectAttr "Hip_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[154]";
connectAttr "Hip_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[155]";
connectAttr "Hip_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[156]";
connectAttr "Hip_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[157]";
connectAttr "Hip_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[158]";
connectAttr "Hip_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[159]";
connectAttr "Spine1_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[160]";
connectAttr "Spine1_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[161]";
connectAttr "Spine1_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[162]";
connectAttr "Spine1_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[163]";
connectAttr "Spine1_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[164]";
connectAttr "Spine1_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[165]";
connectAttr "Spine1_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[166]";
connectAttr "Spine1_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[167]";
connectAttr "Spine1_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[168]";
connectAttr "Spine1_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[169]";
connectAttr "Neck2_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[170]";
connectAttr "Neck2_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[171]";
connectAttr "Neck2_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[172]";
connectAttr "Neck2_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[173]";
connectAttr "Neck2_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[174]";
connectAttr "Neck2_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[175]";
connectAttr "Neck2_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[176]";
connectAttr "Neck2_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[177]";
connectAttr "Neck2_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[178]";
connectAttr "Neck2_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[179]";
connectAttr "Shoulder_R_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[180]";
connectAttr "Shoulder_R_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[181]";
connectAttr "Shoulder_R_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[182]";
connectAttr "Shoulder_R_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[183]";
connectAttr "Shoulder_R_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[184]";
connectAttr "Shoulder_R_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[185]";
connectAttr "Shoulder_R_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[186]";
connectAttr "Shoulder_R_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[187]";
connectAttr "Shoulder_R_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[188]";
connectAttr "Shoulder_R_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[189]";
connectAttr "Elbow_R_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[190]";
connectAttr "Elbow_R_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[191]";
connectAttr "Elbow_R_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[192]";
connectAttr "Elbow_R_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[193]";
connectAttr "Elbow_R_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[194]";
connectAttr "Elbow_R_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[195]";
connectAttr "Elbow_R_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[196]";
connectAttr "Elbow_R_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[197]";
connectAttr "Elbow_R_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[198]";
connectAttr "Elbow_R_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[199]";
connectAttr "Shoulder_L_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[200]";
connectAttr "Shoulder_L_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[201]";
connectAttr "Shoulder_L_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[202]";
connectAttr "Shoulder_L_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[203]";
connectAttr "Shoulder_L_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[204]";
connectAttr "Shoulder_L_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[205]";
connectAttr "Shoulder_L_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[206]";
connectAttr "Shoulder_L_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[207]";
connectAttr "Shoulder_L_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[208]";
connectAttr "Shoulder_L_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[209]";
connectAttr "Elbow_L_Ctrl_rotateX.o" "Basic_testKnight_RIGRN.phl[210]";
connectAttr "Elbow_L_Ctrl_rotateY.o" "Basic_testKnight_RIGRN.phl[211]";
connectAttr "Elbow_L_Ctrl_rotateZ.o" "Basic_testKnight_RIGRN.phl[212]";
connectAttr "Elbow_L_Ctrl_visibility.o" "Basic_testKnight_RIGRN.phl[213]";
connectAttr "Elbow_L_Ctrl_translateX.o" "Basic_testKnight_RIGRN.phl[214]";
connectAttr "Elbow_L_Ctrl_translateY.o" "Basic_testKnight_RIGRN.phl[215]";
connectAttr "Elbow_L_Ctrl_translateZ.o" "Basic_testKnight_RIGRN.phl[216]";
connectAttr "Elbow_L_Ctrl_scaleX.o" "Basic_testKnight_RIGRN.phl[217]";
connectAttr "Elbow_L_Ctrl_scaleY.o" "Basic_testKnight_RIGRN.phl[218]";
connectAttr "Elbow_L_Ctrl_scaleZ.o" "Basic_testKnight_RIGRN.phl[219]";
connectAttr "skinCluster15.og[0]" "polySurfaceShape2.i";
connectAttr "groupId39.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "skinCluster15GroupId.id" "polySurfaceShape2.iog.og[1].gid";
connectAttr "skinCluster15Set.mwc" "polySurfaceShape2.iog.og[1].gco";
connectAttr "groupId41.id" "polySurfaceShape2.iog.og[2].gid";
connectAttr "tweakSet15.mwc" "polySurfaceShape2.iog.og[2].gco";
connectAttr "tweak15.vl[0].vt[0]" "polySurfaceShape2.twl";
connectAttr "skinCluster14.og[0]" "polySurfaceShape4.i";
connectAttr "groupId36.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "skinCluster14GroupId.id" "polySurfaceShape4.iog.og[1].gid";
connectAttr "skinCluster14Set.mwc" "polySurfaceShape4.iog.og[1].gco";
connectAttr "groupId38.id" "polySurfaceShape4.iog.og[2].gid";
connectAttr "tweakSet14.mwc" "polySurfaceShape4.iog.og[2].gco";
connectAttr "tweak14.vl[0].vt[0]" "polySurfaceShape4.twl";
connectAttr "skinCluster12GroupId.id" "Ankle_LShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster12Set.mwc" "Ankle_LShapeDeformed.iog.og[0].gco";
connectAttr "groupId30.id" "Ankle_LShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "Ankle_LShapeDeformed.iog.og[1].gco";
connectAttr "groupId31.id" "Ankle_LShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Ankle_LShapeDeformed.iog.og[2].gco";
connectAttr "groupParts31.og" "Ankle_LShapeDeformed.i";
connectAttr "tweak12.vl[0].vt[0]" "Ankle_LShapeDeformed.twl";
connectAttr "skinCluster10GroupId.id" "Ankle_RShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster10Set.mwc" "Ankle_RShapeDeformed.iog.og[0].gco";
connectAttr "groupId24.id" "Ankle_RShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "Ankle_RShapeDeformed.iog.og[1].gco";
connectAttr "groupId25.id" "Ankle_RShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Ankle_RShapeDeformed.iog.og[2].gco";
connectAttr "groupParts25.og" "Ankle_RShapeDeformed.i";
connectAttr "tweak10.vl[0].vt[0]" "Ankle_RShapeDeformed.twl";
connectAttr "skinCluster13GroupId.id" "Thigh_LShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster13Set.mwc" "Thigh_LShapeDeformed.iog.og[0].gco";
connectAttr "groupId33.id" "Thigh_LShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet13.mwc" "Thigh_LShapeDeformed.iog.og[1].gco";
connectAttr "groupId34.id" "Thigh_LShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Thigh_LShapeDeformed.iog.og[2].gco";
connectAttr "groupParts34.og" "Thigh_LShapeDeformed.i";
connectAttr "tweak13.vl[0].vt[0]" "Thigh_LShapeDeformed.twl";
connectAttr "skinCluster11GroupId.id" "Thigh_RShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster11Set.mwc" "Thigh_RShapeDeformed.iog.og[0].gco";
connectAttr "groupId27.id" "Thigh_RShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "Thigh_RShapeDeformed.iog.og[1].gco";
connectAttr "groupId28.id" "Thigh_RShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Thigh_RShapeDeformed.iog.og[2].gco";
connectAttr "groupParts28.og" "Thigh_RShapeDeformed.i";
connectAttr "tweak11.vl[0].vt[0]" "Thigh_RShapeDeformed.twl";
connectAttr "skinCluster4GroupId.id" "Shoulder_LShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster4Set.mwc" "Shoulder_LShapeDeformed.iog.og[0].gco";
connectAttr "groupId10.id" "Shoulder_LShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "Shoulder_LShapeDeformed.iog.og[1].gco";
connectAttr "groupId11.id" "Shoulder_LShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Shoulder_LShapeDeformed.iog.og[2].gco";
connectAttr "groupParts11.og" "Shoulder_LShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "Shoulder_LShapeDeformed.twl";
connectAttr "skinCluster2GroupId.id" "Shoulder_RShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "Shoulder_RShapeDeformed.iog.og[0].gco";
connectAttr "groupId4.id" "Shoulder_RShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "Shoulder_RShapeDeformed.iog.og[1].gco";
connectAttr "groupId5.id" "Shoulder_RShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Shoulder_RShapeDeformed.iog.og[2].gco";
connectAttr "groupParts5.og" "Shoulder_RShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "Shoulder_RShapeDeformed.twl";
connectAttr "skinCluster5GroupId.id" "Forearm_LShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster5Set.mwc" "Forearm_LShapeDeformed.iog.og[0].gco";
connectAttr "groupId13.id" "Forearm_LShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "Forearm_LShapeDeformed.iog.og[1].gco";
connectAttr "groupId14.id" "Forearm_LShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Forearm_LShapeDeformed.iog.og[2].gco";
connectAttr "groupParts14.og" "Forearm_LShapeDeformed.i";
connectAttr "tweak5.vl[0].vt[0]" "Forearm_LShapeDeformed.twl";
connectAttr "skinCluster3GroupId.id" "Forearm_RShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "Forearm_RShapeDeformed.iog.og[0].gco";
connectAttr "groupId7.id" "Forearm_RShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "Forearm_RShapeDeformed.iog.og[1].gco";
connectAttr "groupId8.id" "Forearm_RShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "Forearm_RShapeDeformed.iog.og[2].gco";
connectAttr "groupParts8.og" "Forearm_RShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "Forearm_RShapeDeformed.twl";
connectAttr "skinCluster6GroupId.id" "TorsoShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster6Set.mwc" "TorsoShapeDeformed.iog.og[0].gco";
connectAttr "groupId16.id" "TorsoShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "TorsoShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster6.og[0]" "TorsoShapeDeformed.i";
connectAttr "tweak6.vl[0].vt[0]" "TorsoShapeDeformed.twl";
connectAttr "skinCluster1GroupId.id" "HeadShapeDeformed.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "HeadShapeDeformed.iog.og[2].gco";
connectAttr "groupId2.id" "HeadShapeDeformed.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "HeadShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "HeadShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "HeadShapeDeformed.twl";
connectAttr "skinCluster7GroupId.id" "WaistShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster7Set.mwc" "WaistShapeDeformed.iog.og[0].gco";
connectAttr "groupId18.id" "WaistShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "WaistShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster7.og[0]" "WaistShapeDeformed.i";
connectAttr "tweak7.vl[0].vt[0]" "WaistShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Basic_testKnight_MESHRNfosterParent1.msg" "Basic_testKnight_MESHRN.fp"
		;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "HeadShapeDeformed.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "HeadShapeDeformed.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "Shoulder_RShapeDeformed.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "Shoulder_RShapeDeformed.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "skinCluster2.og[0]" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster3.bp";
connectAttr "groupParts7.og" "tweak3.ip[0].ig";
connectAttr "groupId7.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "Forearm_RShapeDeformed.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId7.msg" "tweakSet3.gn" -na;
connectAttr "Forearm_RShapeDeformed.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[5]" "bindPose3.p[6]";
connectAttr "skinCluster3.og[0]" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "bindPose4.msg" "skinCluster4.bp";
connectAttr "groupParts10.og" "tweak4.ip[0].ig";
connectAttr "groupId10.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "Shoulder_LShapeDeformed.iog.og[0]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet4.gn" -na;
connectAttr "Shoulder_LShapeDeformed.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "bindPose4.m[1]" "bindPose4.p[2]";
connectAttr "bindPose4.m[2]" "bindPose4.p[3]";
connectAttr "bindPose4.m[3]" "bindPose4.p[4]";
connectAttr "bindPose4.m[4]" "bindPose4.p[5]";
connectAttr "skinCluster4.og[0]" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster5.bp";
connectAttr "groupParts13.og" "tweak5.ip[0].ig";
connectAttr "groupId13.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "Forearm_LShapeDeformed.iog.og[0]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId13.msg" "tweakSet5.gn" -na;
connectAttr "Forearm_LShapeDeformed.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[3]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "skinCluster5.og[0]" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster6.bp";
connectAttr "groupParts16.og" "tweak6.ip[0].ig";
connectAttr "groupId16.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "TorsoShapeDeformed.iog.og[0]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId16.msg" "tweakSet6.gn" -na;
connectAttr "TorsoShapeDeformed.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster7.bp";
connectAttr "groupParts18.og" "tweak7.ip[0].ig";
connectAttr "groupId18.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "WaistShapeDeformed.iog.og[0]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet7.gn" -na;
connectAttr "WaistShapeDeformed.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "bindPose8.msg" "skinCluster10.bp";
connectAttr "groupParts24.og" "tweak10.ip[0].ig";
connectAttr "groupId24.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "Ankle_RShapeDeformed.iog.og[0]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId24.msg" "tweakSet10.gn" -na;
connectAttr "Ankle_RShapeDeformed.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "bindPose8.w" "bindPose8.p[0]";
connectAttr "bindPose8.m[0]" "bindPose8.p[1]";
connectAttr "bindPose8.m[1]" "bindPose8.p[2]";
connectAttr "bindPose8.m[2]" "bindPose8.p[3]";
connectAttr "skinCluster10.og[0]" "groupParts25.ig";
connectAttr "groupId25.id" "groupParts25.gi";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "bindPose8.msg" "skinCluster11.bp";
connectAttr "groupParts27.og" "tweak11.ip[0].ig";
connectAttr "groupId27.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "Thigh_RShapeDeformed.iog.og[0]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId27.msg" "tweakSet11.gn" -na;
connectAttr "Thigh_RShapeDeformed.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "groupId27.id" "groupParts27.gi";
connectAttr "skinCluster11.og[0]" "groupParts28.ig";
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "bindPose9.msg" "skinCluster12.bp";
connectAttr "groupParts30.og" "tweak12.ip[0].ig";
connectAttr "groupId30.id" "tweak12.ip[0].gi";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "Ankle_LShapeDeformed.iog.og[0]" "skinCluster12Set.dsm" -na;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet12.gn" -na;
connectAttr "Ankle_LShapeDeformed.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "bindPose9.w" "bindPose9.p[0]";
connectAttr "bindPose9.m[0]" "bindPose9.p[1]";
connectAttr "bindPose9.m[1]" "bindPose9.p[2]";
connectAttr "bindPose9.m[2]" "bindPose9.p[3]";
connectAttr "skinCluster12.og[0]" "groupParts31.ig";
connectAttr "groupId31.id" "groupParts31.gi";
connectAttr "skinCluster13GroupParts.og" "skinCluster13.ip[0].ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13.ip[0].gi";
connectAttr "bindPose9.msg" "skinCluster13.bp";
connectAttr "groupParts33.og" "tweak13.ip[0].ig";
connectAttr "groupId33.id" "tweak13.ip[0].gi";
connectAttr "skinCluster13GroupId.msg" "skinCluster13Set.gn" -na;
connectAttr "Thigh_LShapeDeformed.iog.og[0]" "skinCluster13Set.dsm" -na;
connectAttr "skinCluster13.msg" "skinCluster13Set.ub[0]";
connectAttr "tweak13.og[0]" "skinCluster13GroupParts.ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13GroupParts.gi";
connectAttr "groupId33.msg" "tweakSet13.gn" -na;
connectAttr "Thigh_LShapeDeformed.iog.og[1]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "groupId33.id" "groupParts33.gi";
connectAttr "skinCluster13.og[0]" "groupParts34.ig";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "skinCluster14GroupParts.og" "skinCluster14.ip[0].ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14.ip[0].gi";
connectAttr "bindPose10.msg" "skinCluster14.bp";
connectAttr "polySurfaceShape4Orig.w" "groupParts35.ig";
connectAttr "groupId36.id" "groupParts35.gi";
connectAttr "groupParts37.og" "tweak14.ip[0].ig";
connectAttr "groupId38.id" "tweak14.ip[0].gi";
connectAttr "skinCluster14GroupId.msg" "skinCluster14Set.gn" -na;
connectAttr "polySurfaceShape4.iog.og[1]" "skinCluster14Set.dsm" -na;
connectAttr "skinCluster14.msg" "skinCluster14Set.ub[0]";
connectAttr "tweak14.og[0]" "skinCluster14GroupParts.ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet14.gn" -na;
connectAttr "polySurfaceShape4.iog.og[2]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "groupParts35.og" "groupParts37.ig";
connectAttr "groupId38.id" "groupParts37.gi";
connectAttr "bindPose10.w" "bindPose10.p[0]";
connectAttr "bindPose10.m[0]" "bindPose10.p[1]";
connectAttr "bindPose10.m[1]" "bindPose10.p[2]";
connectAttr "bindPose10.m[2]" "bindPose10.p[3]";
connectAttr "bindPose10.m[3]" "bindPose10.p[4]";
connectAttr "bindPose10.m[4]" "bindPose10.p[5]";
connectAttr "bindPose10.m[5]" "bindPose10.p[6]";
connectAttr "bindPose10.m[6]" "bindPose10.p[7]";
connectAttr "skinCluster15GroupParts.og" "skinCluster15.ip[0].ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15.ip[0].gi";
connectAttr "bindPose11.msg" "skinCluster15.bp";
connectAttr "polySurfaceShape2Orig.w" "groupParts38.ig";
connectAttr "groupId39.id" "groupParts38.gi";
connectAttr "groupParts40.og" "tweak15.ip[0].ig";
connectAttr "groupId41.id" "tweak15.ip[0].gi";
connectAttr "skinCluster15GroupId.msg" "skinCluster15Set.gn" -na;
connectAttr "polySurfaceShape2.iog.og[1]" "skinCluster15Set.dsm" -na;
connectAttr "skinCluster15.msg" "skinCluster15Set.ub[0]";
connectAttr "tweak15.og[0]" "skinCluster15GroupParts.ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15GroupParts.gi";
connectAttr "groupId41.msg" "tweakSet15.gn" -na;
connectAttr "polySurfaceShape2.iog.og[2]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "groupParts38.og" "groupParts40.ig";
connectAttr "groupId41.id" "groupParts40.gi";
connectAttr "bindPose11.w" "bindPose11.p[0]";
connectAttr "bindPose11.m[0]" "bindPose11.p[1]";
connectAttr "bindPose11.m[1]" "bindPose11.p[2]";
connectAttr "bindPose11.m[2]" "bindPose11.p[3]";
connectAttr "bindPose11.m[3]" "bindPose11.p[4]";
connectAttr "bindPose11.m[4]" "bindPose11.p[5]";
connectAttr "bindPose11.m[5]" "bindPose11.p[6]";
connectAttr "bindPose11.m[6]" "bindPose11.p[7]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "HeadShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Shoulder_RShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "Forearm_RShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "Shoulder_LShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "Forearm_LShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "TorsoShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WaistShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ankle_RShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "Thigh_RShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "Ankle_LShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "Thigh_LShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
// End of Knight_Idle_v02.ma
