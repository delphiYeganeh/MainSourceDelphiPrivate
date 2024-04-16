unit GX_OutlookReg;

{**************************************************************************
** GExpert Control Pack                                                  **
** Copyright 1998, 1999 GExperts Inc                                     **
**                                                                       **
** Taken over by Fe Software & Development during March of 2000.         **
** Copyright © 2000-2001 Fe Software & Development, All rights reserved. **
**                                                                       **
***************************************************************************}

{**************************************************************************
 * These controls are subject to the following license:                   *
 *  1) You may distribute apps that use these controls                    *
 *     royalty free.                                                      *
 *  2) You may NOT distribute these controls without the                  *
 *     the express written permission of Fe Software & Development        *
 **************************************************************************}


interface

uses
  Classes,
  {$IFDEF VER150}
  DesignIntf, DesignEditors,
  {$ELSE} {$IFDEF VER140}
  DesignIntf, DesignEditors,
  {$ELSE}
  dsgnintf,
  {$ENDIF} {$ENDIF}
  GX_Outlook, GX_OutlookProp, FeCapPnl;

procedure Register;

implementation

{$R GX_OUTLOOK.DCR}

procedure Register;
Begin
  RegisterComponents('Power Tools',[TFEGXOutlookbar]);
  RegisterComponentEditor(TFEGXOutlookbar,TGXOutlookEditor);
  RegisterComponents('Power Tools', [TFECaptionPanel]);
End;

end.
