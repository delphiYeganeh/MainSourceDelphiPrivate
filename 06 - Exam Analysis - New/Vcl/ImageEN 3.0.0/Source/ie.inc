// ie.inc

{.$define IEDEBUG}
{.$define IEPROFILE}

{$A+}
{$T-}
{$B-}
{$R-}
{$Q-}

//////////////////////////////////////////////////////////////
// Specify the modules to include
//////////////////////////////////////////////////////////////

// support for Jpeg2000
{$define IEINCLUDEJPEG2000}

// support for PNG  (requires IEINCLUDEZLIB under Delphi)
{$define IEINCLUDEPNG}

// ZLib support
{$define IEINCLUDEZLIB}

// support for VFW video capture (TImageEnVideoCap and TImageEnVideoView)
{$define IEINCLUDEVIDEOCAPTURE}

// support for multi view/thumbnails (TImageEnMIO and TImageEnMView)
{$define IEINCLUDEMULTIVIEW}

// support for TWain acquisition
{$define IEINCLUDETWAIN}

// support for database components (TImageEnDBVect and TImageEnDBView)
{$define IEINCLUDEDB}

// support for TImageEn component
{$define IEINCLUDETIMAGEEN}

// support for image processing dialog
{$define IEINCLUDEDIALOGIP}

// support for input/output dialog (button "Advanced" in save dialog)
{$define IEINCLUDEDIALOGIO}

// support for open/save dialogs
{$define IEINCLUDEOPENSAVEDIALOGS}

// support for print dialogs
{$define IEINCLUDEPRINTDIALOGS}

// WIA support (requires IEINCLUDETWAIN)
{$define IEINCLUDEWIA}

// DirectShow support (requires IEINCLUDEWIA)
{$define IEINCLUDEDIRECTSHOW}

// Includes Color Management System (CMS)
{.$define IEINCLUDECMS}

// Includes extra transitions
{$define IEINCLUDEEXTRATRANSITIONS}

// Includes preset images
{$define IEINCLUDEPRESETIMAGES}

// Includes raw formats
{$define IEINCLUDERAWFORMATS}

// register QuickReport ImageEn components
{.$define IEREGISTERQR}

// Use TIEBufferedReadStream instead of TStream to read files
{$define IEUSEBUFFEREDSTREAM}

// Include TIENeurNet class
{.$define IEINCLUDENEURALNET}

// Support for DICOM file format
{$define IEINCLUDEDICOM}

//////////////////////////////////////////////////////////////
// conditional modules
//////////////////////////////////////////////////////////////

{$ifndef IEINCLUDEPNG}
  {$undef IEINCLUDEPRESETIMAGES}
  {$undef IEINCLUDEZLIB}
{$endif}

{$ifndef IEINCLUDEZLIB}
  {$undef IEINCLUDEPNG}
{$endif}

//////////////////////////////////////////////////////////////
// supported languages
//////////////////////////////////////////////////////////////

{$define IESUPPORTENGLISH}				// English
{$define IESUPPORTITALIAN}				// Italian
{$define IESUPPORTGERMAN}				  // German
{$define IESUPPORTSPANISH}				// Spanish
{$define IESUPPORTFRENCH}				  // French
{$define IESUPPORTPORTUGUESE}			// Portuguese
{$define IESUPPORTGREEK}				  // Greek
{$define IESUPPORTRUSSIAN}				// Russian
{$define IESUPPORTDUTCH}				  // Dutch
{$define IESUPPORTSWEDISH}				// Swedish
{$define IESUPPORTPOLISH}				  // Polish
{$define IESUPPORTJAPANESE}       // Japanese
{$define IESUPPORTCZECH}          // Czech
{$define IESUPPORTFINNISH}        // Finnish
{$define IESUPPORTFARSI}          // Farsi
{$define IESUPPORTCHINESE}        // Chinese and Chinese Traditional
{$define IESUPPORTDANISH}         // Danish
{$define IESUPPORTUSER}					  // User--

//////////////////////////////////////////////////////////////
// components behavior
//////////////////////////////////////////////////////////////

{$define IESINGLE_CLICK_SELECTION_REMOVE}	// single click out of a selection
{$define IETWAINTASKWINDOWS}					    // enhances TWain compatibility
{.$define IEREGISTERTPICTUREFORMATS}		  // register ImageEn file formats in the VCL

//////////////////////////////////////////////////////////////
// detect Borland compiler version
//////////////////////////////////////////////////////////////

// IEDCPPBUILDER = C++Builder (3,4,5,6...)
// IEDC3 = Delphi 3 or C++Builder 3
// IEDELPHI3 = Delphi 3
// IECPPBUILDER3 = C++Builder 3
// IEDC4 = Delphi 4 or C++Builder 4
// IEDELPHI4 = Delphi 4
// IECPPBUILDER4 = C++Builder 4
// IEDC5 = Delphi 5 or C++Builder 5
// IEDELPHI5 = Delphi 5
// IECPPBUILDER5 = C++Builder 5
// IEDC6 = Delphi 6 or C++Builder 6
// IEDELPHI6 = Delphi 6
// IECPPBUILDER6 = C++Builder 6
// IEDC7 = Delphi 7 or C++Builder 7 (??)
// IEDELPHI7 = Delphi 7
// IEKYLIX = Kylix 1,2,3
// IEDELPHI = Delphi or C++Builder
// IEDELPHI9 = Delphi 2005
// IEDELPHI10 = Delphi 2006
// IEDELPHI11 = Delphi 2007

