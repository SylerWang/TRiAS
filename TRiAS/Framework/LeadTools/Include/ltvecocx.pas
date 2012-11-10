unit LTVECOCX;
interface

const

{$I LEADLock.pas}

   {VectorPolygonModeConstants}
   VECTOR_POLYGON_POINT      = 0; { Draw only the edges points on polygons and lines. }
   VECTOR_POLYGON_LINE       = 1; { Draw as wifeframe. }
   VECTOR_POLYGON_FILL       = 2; { Draw solid polygons. }

   {VectorEngineConstants;}
   VECTOR_ENGINE_GDI         = 0;
   VECTOR_ENGINE_OPENGL      = 1;
   VECTOR_ENGINE_DIRECTX     = 2;

   {ViewModeConstants}
   VECTOR_VIEWMODE_FIT       = 0;
   VECTOR_VIEWMODE_SNAP      = 1;

   {VectorObjectFlags}
   VECTOR_ALL_OBJECTS        = $01;
   VECTOR_SELECTED_OBJECTS   = $02;
   VECTOR_CURRENT_OBJECT     = $04;

   {VectorDlgFlags}
   VECTOR_DLG_AUTOPROCESS    = $80000000;
   VECTOR_DLG_SHOWPREVIEW    = $40000000;

   {VertexBindModeConstants}
   VECTOR_BIND_VERTICES      = 0;
   VECTOR_UNBIND_VERTICES    = 1;

   {VectorDlgStringConstants}
   { generic control strings }
   VECTOR_STRING_OKSTR              = 0;
   VECTOR_STRING_CANCELSTR          = 1;
   VECTOR_STRING_HELPSTR            = 2;
   VECTOR_STRING_PREVIEWSTR         = 3;
   { 3D Options Dialog }
   VECTOR_STRING_OPT3DCAPTION       = 4;
   VECTOR_STRING_LIGHTSFRAME        = 5;
   VECTOR_STRING_USELIGHTS          = 6;
   VECTOR_STRING_AMBIENTLIGHT       = 7;
   VECTOR_STRING_POLYGONMODEFRAME   = 8;
   VECTOR_STRING_POINTSMODE         = 9;
   VECTOR_STRING_LINESMODE          = 10;
   VECTOR_STRING_FILLEDMODE         = 11;
   { Scale, Rotate, Translate, and Camera Dialog }
   VECTOR_STRING_SCALECAPTION       = 12;
   VECTOR_STRING_ROTATECAPTION      = 13;
   VECTOR_STRING_TRANSLATECAPTION   = 14;
   VECTOR_STRING_CAMERACAPTION      = 15;
   { Common }
   VECTOR_STRING_XUP                = 16;
   VECTOR_STRING_XDOWN              = 17;
   VECTOR_STRING_YUP                = 18;
   VECTOR_STRING_YDOWN              = 19;
   VECTOR_STRING_ZUP                = 20;
   VECTOR_STRING_ZDOWN              = 21;
   { Scale Dlg specific }
   VECTOR_STRING_CHANGEALL          = 22;
   { Camera Dlg specific }
   VECTOR_STRING_THETAUP            = 23;
   VECTOR_STRING_THETADOWN          = 24;
   VECTOR_STRING_PHIUP              = 25;
   VECTOR_STRING_PHIDOWN            = 26;
   VECTOR_STRING_ZOOMUP             = 27;
   VECTOR_STRING_ZOOMDOWN           = 28;

   VECTOR_STRING_MAX                = 29;

   {VectorEventConstants}
   VECTOREVENT_USER = 0;
   VECTOREVENT_RESRVED = 10000;

   VECTOREVENT_FREE = 10001;
   VECTOREVENT_EMPTY = 10002;
   VECTOREVENT_COPY = 10003;
   VECTOREVENT_VIEWPORT = 10004;
   VECTOREVENT_PAN = 10005;
   VECTOREVENT_LOCKED = 10006;
   VECTOREVENT_BACKGROUND = 10007;
   VECTOREVENT_PALETTE = 10008;
   VECTOREVENT_VIEWMODE = 10009;

   VECTOREVENT_TRANSLATION = 10010;
   VECTOREVENT_ROTATION = 10011;
   VECTOREVENT_SCALE = 10012;
   VECTOREVENT_ORIGIN = 10013;
   VECTOREVENT_APPLYTRANSFORMATION = 10014;

   VECTOREVENT_BINDVERTICESMODE = 10015;
   VECTOREVENT_PARALLELOGRAM = 10016;

   VECTOREVENT_CAMERA = 10017;

   VECTOREVENT_METAFILE = 10018;

   VECTOREVENT_ATTACHTOWINDOW = 10019;

   VECTOREVENT_MARKER = 10020;

   VECTOREVENT_HITTEST = 10021;

   VECTOREVENT_POLYGONMODE = 10022;
   VECTOREVENT_USELIGHTS = 10023;
   VECTOREVENT_AMBIENTCOLOR = 10024;

   VECTOREVENT_COPYFROMCLIPBOARD = 10025;

   VECTOREVENT_ADDLAYER = 10026;
   VECTOREVENT_DELETELAYER = 10027;
   VECTOREVENT_EMPTYLAYER = 10028;
   VECTOREVENT_COPYLAYER = 10029;
   VECTOREVENT_SETLAYER = 10030;
   VECTOREVENT_SETACTIVELAYER = 10031;

   VECTOREVENT_ADDOBJECT = 10032;
   VECTOREVENT_DELETEOBJECT = 10033;
   VECTOREVENT_COPYOBJECT = 10034;
   VECTOREVENT_SETOBJECT = 10035;
   VECTOREVENT_EXPLODEOBJECT = 10036;
   VECTOREVENT_SELECTOBJECT = 10037;
   VECTOREVENT_OBJECTATTRIBUTES = 10038;

   VECTOREVENT_DUMPLOADVECTOR = 10039;

   VECTOREVENT_LOADFILE = 40;

   {VectorEventStatusConstants}
   VECTOREVENT_STATUS_BEFORE = 0;
   VECTOREVENT_STATUS_AFTER  = 1;

   {VectorFlags}
   VECTOR_FLAGS_SELECTED_ONLY           = 1;
   VECTOR_FLAGS_REPLACE                 = 2;
   VECTOR_FLAGS_RENAME_DUPLICATES       = 4;
   VECTOR_FLAGS_COPY_INTO_ACTIVE_LAYER  = 64;
   VECTOR_FLAGS_COPY_LAYERS_ONLY        = 128;
   VECTOR_FLAGS_ADD_UNDO_NODE           = 256;

   {VectorCloneFlags}
   VECTOR_CLONE_USE_PEN    = 1;
   VECTOR_CLONE_USE_BRUSH  = 2;

implementation
end.