// Delphi 3
{$ifdef VER100}
  {$define IEDC3}
  {$define IEDELPHI3}
  {$define IEHASTHREADSBUG}
  {$define IEOLDSEEKDEF}
  {$ifndef WIN32}
    {$define WIN32}
  {$endif}
{$endif}

// C++Builder 3
{$ifdef VER110}
  {$define IEDC3}
  {$define IECPPBUILDER3}
  {$define IECPPBUILDER}
  {$define IEHASTHREADSBUG}
  {$define IEOLDSEEKDEF}
  {$ObjExportAll On}
  {$ifndef WIN32}
    {$define WIN32}
  {$endif}
{$endif}

// Delphi 4
{$ifdef VER120}
  {$define IEDC4}
  {$define IEDELPHI4}
  {$define IEFIXPREVIEWS}
  {$define IESUPPORTDEFPARAMS}
  {$define IEHASINT64}
  {$define IEHASTHREADSBUG}
  {$define IEOLDSEEKDEF}
  {$ifndef WIN32}
    {$define WIN32}
  {$endif}
{$endif}

// C++Builder 4
{$ifdef VER125}
  {$define IEDC4}
  {$define IECPPBUILDER4}
  {$define IECPPBUILDER}
  {$ObjExportAll On}
  {$define IEFIXPREVIEWS}
  {$define IESUPPORTDEFPARAMS}
  {$define IEHASINT64}
  {$define IEHASTHREADSBUG}
  {$define IEOLDSEEKDEF}
  {$ifndef WIN32}
    {$define WIN32}
  {$endif}
{$endif}

// C++Builder 5 or Delphi 5
{$ifdef VER130}
  {$define IEDC5}
  {$ifdef VER130BCB}
    {$define IECPPBUILDER5}
    {$define IECPPBUILDER}
    {$ObjExportAll On}
  {$else}
    {$define IEDELPHI5}
  {$endif}
  {$define IEHASINT64}
  {$define IEFIXPREVIEWS}
  {$define IEFIXUPDATE}
  {$define IESUPPORTDEFPARAMS}
  {$define IESUPPORTANCHORS}
  {$define IEMOUSEWHEELEVENTS}
  {$define IEINCLUDEFLATSB}         // Use FlatSB unit
  {$define IESUPPORTOVERLOAD}
  {$define IEHASTHREADSBUG}
  {$define IEHASFREEANDNIL}
  {$define IEOLDSEEKDEF}
  {$ifndef WIN32}
    {$define WIN32}
  {$endif}
{$endif}

// C++Builder 6 or Delphi 6
{$ifdef VER140}
  {$define IEDC6}
  {$ifdef VER140BCB}
    {$define IECPPBUILDER6}
    {$define IECPPBUILDER}
    {$ObjExportAll On}
  {$else}
    {$define IEDELPHI6}
    {$define IEFIXDESIGNINT}
  {$endif}
  {$define IEHASINT64}
  {$define IEFIXPREVIEWS}
  {$define IEFIXUPDATE}
  {$define IEFIXOSDIALOGS}
  {$define IESUPPORTDEFPARAMS}
  {$define IESUPPORTANCHORS}
  {$define IEMOUSEWHEELEVENTS}
  {$define IEINCLUDEFLATSB}         // Use FlatSB unit
  {$define IESUPPORTOVERLOAD}
  {$define IENEWVARIANTS}
  {$define IEHASFREEANDNIL}
  {$define IEMMXSUPPORTED}
  {$ifndef WIN32}
    {$define WIN32}
  {$endif}
{$endif}

// Delphi 7
{$ifdef VER150}
  {$define IEDC7}
  {$define IEDELPHI7}
  {$define IEFIXPREVIEWS}
  {$define IEFIXUPDATE}
  {$define IEFIXOSDIALOGS}
  {$define IEFIXDESIGNINT}
  {$define IESUPPORTDEFPARAMS}
  {$define IESUPPORTANCHORS}
  {$define IEMOUSEWHEELEVENTS}
  {$define IEHASINT64}
  {$define IEINCLUDEFLATSB}     // Use FlatSB unit
  {$define IESUPPORTOVERLOAD}
  {$define IENEWVARIANTS}
  {$define IEHASFREEANDNIL}
  {$define IEMMXSUPPORTED}
{$endif}

// Delphi 2005
{$ifdef VER170}
  {$define IEDC9}
  {$define IEDELPHI9}
  {$define IEFIXPREVIEWS}
  {$define IEFIXUPDATE}
  {$define IEFIXOSDIALOGS}
  {$define IEFIXDESIGNINT}
  {$define IESUPPORTDEFPARAMS}
  {$define IESUPPORTANCHORS}
  {$define IEMOUSEWHEELEVENTS}
  {$define IEHASINT64}
  {$define IEINCLUDEFLATSB}     // Use FlatSB unit
  {$define IESUPPORTINLINE}
  {$define IESUPPORTOVERLOAD}
  {$define IENEWVARIANTS}
  {$define IEHASFREEANDNIL}
  {$define IEMMXSUPPORTED}
{$endif}

// C++Builder 2006 or Delphi 2006
{$ifdef VER180}
  {$ifndef VER185}
    {$define IEDC10}
    {$ifdef BCB}
      {$define IECPPBUILDER10}
      {$define IECPPBUILDER}
      {$ObjExportAll On}
    {$else}
      {$define IEDELPHI10}
      {$define IEFIXDESIGNINT}
    {$endif}
    {$define IEFIXPREVIEWS}
    {$define IEFIXUPDATE}
    {$define IEFIXOSDIALOGS}
    {$define IESUPPORTDEFPARAMS}
    {$define IESUPPORTANCHORS}
    {$define IEMOUSEWHEELEVENTS}
    {$define IEHASINT64}
    {$define IEINCLUDEFLATSB}     // Use FlatSB unit
    {$define IESUPPORTINLINE}
    {$define IESUPPORTOVERLOAD}
    {$define IENEWVARIANTS}
    {$define IEHASFREEANDNIL}
    {$define IEMMXSUPPORTED}
  {$endif}
{$endif}

// Delphi 2007 or C++Builder 2007
{$ifdef VER185}
  {$define IEDC11}
  {$ifdef BCB}
    {$define IECPPBUILDER11}
    {$define IECPPBUILDER}
    {$ObjExportAll On}
  {$else}
    {$define IEDELPHI11}
    {$define IEFIXDESIGNINT}
  {$endif}
  {$define IEFIXPREVIEWS}
  {$define IEFIXUPDATE}
  {$define IEFIXOSDIALOGS}
  {$define IESUPPORTDEFPARAMS}
  {$define IESUPPORTANCHORS}
  {$define IEMOUSEWHEELEVENTS}
  {$define IEHASINT64}
  {$define IEINCLUDEFLATSB}     // Use FlatSB unit
  {$define IESUPPORTINLINE}
  {$define IESUPPORTOVERLOAD}
  {$define IENEWVARIANTS}
  {$define IEHASFREEANDNIL}
  {$define IEMMXSUPPORTED}
{$endif}


{$ifdef LINUX}
  {$define IEKYLIX}
  {$define IESUPPORTDEFPARAMS}
  {$define IESUPPORTOVERLOAD}
  {$define IEHASFREEANDNIL}
  {$undef WIN32}
{$else}
  {$define IEDELPHI}
{$endif}

// Free pascal support
{$ifdef FPC}
  {$undef IEDELPHI}
  {$define IESUPPORTDEFPARAMS}
  {$define IEHASINT64}
  {$define IESUPPORTINLINE}
  {$define IESUPPORTOVERLOAD}
  {$define IENEWVARIANTS}
  {$define IEHASFREEANDNIL}
{$endif}

//////////////////////////////////////////////////////////////
// under Linux we cannot implement following features
//////////////////////////////////////////////////////////////

{$ifdef IEKYLIX}
{$define IEINCLUDESANE}         // support for SANE (Linux scanner API)
{$undef IEINCLUDEJPEG2000}
{$undef IEINCLUDEVIDEOCAPTURE}
{$undef IEINCLUDEMULTIVIEW}
{$undef IEINCLUDETWAIN}
{$undef IEINCLUDEDB}
{$undef IEINCLUDETIMAGEEN}
{$undef IEINCLUDEDIALOGIP}
{$undef IEINCLUDEDIALOGIO}
{$undef IEINCLUDEOPENSAVEDIALOGS}
{$undef IEINCLUDEWIA}
{$undef IEINCLUDEDIRECTSHOW}
{$undef IEINCLUDEZLIB}
{$undef IEINCLUDEEXTRATRANSITIONS}
{$undef IEINCLUDEFLATSB}
{$endif}

//////////////////////////////////////////////////////////////
// disabled warnings
//////////////////////////////////////////////////////////////

{$ifdef IEDELPHI7}
  {$WARN SYMBOL_PLATFORM OFF}
  {$WARN UNIT_PLATFORM OFF}
{$endif}

//////////////////////////////////////////////////////////////
// Target selection
//////////////////////////////////////////////////////////////

{$ifdef IEDELPHI}
  // SPECIALS
  {.$define DEMOVERSION}
  {.$define OCXVERSION}
  {.$define IEDOTNETVERSION}
{$endif}

{$ifdef IEDOTNETVERSION}
  {$define OCXVERSION}
{$endif}

{$ifdef OCXVERSION}
  {$undef IEINCLUDEDB}
{$endif}



