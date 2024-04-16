{------------------------------------------------------------------------------}
{                                                                              }
{  Based on code from TCustomPicShow v3.07 (PSEffect.pas)                      }
{  by Kambiz R. Khojasteh                                                      }
{                                                                              }
{  kambiz@delphiarea.com                                                       }
{  http://www.delphiarea.com                                                   }
{                                                                              }
{  Thank you to Kambiz for allowing the use of his code in ImageEn             }
{                                                                              }
{  Code was modified for use in ImageEn 9 Nov. 2004                            }
{  by Nigel Cross                                                              }
{                                                                              }
{  nigel@xequte.com                                                            }
{  http://www.xequte.com                                                       }
{                                                                              }
{  XEQUTE CHANGES:                                                             }
{  - Change procedures to write to canvas rather than screen                   }
{  - Removed transitions that are duplicated in ImageEn or incompatible        }
{  - Renamed transitions to be more consistent with standards naming           }
{  - Changed order of transitions to match those in ImageEn                    }
{  - Added names for ImageEn transitions so all names can be retrieved via     }
{      the IETransitionList array                                              }
{  - Other changes required to integrate with ImageEn                          }
{                                                                              }
{                                                                              }  
{                                                                              }
{  Kambiz would also like to thank:                                            }
{  :: <k3nx@hotmail.com> for help on D5 support.                               }
{  :: Douglass Titjan <support@delphipages.com> for help on D5 support.        }
{  :: Jerry McLain <jkmclain@srcaccess.net> for manual control idea.           }
{  :: M. R. Zamani <M_R_Zamani@yahoo.com> for adding 8 effects (110..117).     }
{  :: Elliott Shevin <ShevinE@aol.com> for adding 4 effects (123..126).        }
{  :: Ken Otto <ken.otto@enviros.com> for adding native JPG support to         }
{     TDBPicShow and fixing a memory leak bug.                                 }
{  :: Gary Bond <gary.bond@tesco.net> for name of the transitions.             }
{  :: Viatcheslav V. Vassiliev <vvv@spacenet.ru> for optimizing the            }
{     thread's termination.                                                    }
{  :: Miguel Gastelumendi Dargent <mgd@satelier.com.br> for fixing the         }
{     possible off-screen problem on the first time transition.                }
{  :: Terry Bogard <voyage_technologies@yahoo.com> for fixing the bug in       }
{     choosing transition style by name.                                       }
{                                                                              }
{------------------------------------------------------------------------------}

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

{$IFDEF VER150}
  {$DEFINE DELPHI7}
  {$DEFINE DELPHI7_UP}
  {$DEFINE DELPHI6_UP}
  {$DEFINE DELPHI5_UP}
  {$DEFINE DELPHI4_UP}
  {$DEFINE DELPHI3_UP}
  {$DEFINE DELPHI2_UP}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$IFDEF VER140}
  {$DEFINE DELPHI6}
  {$DEFINE DELPHI6_UP}
  {$DEFINE DELPHI5_UP}
  {$DEFINE DELPHI4_UP}
  {$DEFINE DELPHI3_UP}
  {$DEFINE DELPHI2_UP}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$IFDEF VER130}
  {$DEFINE DELPHI5}
  {$DEFINE DELPHI5_UP}
  {$DEFINE DELPHI4_UP}
  {$DEFINE DELPHI3_UP}
  {$DEFINE DELPHI2_UP}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$IFDEF VER120}
  {$DEFINE DELPHI4}
  {$DEFINE DELPHI4_UP}
  {$DEFINE DELPHI3_UP}
  {$DEFINE DELPHI2_UP}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$IFDEF VER100}
  {$DEFINE DELPHI3}
  {$DEFINE DELPHI3_UP}
  {$DEFINE DELPHI2_UP}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$IFDEF VER90}
  {$DEFINE DELPHI2}
  {$DEFINE DELPHI2_UP}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$IFDEF VER80}
  {$DEFINE DELPHI1}
  {$DEFINE DELPHI1_UP}
{$ENDIF}

{$I ie.inc}

{$R-}

unit ieXtraTransitions;

interface

{$ifdef IEINCLUDEEXTRATRANSITIONS}

uses
  Windows, Messages, SysUtils, Classes, Graphics;

type
  TEffectProc = procedure(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
    Step: Integer; Progress: Integer);

procedure Effect001(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect002(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);  
procedure Effect003(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect004(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect007(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect008(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect009(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect010(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect011(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect012(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect013(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect014(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect015(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect016(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect017(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect018(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect019(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);    
procedure Effect020(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect021(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect024(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect025(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect026(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect027(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect028(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect029(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect030(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect031(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect032(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect033(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect034(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect035(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect036(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect037(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect038(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect043(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect044(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect045(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect046(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect047(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect048(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect049(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect050(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect051(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect055(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect056(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect057(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect058(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect059(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect060(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect061(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect062(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect063(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect064(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect065(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect066(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect067(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect068(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect069(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect070(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect071(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect072(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect073(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect074(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect075(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect076(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect077(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect078(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect079(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect080(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect081(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect082(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect083(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect084(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect085(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect086(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect087(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect088(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect089(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect090(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect091(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect092(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect093(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect094(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect095(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect096(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect097(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect098(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect099(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect100(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect101(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect102(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect103(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect104(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect105(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect106(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect107(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect108(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect109(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect110(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect111(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect112(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect113(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect114(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect115(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect116(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect117(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect123(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect124(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect125(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect126(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect128(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect129(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect130(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect131(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect132(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect133(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect134(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect135(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect136(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect137(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect138(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect139(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect140(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect141(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect142(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect143(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect144(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect145(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect146(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect147(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect148(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect149(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
procedure Effect150(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);

type
  TEffect = record
    Name: String;
    Proc: TEffectProc;
  end;

const
  {
  NOTE:
  - REMOVED ALL EFFECTS THAT ARE THE SAME AS THOSE ALREADY IN IMAGEEN
  - ALSO RE-ORDERED TO MAKE MORE CONISTENT WITH IMAGEEN
  }

  MAX_TRANSITIONS=163;

  IETransitionList: array[1..MAX_TRANSITIONS] of TEffect = (

  // ADD IMAGEEN TRANSITIONS TO OUR ARRAY SO ALL TRANSITION NAMES CAN BE ACCESSED

    (Name: 'Cross Fade';                                                Proc: nil),
    (Name: 'Fade Out';                                                  Proc: nil),
    (Name: 'Fade In';                                                   Proc: nil),
    (Name: 'Fade Out then In';                                          Proc: nil),
    (Name: 'Wipe Left to Right';                                        Proc: nil),
    (Name: 'Wipe Left to Right 2';                                      Proc: nil),
    (Name: 'Wipe Right to Left';                                        Proc: nil),
    (Name: 'Wipe Right to Left 2';                                      Proc: nil),
    (Name: 'Wipe Top to Bottom';                                        Proc: nil),
    (Name: 'Wipe Top to Bottom 2';                                      Proc: nil),
    (Name: 'Wipe Bottom to Top';                                        Proc: nil),
    (Name: 'Wipe Bottom to Top 2';                                      Proc: nil),
    (Name: 'Slide from Top Left';                                       Proc: nil),
    (Name: 'Slide from Top Right';                                      Proc: nil),
    (Name: 'Slide from Bottom Left';                                    Proc: nil),
    (Name: 'Slide from Bottom Right';                                   Proc: nil),
    (Name: 'Push Left to Right';                                        Proc: nil),
    (Name: 'Slide Out Left to Right';                                   Proc: nil),
    (Name: 'Push Right to Left';                                        Proc: nil),
    (Name: 'Slide Out Right to Left';                                   Proc: nil),
    (Name: 'Push Top to Bottom';                                        Proc: nil),
    (Name: 'Slide Out Top to Bottom';                                   Proc: nil),
    (Name: 'Push Bottom to Top';                                        Proc: nil),
    (Name: 'Slide Out Bottom to Top';                                   Proc: nil),
    (Name: 'Random Points';                                             Proc: nil),
    (Name: 'Random Boxes';                                              Proc: nil),
    (Name: 'Wipe Out from Center';                                      Proc: nil),
    (Name: 'Wipe In to Center';                                         Proc: nil),
    (Name: 'Expand Out from Center';                                    Proc: nil),
    (Name: 'Expand In to Center';                                       Proc: nil),

     // PS EFFECTS START
    (Name: 'Expand from Left';	                                        Proc: Effect002),
    (Name: 'Expand from Right';	                                        Proc: Effect001),

    (Name: 'Expand from Top';	                                        Proc: Effect019), 
    (Name: 'Expand from Bottom';	                                Proc: Effect018),
                                                                                         
    (Name: 'Expand from Top Left';	                                Proc: Effect037),
    (Name: 'Expand from Top Right';	                                Proc: Effect036),
    (Name: 'Expand from Bottom Left';	                                Proc: Effect038),
    (Name: 'Expand from Bottom Right';	                                Proc: Effect035),

    (Name: 'Expand in from Left';	                                Proc: Effect008),
    (Name: 'Expand in from Right';	                                Proc: Effect007),
    (Name: 'Expand in from Top';	                                Proc: Effect025),
    (Name: 'Expand in from Bottom';	                                Proc: Effect024),

    (Name: 'Expand in to Vertical Center';                              Proc: Effect009), 
    (Name: 'Expand in to Horizon';       	                        Proc: Effect026),

    (Name: 'Expand in from Sides';	                                Proc: Effect013),
    (Name: 'Expand in from Top and Bottom';	                        Proc: Effect030),
                                                                                           
    (Name: 'Expand out from Horizon';	                                Proc: Effect027),
    (Name: 'Expand out from Vertical Center';	                        Proc: Effect010),

    (Name: 'Wipe from Top Left';	                                Proc: Effect043),
    (Name: 'Wipe from Top Right';	                                Proc: Effect046),
    (Name: 'Wipe from Bottom Left';	                                Proc: Effect044),
    (Name: 'Wipe from Bottom Right';	                                Proc: Effect045),
                                                                                         
    (Name: 'Wipe from Horizon';	                                        Proc: Effect028),
    (Name: 'Wipe in from Sides';	                                Proc: Effect012),
    (Name: 'Wipe out from Vertical Center';	                        Proc: Effect011),

    (Name: 'Build up from Left';	                                Proc: Effect017),
    (Name: 'Build up from Right';	                                Proc: Effect016),
    (Name: 'Build up from Top';	                                        Proc: Effect034),
    (Name: 'Build up from Bottom';	                                Proc: Effect033),

    (Name: 'Unroll from Left';	                                        Proc: Effect014),
    (Name: 'Unroll from Right';	                                        Proc: Effect015),
    (Name: 'Unroll from Top';	                                        Proc: Effect031),
    (Name: 'Unroll from Bottom';	                                Proc: Effect032),
                                                                                           
    (Name: 'Slide in from Left';	                                Proc: Effect004),
    (Name: 'Slide in from Right';	                                Proc: Effect003),
    (Name: 'Slide in from Top';	                                        Proc: Effect021),
    (Name: 'Slide in from Bottom';                                      Proc: Effect020),
    (Name: 'Slide in from Top and Bottom';	                        Proc: Effect029),

    (Name: 'Shrink to Top Left';	                                Proc: Effect047),
    (Name: 'Shrink to Top Right';	                                Proc: Effect050),
    (Name: 'Shrink to Bottom Left';	                                Proc: Effect048),
    (Name: 'Shrink to Bottom Right';	                                Proc: Effect049),
    (Name: 'Shrink to Center';	                                        Proc: Effect051),

    (Name: 'Quarters Wipe in to Center';	                        Proc: Effect055),
    (Name: 'Quarters Expand to Center';	                                Proc: Effect056),
    (Name: 'Quarters Slide in to Center';	                        Proc: Effect057),

    (Name: 'Curved Wipe from Left';	                                Proc: Effect058),
    (Name: 'Curved Wipe from Right';	                                Proc: Effect059),
    (Name: 'Curved Wipe from Top';	                                Proc: Effect069),
    (Name: 'Curved Wipe from Bottom';	                                Proc: Effect070),

    (Name: 'Bars in from Left';	                                        Proc: Effect061),
    (Name: 'Bars in from Right';	                                Proc: Effect060),
    (Name: 'Bars from Top';	                                        Proc: Effect072),
    (Name: 'Bars from Bottom';	                                        Proc: Effect071),

    (Name: 'Bars Left then Right';	                                Proc: Effect062),
    (Name: 'Bars Right then Left';	                                Proc: Effect063),
    (Name: 'Bars Top then Bottom';	                                Proc: Effect073),
    (Name: 'Bars Bottom then Top';	                                Proc: Effect074),

    (Name: 'Bars from both Sides';	                                Proc: Effect064),
    (Name: 'Bars from Top and Bottom';	                                Proc: Effect075),

    (Name: 'Shredded from Left';	                                Proc: Effect066),
    (Name: 'Shredded from Right';	                                Proc: Effect065),
    (Name: 'Shredded from Top';	                                        Proc: Effect077),
    (Name: 'Shredded from Bottom';	                                Proc: Effect076),

    (Name: 'Shredded from Top and Left';	                        Proc: Effect103),
    (Name: 'Shredded from Top and Right';	                        Proc: Effect101),
    (Name: 'Shredded from Bottom and Left';	                        Proc: Effect102),
    (Name: 'Shredded from Bottom and Right';	                        Proc: Effect100),

    (Name: 'Shredded from Horizon and Left';	                        Proc: Effect105),
    (Name: 'Shredded from Horizon and Right';	                        Proc: Effect104),
    (Name: 'Shredded from Top and Vertical Center';	                Proc: Effect107),
    (Name: 'Shredded from Bottom and Vertical Center';	                Proc: Effect106),

    (Name: 'Shredded to Center';	                                Proc: Effect109),
    (Name: 'Shredded from Center';	                                Proc: Effect108),

    (Name: 'Shredded in to Horizon';	                                Proc: Effect079),
    (Name: 'Shredded in to Vertical Center';                            Proc: Effect068),
    (Name: 'Shredded out from Horizon';	                                Proc: Effect078),
    (Name: 'Shredded out from Vertical Center';                         Proc: Effect067),

    (Name: 'Rectangular Shred';                                         Proc: Effect142),
    (Name: 'Triangular Shred to Top Left';                              Proc: Effect117),

    (Name: 'Curved Wipe from Top Left';	                                Proc: Effect080),
    (Name: 'Curved Wipe from Top Right';	                        Proc: Effect081),
    (Name: 'Curved Wipe from Bottom Left';	                        Proc: Effect082),
    (Name: 'Curved Wipe from Bottom Right';	                        Proc: Effect083),

    (Name: 'Circular Wipe from Center';	                                Proc: Effect084),
    (Name: 'Circular Wipe to Center';	                                Proc: Effect085),

    (Name: 'Crisscross Wipe from Top Left';	                        Proc: Effect089),
    (Name: 'Crisscross Wipe from Top Right';	                        Proc: Effect087),
    (Name: 'Crisscross Wipe from Bottom Left';	                        Proc: Effect088),
    (Name: 'Crisscross Wipe from Bottom Right';	                        Proc: Effect086),

    (Name: 'Crisscross Wipe Bounce from Top Left';	                Proc: Effect090),
    (Name: 'Crisscross Wipe Bounce from Top Right';	                Proc: Effect092),
    (Name: 'Crisscross Wipe Bounce from Bottom Left';                   Proc: Effect091),
    (Name: 'Crisscross Wipe Bounce from Bottom Right';	                Proc: Effect093),

    (Name: 'Crisscross Wipe from Left Right and Top';	                Proc: Effect097),
    (Name: 'Crisscross Wipe from Left Right and Bottom';	        Proc: Effect096),
    (Name: 'Crisscross Wipe from Left Top and Bottom';	                Proc: Effect095),
    (Name: 'Crisscross Wipe from Top Left Right and Bottom';	        Proc: Effect098),
    (Name: 'Crisscross Wipe from Right Top and Bottom';	                Proc: Effect094),
    (Name: 'Crisscross Wipe from Bottom Left Top Right';	        Proc: Effect099),

    (Name: 'Wipe diagonal from Top Left';	                        Proc: Effect110),
    (Name: 'Wipe diagonal from Top Right';	                        Proc: Effect111),
    (Name: 'Wipe diagonal from Bottom Left';	                        Proc: Effect112),
    (Name: 'Wipe diagonal from Bottom Right';	                        Proc: Effect113),

    (Name: 'Diagonal Sweep Clockwise';                          	Proc: Effect115),
    (Name: 'Diagonal Sweep Counter-Clockwise';                      	Proc: Effect114),
    (Name: 'Sweep Clockwise';                                           Proc: Effect143),
    (Name: 'Sweep Counter-Clockwise';                                   Proc: Effect144),

    (Name: 'Starburst Clockwise from Center';	                        Proc: Effect116),
    (Name: 'Rotational Rectangle';                                      Proc: Effect149),
    (Name: 'Rotational Star';                                           Proc: Effect150),

    (Name: 'Speckled Wipe from Left';	                                Proc: Effect124),
    (Name: 'Speckled Wipe from Right';	                                Proc: Effect123),
    (Name: 'Speckled Wipe from Top';	                                Proc: Effect126),
    (Name: 'Speckled Wipe from Bottom';	                                Proc: Effect125),

    (Name: 'Push Left and Slide out';	                                Proc: Effect129),
    (Name: 'Push Right and Slide out';                                  Proc: Effect128),
    (Name: 'Push up and Slide out';	                                Proc: Effect133),
    (Name: 'Push down and Slide out';	                                Proc: Effect132),

    (Name: 'Push and Squeeze Left';                                     Proc: Effect131),
    (Name: 'Push and Squeeze Right';                                    Proc: Effect130),
    (Name: 'Push and Squeeze up';                                       Proc: Effect135),
    (Name: 'Push and Squeeze down';                                     Proc: Effect134),

    (Name: 'Horizontal Blinds';                                         Proc: Effect137),
    (Name: 'Vertical Blinds';                                           Proc: Effect136),

    (Name: 'Uneven Blinds from Left';                                   Proc: Effect138),
    (Name: 'Uneven Blinds from Right';                                  Proc: Effect139),
    (Name: 'Uneven Blinds from Top';	                                Proc: Effect140),
    (Name: 'Uneven Blinds from Bottom';                                 Proc: Effect141),

    (Name: 'Rectangles from the Left';                                  Proc: Effect145),
    (Name: 'Rectangles from the Right';                                 Proc: Effect146),
    (Name: 'Rectangles from the Top';                                   Proc: Effect147),
    (Name: 'Rectangles from the Bottom';                                Proc: Effect148)
    );


{ THE FOLLOWING EFFECTS WERE REMOVED, SEE RELEVANT PROCEDURE BELOW FOR REASON
    (Name: 'Wipe from Left';	                                        Proc: Effect005),
    (Name: 'Wipe from Right';	                                        Proc: Effect006),
    (Name: 'Wipe from Top';	                                        Proc: Effect022),
    (Name: 'Wipe from Bottom';	                                        Proc: Effect023),
    (Name: 'Slide in from Bottom Right';	                        Proc: Effect039),
    (Name: 'Slide in from Top Right';	                                Proc: Effect040),
    (Name: 'Slide in from Top Left';	                                Proc: Effect041),
    (Name: 'Slide in from Bottom Left';	                                Proc: Effect042), 
                                                                                         
    (Name: 'Expand out from centre';	                                Proc: Effect052),
    (Name: 'Wipe out from centre';	                                Proc: Effect053),
    (Name: 'Wipe in to centre';	                                        Proc: Effect054),
    (Name: 'Fade';	                                                Proc: Effect118),
    (Name: 'Pivot from Top Left';	                                Proc: Effect119),
    (Name: 'Pivot from Bottom Left';	                                Proc: Effect120),
    (Name: 'Pivot from Top Right';	                                Proc: Effect121),
    (Name: 'Pivot from Bottom Right';	                                Proc: Effect122),  
    (Name: 'Random squares appear';	                                Proc: Effect127),
}




procedure MirrorCopyRect(Canvas: TCanvas; dstRect: TRect; Bitmap: TBitmap; srcRect: TRect; Horz, Vert: Boolean);
procedure RotatePoints(var Points: array of TPoint; xOrg, yOrg: Integer; Angle: Extended);

{$endif}


implementation

{$ifdef IEINCLUDEEXTRATRANSITIONS}

uses imageenproc,hyieutils;

{$IFNDEF DELPHI4_UP}
type
  HRGN = THandle;
{$ENDIF}

(*
uses
  Math;
  *)


      
{ Global Functions }

procedure MirrorCopyRect(Canvas: TCanvas; dstRect: TRect;
  Bitmap: TBitmap; srcRect: TRect; Horz, Vert: Boolean);
var
  T: Integer;
begin
  IntersectRect(srcRect, srcRect, Rect(0, 0, Bitmap.Width, Bitmap.Height));
  if Horz then
  begin
    T := dstRect.Left;
    dstRect.Left := dstRect.Right+1;
    dstRect.Right := T-1;
  end;
  if Vert then
  begin
    T := dstRect.Top;
    dstRect.Top := dstRect.Bottom+1;
    dstRect.Bottom := T-1;
  end;
  SetStretchBltMode(Canvas.Handle, HALFTONE);
  StretchBlt(Canvas.Handle, dstRect.Left, dstRect.Top,
     dstRect.Right - dstRect.Left, dstRect.Bottom - dstRect.Top,
     Bitmap.Canvas.Handle, srcRect.Left, srcRect.Top,
     srcRect.Right - srcRect.Left, srcRect.Bottom - srcRect.Top, SRCCOPY);
end;

{NO LONGER REQUIRED AS ONLY USED FOR FADE EFFECT, WHICH IMAGEEN ALREADY HAS
// Both bitmaps must be equal size and 32 bit format.
procedure MergeTransparent(dstBitmap, srcBitmap: TBitmap; Transparency: Integer);
var
  dstPixel, srcPixel: PRGBQuad;
  InvertTransparency: Integer;
  bmpWidth, bmpHeight: Integer;
  x, y: Integer;
begin
  bmpWidth := srcBitmap.Width;
  bmpHeight := srcBitmap.Height;
  InvertTransparency := 100 - Transparency;
  for y := 0 to bmpHeight - 1 do
  begin
    srcPixel := srcBitmap.ScanLine[y];
    dstPixel := dstBitmap.ScanLine[y];
    for x := 0 to bmpWidth - 1 do
    begin
      dstPixel^.rgbRed := ((InvertTransparency * dstPixel^.rgbRed) +
                            (Transparency * srcPixel^.rgbRed)) div 100;
      dstPixel^.rgbGreen := ((InvertTransparency * dstPixel^.rgbGreen) +
                              (Transparency * srcPixel^.rgbGreen)) div 100;
      dstPixel^.rgbBlue := ((InvertTransparency * dstPixel^.rgbBlue) +
                             (Transparency * srcPixel^.rgbBlue)) div 100;
      Inc(srcPixel);
      Inc(dstPixel);
    end;
  end;
end; }

(*    
// CANNOT USE THIS ONE AS NEED TO BE IN 32 BIT FORMAT, IMAGEEN is 24BIT
        
const
  MaxPixelCount = 32768;

type
  PRGBQuadArray = ^TRGBQuadArray;
  TRGBQuadArray = array[0..MaxPixelCount] of TRGBQuad;

// Both bitmaps must be equal size and 32 bit format. Angle is in radians.
procedure MergeRotate(dstBitmap, srcBitmap: TBitmap; xOrg, yOrg: Integer;
  Angle: Extended);
var
  CosTheta, SinTheta: Extended;
  iCosTheta, iSinTheta: Integer;
  xSrc, ySrc: Integer;
  xDst, yDst: Integer;
  xPrime, yPrime: Integer;
  bmpWidth, bmpHeight: Integer;
  yPrimeSinTheta, yPrimeCosTheta: Integer;
  srcBits: PRGBQuadArray;
  dstBits: PRGBQuad;
begin
try
  SinCos(-Angle, SinTheta, CosTheta);
  iSinTheta := Trunc(SinTheta * (1 shl 16));
  iCosTheta := Trunc(CosTheta * (1 shl 16));
  bmpWidth := srcBitmap.Width;
  bmpHeight := srcBitmap.Height;
  srcBits := srcBitmap.ScanLine[bmpHeight-1];
  dstBits := @(PRGBQuadArray(dstBitmap.ScanLine[0])[bmpWidth-1]);
  yPrime := bmpHeight - yOrg;
  for yDst := bmpHeight - 1 downto 0 do
  begin
    yPrimeSinTheta := yPrime * iSinTheta;
    yPrimeCosTheta := yPrime * iCosTheta;
    xPrime := bmpWidth - xOrg;
    for xDst := bmpWidth - 1 downto 0 do
    begin
      xSrc := SmallInt((xPrime * iCosTheta - yPrimeSinTheta) shr 16) + xOrg;
      ySrc := SmallInt((xPrime * iSinTheta + yPrimeCosTheta) shr 16) + yOrg;
      {$IFDEF DELPHI4_UP}
      if (DWORD(ySrc) < DWORD(bmpHeight)) and (DWORD(xSrc) < DWORD(bmpWidth)) then
      {$ELSE} // Delphi 3 compiler ignores unsigned type cast and generates signed comparison code!
      if (ySrc >= 0) and (ySrc < bmpHeight) and (xSrc >= 0) and (xSrc < bmpWidth) then
      {$ENDIF}
      begin
        dstBits^ := srcBits[ySrc * bmpWidth + xSrc];
      end;
      Dec(dstBits);
      Dec(xPrime);
    end;
    Dec(yPrime);
  end;
except
on e: Exception do

  ShowMessage(e.Message);
end;
end;
*)

procedure SinCos(Theta: Extended; var Sin, Cos: Extended);
asm
        FLD     Theta
        FSINCOS
        FSTP    tbyte ptr [edx]    // Cos
        FSTP    tbyte ptr [eax]    // Sin
        FWAIT
end;


// Angle is in radians.
procedure RotatePoints(var Points: array of TPoint; xOrg, yOrg: Integer;
  Angle: Extended);
var
  Sin, Cos: Extended;
  xPrime, yPrime: Integer;
  I: Integer;
begin
 SinCos(Angle, Sin, Cos);
 for I := Low(Points) to High(Points) do
 begin
   xPrime := Points[I].X - xOrg;
   yPrime := Points[I].Y - yOrg;
   Points[I].X := Round(xPrime * Cos - yPrime * Sin) + xOrg;
   Points[I].Y := Round(xPrime * Sin + yPrime * Cos) + yOrg;
 end;
end;

{ Helper Functions }

function CreateBarRgn(X, Y, W, H, S: Integer; XMode, YMode: Integer): HRGN;
var
  X1, Y1: Integer;
  Rgn, tRgn: HRGN;
begin
  Result := 0;
  if X <= W then Y1 := 0 else Y1 := 5;
  while Y1 < H + 5 do
  begin
    if X > W then
    begin
      if XMode in [1, 4] then
        tRgn := CreateRectRgn(2 * W - X, Y1, W, Y1 + 5)
      else if XMode in [2, 5] then
        tRgn := CreateRectRgn(0, Y1, X - W, Y1 + 5)
      else
        tRgn := 0;
      Rgn := CreateRectRgn(0, Y1 - 5, W, Y1);
      if tRgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end;
    end
    else
    begin
      if (X + S) > W then X := W;
      if XMode in [1, 5] then
        Rgn := CreateRectRgn(W - X, Y1, W, Y1 + 5)
      else if XMode in [2, 4] then
        Rgn := CreateRectRgn(0, Y1, X, Y1 + 5)
      else if XMode = 3 then
      begin
        Rgn := CreateRectRgn(0, Y1 + 5, X, Y1 + 10);
        tRgn := CreateRectRgn(W - X, Y1, W, Y1 + 5);
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end
      else
        Rgn := 0;
    end;
    if Result <> 0 then
    begin
      CombineRgn(Result, Result, Rgn, RGN_OR);
      DeleteObject(Rgn);
    end
    else
      Result := Rgn;
    Inc(Y1, 10)
  end;
  if Y <= H then X1 := 0 else X1 := 5;
  while X1 < W + 5 do
  begin
    if Y > H then
    begin
      if YMode in [1, 4] then
        tRgn := CreateRectRgn(X1, 2 * H - Y, X1 + 5, H)
      else if YMode in [2, 5] then
        tRgn := CreateRectRgn(X1, 0, X1 + 5, Y - H)
      else
        tRgn := 0;
      Rgn := CreateRectRgn(X1 - 5, 0, X1, H);
      if tRgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end;
    end
    else
    begin
      if (Y + S) > H then Y := H;
      if YMode in [1, 5] then
        Rgn := CreateRectRgn(X1, H - Y, X1 + 5, H)
      else if YMode in [2, 4] then
        Rgn := CreateRectRgn(X1, 0, X1 + 5, Y)
      else if YMode = 3 then
      begin
        tRgn := CreateRectRgn(X1, H - Y, X1 + 5, H);
        Rgn := CreateRectRgn(X1 + 5, 0, X1 + 10, Y);
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end
      else
        Rgn := 0;
    end;
    if Rgn <> 0 then
    begin
      if Result <> 0 then
      begin
        CombineRgn(Result, Result, Rgn, RGN_OR);
        DeleteObject(Rgn);
      end
      else
        Result := Rgn;
    end;
    Inc(X1, 10)
  end;
end;

function CreatePourRgn(X, Y, W, H, XMode, YMode: Integer): HRGN;
var
  X1, Y1, N: Integer;
  Rgn, tRgn: HRGN;
begin
  Result := 0;
  if XMode <> 0 then
  begin
    if X < W then
      N := W div 7
    else
      N := 0;
    Y1 := 0;
    while Y1 < H do
    begin
      if XMode = 1 then
        Rgn := CreateRectRgn(W - X + Random(N) - Random(N), Y1, W, Y1 + 5 + H mod 5)
      else if XMode = 2 then
        Rgn := CreateRectRgn(0, Y1, X + Random(N) - Random(N), Y1 + 5 + H mod 5)
      else if XMode = 3 then
      begin
        Rgn := CreateRectRgn((W - X + Random(N) - Random(N)) div 2, Y1, W div 2, Y1 + 5 + H mod 5);
        tRgn := CreateRectRgn(W div 2, Y1, (W + X + Random(N) - Random(N)) div 2, Y1 + 5 + H mod 5);
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end
      else
      begin
        Rgn := CreateRectRgn(W - (X + Random(N) - Random(N)) div 2, Y1, W, Y1 + 5 + H mod 5);
        tRgn := CreateRectRgn(0, Y1, (X + Random(N) - Random(N)) div 2, Y1 + 5 + H mod 5);
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end;
      if Result <> 0 then
      begin
        CombineRgn(Result, Result, Rgn, RGN_OR);
        DeleteObject(Rgn);
      end
      else
        Result := Rgn;
      Inc(Y1, 5);
    end;
  end;
  if YMode <> 0 then
  begin
    if Y < H then
      N := H div 7
    else
      N := 0;
    X1 := 0;
    while X1 < W do
    begin
      if YMode = 1 then
        Rgn := CreateRectRgn(X1, H - Y + Random(N) - Random(N), X1 + 5 + W mod 5, H)
      else if YMode = 2 then
        Rgn := CreateRectRgn(X1, 0, X1 + 5 + W mod 5, Y + Random(N) - Random(N))
      else if YMode = 3 then
      begin
        Rgn := CreateRectRgn(X1, (H - Y + Random(N) - Random(N)) div 2, X1 + 5 + W mod 5, H div 2);
        tRgn := CreateRectRgn(X1, H div 2, X1 + 5 + W mod 5, (H + Y + Random(N) - Random(N)) div 2);
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end
      else
      begin
        Rgn := CreateRectRgn(X1, H - (Y + Random(N) - Random(N)) div 2, X1 + 5 + W mod 5, H);
        tRgn := CreateRectRgn(X1, 0, X1 + 5 + W mod 5, (Y + Random(N) - Random(N)) div 2);
        CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
        DeleteObject(tRgn);
      end;
      if Result <> 0 then
      begin
        CombineRgn(Result, Result, Rgn, RGN_OR);
        DeleteObject(Rgn);
      end
      else
        Result := Rgn;
      Inc(X1, 5);
    end;
  end;
end;

function CreateSwarmRgn(X, Y, W, H, XMode, YMode: Integer): HRGN;
var
  X1, Y1, N, M, I, J: Integer;
  Rgn, tRgn: HRGN;
begin
  Result := 0;
  if XMode <> 0 then
  begin
    if X < W then
      N := W div 10
    else
      N := 0;
    M := N div 20;
    if M < 2 then M := 2;
    Y1 := 0;
    while Y1 < H do
    begin
      if XMode = 1 then
      begin
        Rgn := CreateRectRgn(W - X, Y1, W, Y1 + M);
        for I := N div M downto 1 do
        begin
          if I > 3 * N div M div 4 then J := 0 else J := 1;
          if Random(I) <= J then
          begin
            X1 := (W - X) - (I * M);
            tRgn := CreateRectRgn(X1, Y1, X1 + M, Y1 + M);
            CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
            DeleteObject(tRgn);
          end;
        end;
      end
      else
      begin
        Rgn := CreateRectRgn(0, Y1, X, Y1 + M);
        for I := N div M downto 1 do
        begin
          if I > 3 * N div M div 4 then J := 0 else J := 1;
          if Random(I) <= J then
          begin
            X1 := X + (I * M);
            tRgn := CreateRectRgn(X1 - M, Y1, X1, Y1 + M);
            CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
            DeleteObject(tRgn);
          end;
        end;
      end;
      if Result <> 0 then
      begin
        CombineRgn(Result, Result, Rgn, RGN_OR);
        DeleteObject(Rgn);
      end
      else
        Result := Rgn;
      Inc(Y1, M div 2);
    end;
  end;
  if YMode <> 0 then
  begin
    if Y < H then
      N := H div 10
    else
      N := 0;
    M := N div 20;
    if M < 2 then M := 2;
    X1 := 0;
    while X1 < W do
    begin
      if YMode = 1 then
      begin
        Rgn := CreateRectRgn(X1, H - Y, X1 + M, H);
        for I := N div M downto 1 do
        begin
          if I > 3 * N div M div 4 then J := 0 else J := 1;
          if Random(I) <= J then
          begin
            Y1 := (H - Y) - (I * M);
            tRgn := CreateRectRgn(X1, Y1, X1 + M, Y1 + M);
            CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
            DeleteObject(tRgn);
          end;
        end;
      end
      else
      begin
        Rgn := CreateRectRgn(X1, 0, X1 + M, Y);
        for I := N div M downto 1 do
        begin
          if I > 3 * N div M div 4 then J := 0 else J := 1;
          if Random(I) <= J then
          begin
            Y1 := Y + (I * M);
            tRgn := CreateRectRgn(X1, Y1 - M, X1 + M, Y1);
            CombineRgn(Rgn, Rgn, tRgn, RGN_OR);
            DeleteObject(tRgn);
          end;
        end;
      end;
      if Result <> 0 then
      begin
        CombineRgn(Result, Result, Rgn, RGN_OR);
        DeleteObject(Rgn);
      end
      else
        Result := Rgn;
      Inc(X1, M div 2);
    end;
  end;
end;

function CreateTriangleRgn(X1, Y1, X2, Y2, X3, Y3: Integer): HRGN;
var
  Pts: array[1..3] of TPoint;
begin
  Pts[1].X := X1;
  Pts[1].Y := Y1;
  Pts[2].X := X2;
  Pts[2].Y := Y2;
  Pts[3].X := X3;
  Pts[3].Y := Y3;
  Result := CreatePolygonRgn(Pts, High(Pts), WINDING);
end;

function CreateArcRgn(mX, mY, Radius: Integer; StartAngle, EndAngle: Extended;
  NumPts: Integer): HRGN;
type
  PtArray = array[0..0] of TPoint;
var
  Pts: ^PtArray;
  Sin, Cos, Delta: Extended;
  I: Integer;
begin
  GetMem(Pts, (NumPts + 1) * SizeOf(TPoint));
  try
    Pts[0].X := mX;
    Pts[0].Y := mY;
    Delta := (EndAngle - StartAngle) / NumPts;
    for I := 1 to NumPts do
    begin
      SinCos(StartAngle, Sin, Cos);
      Pts[I].X := mX + Round(Radius * Cos);
      Pts[I].Y := mY + Round(Radius * Sin);
      StartAngle := StartAngle + Delta;
    end;
    Result := CreatePolygonRgn(Pts^, NumPts + 1, WINDING);
  finally
    FreeMem(Pts);
  end;
end;

procedure CalcParams(const Rect: TRect; Step: Integer; Progress: Integer;
  var W, H, X, Y, Slice: Integer);
begin
  W := Rect.Right - Rect.Left;
  H := Rect.Bottom - Rect.Top;
  if W >= H then
  begin
    X := MulDiv(W, Progress, 100);
    Y := MulDiv(X, H, W);
    Slice := MulDiv(W, Step, 90);
  end
  else
  begin
    Y := MulDiv(H, Progress, 100);
    X := MulDiv(Y, W, H);
    Slice := MulDiv(H, Step, 90);
  end;
end;

{$IFNDEF DELPHI4_UP}
function Min(A, B: Integer): Integer;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
{$ENDIF}

{$IFNDEF DELPHI4_UP}
function Max(A, B: Integer): Integer;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
{$ENDIF}

{ Transition Effects }

procedure Effect001(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
//  form1.memo1.lines.add(inttostr(step));
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := W - X;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect002(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Right := X;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect003(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := W - X;
  R.Right := (2 * W) - X;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect004(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := X - W;
  R.Right := X;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; 

{ Just like iettLeftRight1
procedure Effect005(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := X;
  R2.Right := X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end; }

{ Just like iettRightLeft1
procedure Effect006(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := W - X;
  R2.Left := W - X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end; }

procedure Effect007(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := (2 * W) - X;
  R2.Right := X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect008(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X - W;
  R2.Left := W - X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect009(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X - W;
  R1.Right := (2 * W) - X;
  R2.Left := (W - X) div 2;
  R2.Right := (W + X) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect010(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := (W - X) div 2;
  R.Right := (W + X) div 2;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect011(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := (W - X) div 2;
  R1.Right := (W + X) div 2;
  R2.Left := (W - X) div 2;
  R2.Right := (W + X) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect012(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := (X div 2) + 1;
  R2.Right := (X div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2) - 1;
  R1.Right := W;
  R2.Left := W - (X div 2) - 1;
  R2.Right := W;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect013(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := (X div 2) + 1;
  R2.Right := (W div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2) - 1;
  R1.Right := W;
  R2.Left := W div 2;
  R2.Right := W;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect014(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X;
  if R1.Left < W div 5 then
   R1.Right := R1.Left + X div 2
  else if (R1.Left + W div 5) > W then
   R1.Right := R1.Left + (W - X) div 2
  else
   R1.Right := R1.Left + W div 10;
  R2.Left := R1.Right;
  R2.Right := R2.Left + R1.Right - R1.Left;
  MirrorCopyRect(DestCanvas, R1, Image, R2, True, False);
  R1.Left := 0;
  R1.Right := X;
  R2.Left := 0;
  R2.Right := X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect015(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := W - X;
  if (R1.Right + W div 5) > W then
   R1.Left := R1.Right - X div 2
  else if R1.Right < W div 5 then
   R1.Left := R1.Right - (W - X) div 2
  else
   R1.Left := R1.Right - W div 10;
  R2.Right := R1.Left;
  R2.Left := R2.Right - R1.Right + R1.Left;
  MirrorCopyRect(DestCanvas, R1, Image, R2, True, False);
  R1.Left := W - X;
  R1.Right := W;
  R2.Left := W - X;
  R2.Right := W;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect016(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := X;
  R2.Right := X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := X;
  R1.Right := W;
  R2.Left := X;
  R2.Right := iMin(X + W div S, W);
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect017(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := W - X;
  R1.Right := W;
  R2.Left := W - X;
  R2.Right := W;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := 0;
  R1.Right := W - X;
  R2.Left := iMax((W - X) - W div S, 0);
  R2.Right := W - X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect018(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Top := H - Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect019(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Bottom := Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect020(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Top := H - Y;
  R.Bottom := (2 * H) - Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect021(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Top := Y - H;
  R.Bottom := Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; 

{ Just like iettDownUp1
procedure Effect022(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Bottom := Y;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end; }

{ Just like iettUpDown1
procedure Effect023(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := H - Y;
  R2.Top := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end; }

procedure Effect024(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Bottom := (2 * H) - Y;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect025(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := Y - H;
  R2.Top := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect026(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := Y - H;
  R1.Bottom := (2 * H) - Y;
  R2.Top := (H - Y) div 2;
  R2.Bottom := (H + Y) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect027(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := (H - Y) div 2;
  R1.Bottom := (H + Y) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect028(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := (H - Y) div 2;
  R1.Bottom := (H + Y) div 2;
  R2.Top := (H - Y) div 2;
  R2.Bottom := (H + Y) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect029(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Bottom := (Y div 2) + 1;
  R2.Bottom := (Y div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Top := H - (Y div 2) - 1;
  R1.Bottom := H;
  R2.Top := H - (Y div 2) - 1;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect030(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Bottom := (Y div 2) + 1;
  R2.Bottom := (H div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Top := H - (Y div 2) - 1;
  R1.Bottom := H;
  R2.Top := H div 2;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect031(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := Y;
  if R1.Top < H div 5 then
   R1.Bottom := R1.Top + Y div 2
  else if (R1.Top + H div 5) > H then
   R1.Bottom := R1.Top + (H - Y) div 2
  else
   R1.Bottom := R1.Top + H div 10;
  R2.Top := R1.Bottom;
  R2.Bottom := R2.Top + R1.Bottom - R1.Top;
  MirrorCopyRect(DestCanvas, R1, Image, R2, False, True);
  R1.Top := 0;
  R1.Bottom := Y;
  R2.Top := 0;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect032(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Bottom := H - Y;
  if (R1.Bottom + H div 5) > H then
   R1.Top := R1.Bottom - Y div 2
  else if R1.Bottom < H div 5 then
   R1.Top := R1.Bottom - (H - Y) div 2
  else
   R1.Top := R1.Bottom - H div 10;
  R2.Bottom := R1.Top;
  R2.Top := R2.Bottom - R1.Bottom + R1.Top;
  MirrorCopyRect(DestCanvas, R1, Image, R2, False, True);
  R1.Top := H - Y;
  R1.Bottom := H;
  R2.Top := H - Y;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect033(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Bottom := Y;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Top := Y;
  R1.Bottom := H;
  R2.Top := Y;
  R2.Bottom := iMin(Y + H div S, H);
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect034(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := H - Y;
  R1.Bottom := H;
  R2.Top := H - Y;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Top := 0;
  R1.Bottom := H - Y;
  R2.Top := iMax((H - Y) - H div S, 0);
  R2.Bottom := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect035(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := W - X;
  R.Top := H - Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect036(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := W - X;
  R.Bottom := Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect037(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Right := X;
  R.Bottom := Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

procedure Effect038(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Right := X;
  R.Top := H - Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end;

{ Just like iettFromBottomRight
procedure Effect039(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := W - X;
  R.Top := H - Y;
  R.Right := (2 * W) - X;
  R.Bottom := (2 * H) - Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; }

{ Just like iettFromUpRight
procedure Effect040(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := W - X;
  R.Top := Y - H;
  R.Right := (2 * W) - X;
  R.Bottom := Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; }

{ Just like iettFromUpLeft
procedure Effect041(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := X - W;
  R.Top := Y - H;
  R.Right := X;
  R.Bottom := Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; }
      
{ Just like iettFromBottomLeft
procedure Effect042(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R := Rect;
  R.Left := X - W;
  R.Top := H - Y;
  R.Right := X;
  R.Bottom := (2 * H) - Y;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; }

procedure Effect043(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := X;
  R1.Bottom := Y;
  R2.Right := X;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect044(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := X;
  R1.Top := H - Y;
  R2.Right := X;
  R2.Top := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect045(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := W - X;
  R1.Top := H - Y;
  R2.Left := W - X;
  R2.Top := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect046(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := W - X;
  R1.Bottom := Y;
  R2.Left := W - X;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect047(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := (2 * W) - X;
  R1.Bottom := (2 * H) - Y;
  R2.Right := X;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect048(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Right := (2 * W) - X;
  R1.Top := Y - H;
  R2.Right := X;
  R2.Top := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect049(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X - W;
  R1.Top := Y - H;
  R2.Left := W - X;
  R2.Top := H - Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect050(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X - W;
  R1.Bottom := (2 * H) - Y;
  R2.Left := W - X;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect051(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1.Left := X - W;
  R1.Top := Y - H;
  R1.Right := (2 * W) - X;
  R1.Bottom := (2 * H) - Y;
  R2.Left := (W - X) div 2;
  R2.Top := (H - Y) div 2;
  R2.Right := (W + X) div 2;
  R2.Bottom := (H + Y) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

{ Just like iettCenterZoom1
procedure Effect052(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R.Left := (W - X) div 2;
  R.Top := (H - Y) div 2;
  R.Right := (W + X) div 2;
  R.Bottom := (H + Y) div 2;
  DestCanvas.CopyRect(R, Image.Canvas, Rect);
end; }

{ Just like iettCenter1
procedure Effect053(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1.Left := (W - X) div 2;
  R1.Top := (H - Y) div 2;
  R1.Right := (W + X) div 2;
  R1.Bottom := (H + Y) div 2;
  R2.Left := (W - X) div 2;
  R2.Top := (H - Y) div 2;
  R2.Right := (W + X) div 2;
  R2.Bottom := (H + Y) div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end; }

{ Just like iettCenter2
procedure Effect054(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1.Left := 0;
  R1.Right := W;
  R1.Top := 0;
  R1.Bottom := Y div 2;
  R2.Left := 0;
  R2.Right := W;
  R2.Top := 0;
  R2.Bottom := Y div 2;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := 0;
  R1.Right := W;
  R1.Top := H - (Y div 2);
  R1.Bottom := H;
  R2.Left := 0;
  R2.Right := W;
  R2.Top := H - (Y div 2);
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := 0;
  R1.Right := X div 2;
  R1.Top := 0;
  R1.Bottom := H;
  R2.Left := 0;
  R2.Right := X div 2;
  R2.Top := 0;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2);
  R1.Right := W;
  R1.Top := 0;
  R1.Bottom := H;
  R2.Left := W - (X div 2);
  R2.Right := W;
  R2.Top := 0;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end; }

procedure Effect055(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1.Left := 0;
  R1.Top := 0;
  R1.Right := (X div 2) + 1;
  R1.Bottom := (Y div 2) + 1;
  R2.Left := 0;
  R2.Top := 0;
  R2.Right := (X div 2) + 1;
  R2.Bottom := (Y div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := 0;
  R1.Top := H - (Y div 2) - 1;
  R1.Right := (X div 2) + 1;
  R1.Bottom := H;
  R2.Left := 0;
  R2.Top := H - (Y div 2) - 1;
  R2.Right := (X div 2) + 1;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2) - 1;
  R1.Top := H - (Y div 2) - 1;
  R1.Right := W;
  R1.Bottom := H;
  R2.Left := W - (X div 2) - 1;
  R2.Top := H - (Y div 2) - 1;
  R2.Right := W;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2) - 1;
  R1.Top := 0;
  R1.Right := W;
  R1.Bottom := (Y div 2) + 1;
  R2.Left := W - (X div 2) - 1;
  R2.Top := 0;
  R2.Right := W;
  R2.Bottom := (Y div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect056(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1.Left := 0;
  R1.Top := 0;
  R1.Right := (X div 2) + 1;
  R1.Bottom := (Y div 2) + 1;
  R2.Left := 0;
  R2.Top := 0;
  R2.Right := (W div 2) + 1;
  R2.Bottom := (H div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := 0;
  R1.Top := H - (Y div 2);
  R1.Right := (X div 2) + 1;
  R1.Bottom := H;
  R2.Left := 0;
  R2.Top := (H div 2) + 1;
  R2.Right := (W div 2) + 1;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2);
  R1.Top := H - (Y div 2);
  R1.Right := W;
  R1.Bottom := H;
  R2.Left := (W div 2) + 1;
  R2.Top := (H div 2) + 1;
  R2.Right := W;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - (X div 2);
  R1.Top := 0;
  R1.Right := W;
  R1.Bottom := (Y div 2) + 1;
  R2.Left := (W div 2) + 1;
  R2.Top := 0;
  R2.Right := W;
  R2.Bottom := (H div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect057(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1.Left := (X - W) div 2;
  R1.Right := (X div 2) + 1;
  R1.Top := 0;
  R1.Bottom := (H div 2) + 1;
  R2.Left := 0;
  R2.Right := (W div 2) + 1;
  R2.Top := 0;
  R2.Bottom := (H div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := (W div 2) - 1;
  R1.Right := W;
  R1.Top := (Y - H) div 2;
  R1.Bottom := (Y div 2) + 1;
  R2.Left := (W div 2) - 1;
  R2.Right := W;
  R2.Top := 0;
  R2.Bottom := (H div 2) + 1;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := W - X div 2;
  R1.Right := W + (W - X) div 2;
  R1.Top := (H div 2) - 1;
  R1.Bottom := H;
  R2.Left := (W div 2) + 1;
  R2.Right := W;
  R2.Top := (H div 2) - 1;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
  R1.Left := 0;
  R1.Right := (W div 2) + 1;
  R1.Top := H - Y div 2;
  R1.Bottom := H + (H - Y) div 2;
  R2.Left := 0;
  R2.Right := (W div 2) + 1;
  R2.Top := (H div 2) + 1;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect058(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(-(2 * W), -5, 2 * X, H + 5, 2 * W, 2 * W);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect059(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(W - 2 * X, -5, W + (2 * W), H + 5, 2 * W, 2 * W);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect060(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 0, W, H, S, 1, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect061(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 0, W, H, S, 2, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect062(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 0, W, H, S, 4, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect063(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 0, W, H, S, 5, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect064(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(X, 0, W, H, 0, 3, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect065(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, 0, W, H, 1, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect066(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, 0, W, H, 2, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect067(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, 0, W, H, 3, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect068(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, 0, W, H, 4, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect069(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(-5, -(2 * H), W + 5, 2 * Y, 2 * H, 2 * H);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect070(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(-5, H - 2 * Y, W + 5, H + (2 * H), 2 * H, 2 * H);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect071(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(0, 2 * Y, W, H, S, 0, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect072(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(0, 2 * Y, W, H, S, 0, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect073(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(0, 2 * Y, W, H, S, 0, 4);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect074(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(0, 2 * Y, W, H, S, 0, 5);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect075(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(0, Y, W, H, 0, 0, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect076(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(0, Y, W, H, 0, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect077(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(0, Y, W, H, 0, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect078(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(0, Y, W, H, 0, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect079(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(0, Y, W, H, 0, 4);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect080(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(-(2 * W), -(2 * H), 2 * X, 2 * Y, 2 * W, 2 * H);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect081(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(W - 2 * X, -(2 * H), W + (2 * W), 2 * Y, 2 * W, 2 * H);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect082(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(-(2 * W), H - 2 * Y, 2 * X, H + (2 * H), 2 * W, 2 * H);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect083(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(W - 2 * X, H - 2 * Y, W + (2 * W), H + (2 * H), 2 * H, 2 * H);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect084(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRoundRectRgn(W div 2 - X, H div 2 - Y, W div 2 + X, H div 2 + Y, 9 * X div 5, 9 * Y div 5);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect085(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateRectRgnIndirect(Rect);
  TmpRgn := CreateRoundRectRgn(X - W div 2, Y - H div 2, 3 * W div 2 - X,
             3 * H div 2 - Y, 9 * (W - X) div 5, 9 * (H - Y) div 5);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_XOR);
  DeleteObject(TmpRgn);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect086(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 1, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect087(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 1, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect088(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 2, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect089(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 2, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect090(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 4, 4);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect091(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 4, 5);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect092(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 5, 4);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect093(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 5, 5);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect094(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(X, Y, W, H, S, 1, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect095(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(X, Y, W, H, S, 2, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect096(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(X, Y, W, H, S, 3, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect097(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(X, Y, W, H, S, 3, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect098(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(X, Y, W, H, 0, 3, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect099(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 1, 1);
  TmpRgn := CreateBarRgn(2 * X, 2 * Y, W, H, S, 2, 2);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_AND);
  DeleteObject(TmpRgn);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect100(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 1, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect101(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 1, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect102(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 2, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect103(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 2, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect104(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 1, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect105(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 2, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect106(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 3, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect107(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 3, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect108(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 3, 3);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect109(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreatePourRgn(X, Y, W, H, 4, 4);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect110(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(0, 0, 2 * X, 0, 0, 2 * Y);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect111(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(W, 0, W - 2 * X, 0, W, 2 * Y);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect112(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(0, H, 2 * X, H, 0, H - 2 * Y);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect113(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(W, H, W - 2 * X, H, W, H - 2 * Y);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect114(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(0, H, 0, 0, X, H);
  TmpRgn := CreateTriangleRgn(W, H, W, 0, W - X, 0);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect115(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(W, 0, 0, 0, W, Y);
  TmpRgn := CreateTriangleRgn(W, H, 0, H, 0, H - Y);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect116(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateTriangleRgn(W div 2, H div 2, 0, H, 0, H - Y);
  TmpRgn := CreateTriangleRgn(0, 0, X, 0, W div 2, H div 2);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreateTriangleRgn(W - X, H, W div 2, H div 2, W, H);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  TmpRgn := CreateTriangleRgn(W div 2, H div 2, W, 0, W, Y);
  CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
  DeleteObject(TmpRgn);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect117(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  I, J: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  if S > 1 then
    S := S div 2;
  X := X div S;
  Y := Y div S;
  W := W div S;
  H := H div S;
  for J := S downto 0 do
  begin
    for I := S downto 0 do
    begin
      TmpRgn := CreateTriangleRgn(I * W - X, J * H - Y, I * W + X, J * H - Y, I * W - X, J * H + Y);
      if Rgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
        DeleteObject(TmpRgn);
      end
      else
       Rgn := TmpRgn;
    end;
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

{ Just like iettCrossDissolve
procedure Effect118(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
begin
  MergeTransparent(Screen, Image, Progress);
end; }

{ Requires a 32 bit palette
procedure Effect119(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
begin
  if Progress>0 then
    MergeRotate(Screen, Image, -1, -1, (100 - Progress) * PI / 200);
end; }

{ Requires a 32 bit palette
procedure Effect120(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
begin
  if Progress>0 then
    MergeRotate(Screen, Image, -1, Rect.Bottom, (Progress - 100) * PI / 200);
end; }

{ Requires a 32 bit palette
procedure Effect121(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
begin
  if Progress>0 then
    MergeRotate(Screen, Image, Rect.Right, -1, (Progress - 100) * PI / 200);
end; }

{ Requires a 32 bit palette
procedure Effect122(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
begin
  if Progress>0 then
    MergeRotate(Screen, Image, Rect.Right, Rect.Bottom, (100 - Progress) * PI / 200);
end; }

procedure Effect123(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateSwarmRgn(X, Y, W, H, 1, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect124(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateSwarmRgn(X, Y, W, H, 2, 0);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect125(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateSwarmRgn(X, Y, W, H, 0, 1);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect126(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := CreateSwarmRgn(X, Y, W, H, 0, 2);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

{ Just like iettRandomBoxes
procedure Effect127(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  RandSeed := W * H;
  if S > 1 then
    S := S div 2;
  Rgn := 0;
  X := 0;
  while X < W do
  begin
    Y := 0;
    while Y < H do
    begin
      if Random(100) < Progress then
      begin
        TmpRgn := CreateRectRgn(X - S, Y - S, X + S, Y + S);
        if Rgn <> 0 then
        begin
          CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
          DeleteObject(TmpRgn);
        end
        else
          Rgn := TmpRgn;
      end;
      Inc(Y, S);
    end;
    Inc(X, S);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end; }

procedure Effect128(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X;
  R1.Right := W;
  R2.Left := 0;
  R2.Right := W - X;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Left := 0;
  R1.Right := X;
  R2.Left := W - X;
  R2.Right := W;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect129(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := 0;
  R1.Right := W - X;
  R2.Left := X;
  R2.Right := W;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Left := W - X;
  R1.Right := W;
  R2.Left := 0;
  R2.Right := X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect130(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := X;
  R1.Right := W;
  R2.Left := 0;
  R2.Right := W;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Left := 0;
  R1.Right := X;
  R2.Left := W - X;
  R2.Right := W;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect131(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Left := 0;
  R1.Right := W - X;
  R2.Left := 0;
  R2.Right := W;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Left := W - X;
  R1.Right := W;
  R2.Left := 0;
  R2.Right := X;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect132(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := Y;
  R1.Bottom := H;
  R2.Top := 0;
  R2.Bottom := H - Y;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Top := 0;
  R1.Bottom := Y;
  R2.Top := H - Y;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect133(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := 0;
  R1.Bottom := H - Y;
  R2.Top := Y;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Top := H - Y;
  R1.Bottom := H;
  R2.Top := 0;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect134(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := Y;
  R1.Bottom := H;
  R2.Top := 0;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Top := 0;
  R1.Bottom := Y;
  R2.Top := H - Y;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect135(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  R1, R2: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  R1 := Rect;
  R2 := Rect;
  R1.Top := 0;
  R1.Bottom := H - Y;
  R2.Top := 0;
  R2.Bottom := H;
  DestCanvas.CopyRect(R1, DestCanvas, R2);
  R1.Top := H - Y;
  R1.Bottom := H;
  R2.Top := 0;
  R2.Bottom := Y;
  DestCanvas.CopyRect(R1, Image.Canvas, R2);
end;

procedure Effect136(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := W div S;
  R := Rect;
  R.Right := S * Progress div 100;
  while R.Left < W do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, S, 0);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect137(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := H div S;
  R := Rect;
  R.Bottom := S * Progress div 100;
  while R.Top < H do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, S);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect138(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := X;
  if S<1 then S:=1;
  R := Rect;
  R.Right := S * Progress div 100;
  while R.Left < W do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, S, 0);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect139(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := X;     
  if S<1 then S:=1;
  R := Rect;
  R.Left := Rect.Right - S * Progress div 100;
  while R.Right >= 0 do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, -S, 0);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect140(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := Y;  
  if S<1 then S:=1;
  R := Rect;
  R.Bottom := S * Progress div 100;
  while R.Top < H do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, S);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect141(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := Y;     
  if S<1 then S:=1;
  R := Rect;
  R.Top := Rect.Bottom - S * Progress div 100;
  while R.Bottom >= 0 do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, -S);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect142(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  I, J: Integer;
  Rgn, TmpRgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  X := X div S;
  Y := Y div S;
  if S > 1 then
    S := S div 2;
  W := W div S;
  H := H div S;
  for J := S downto 0 do
  begin
    for I := S downto 0 do
    begin
      TmpRgn := CreateRectRgn(I * W - X, J * H - Y, I * W + X, J * H + Y);
      if Rgn <> 0 then
      begin
        CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
        DeleteObject(TmpRgn);
      end
      else
       Rgn := TmpRgn;
    end;
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect143(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  mX, mY: Integer;
  PI2: Extended;
  Rgn: HRGN;
begin       
  if progress=0 then exit;
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  mX := W div 2;
  mY := H div 2;
  PI2 := PI / 2;
  Rgn := CreateArcRgn(mX, mY, IECeil(Sqrt(Sqr(mX) + Sqr(mY))),
    -PI2, (PI * Progress / 50) - PI2, Progress);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect144(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  mX, mY: Integer;
  PI2: Extended;
  Rgn: HRGN;
begin
  if progress=0 then exit;
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  mX := W div 2;
  mY := H div 2;
  PI2 := PI / 2;
  Rgn := CreateArcRgn(mX, mY, IECeil(Sqrt(Sqr(mX) + Sqr(mY))),
    -PI2, (-PI * Progress / 50) - PI2, Progress);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect145(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  D: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := H div S;
  R := Rect;
  OffsetRect(R, 0, S div 2);
  D := S * Progress div 200;
  Dec(R.Top, D);
  R.Bottom := R.Top + 2 * D;
  while R.Top < H do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, S);
  end;
  S := X;
  if S<1 then S:=1;
  R := Rect;
  R.Right := S * Progress div 100;
  while R.Left < W do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, S, 0);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect146(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  D: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := H div S;
  R := Rect;
  OffsetRect(R, 0, S div 2);
  D := S * Progress div 200;
  Dec(R.Top, D);
  R.Bottom := R.Top + 2 * D;
  while R.Top < H do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, S);
  end;
  S := X;   
  if S<1 then S:=1;
  R := Rect;
  R.Left := R.Right - S * Progress div 100;
  while R.Right >= 0 do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, -S, 0);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect147(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  D: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := W div S;
  R := Rect;
  OffsetRect(R, S div 2, 0);
  D := S * Progress div 200;
  Dec(R.Left, D);
  R.Right := R.Left + 2 * D;
  while R.Left < W do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, S, 0);
  end;
  S := Y;  
  if S<1 then S:=1;
  R := Rect;
  R.Bottom := S * Progress div 100;
  while R.Top < H do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, S);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect148(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Rgn, TmpRgn: HRGN;
  D: Integer;
  R: TRect;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  Rgn := 0;
  S := W div S;
  R := Rect;
  OffsetRect(R, S div 2, 0);
  D := S * Progress div 200;
  Dec(R.Left, D);
  R.Right := R.Left + 2 * D;
  while R.Left < W do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, S, 0);
  end;
  S := Y;   
  if S<1 then S:=1;
  R := Rect;
  R.Top := Rect.Bottom - S * Progress div 100;
  while R.Bottom >= 0 do
  begin
    TmpRgn := CreateRectRgnIndirect(R);
    if Rgn <> 0 then
    begin
      CombineRgn(Rgn, Rgn, TmpRgn, RGN_OR);
      DeleteObject(TmpRgn);
    end
    else
      Rgn := TmpRgn;
    OffsetRect(R, 0, -S);
  end;
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect149(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Pts: array[1..4] of TPoint;
  mX, mY: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  mX := W div 2;
  mY := H div 2;
  X := X div 2;
  Y := Y div 2;
  Pts[1].X := mX - X;
  Pts[1].Y := mY - Y;
  Pts[2].X := mX + X;
  Pts[2].Y := mY - Y;
  Pts[3].X := mX + X;
  Pts[3].Y := mY + Y;
  Pts[4].X := mX - X;
  Pts[4].Y := mY + Y;
  RotatePoints(Pts, mX, mY, PI * Progress / 50);
  Rgn := CreatePolygonRgn(Pts, High(Pts), WINDING);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

procedure Effect150(DestCanvas:TCanvas; Screen, Image: TBitmap; const Rect: TRect;
  Step: Integer; Progress: Integer);
var
  W, H, X, Y, S: Integer;
  Pts: array[1..8] of TPoint;
  mX, mY, dX, dY, hX, hY: Integer;
  Rgn: HRGN;
begin
  CalcParams(Rect, Step, Progress, W, H, X, Y, S);
  mX := W div 2;
  mY := H div 2;
  dX := 2 * X;
  dY := 2 * Y;
  hX := X div 2;
  hY := Y div 2;
  Pts[1].X := mX - dX;
  Pts[1].Y := mY;
  Pts[2].X := mX - hX;
  Pts[2].Y := mY - hY;
  Pts[3].X := mX;
  Pts[3].Y := mY - dY;
  Pts[4].X := mX + hX;
  Pts[4].Y := mY - hY;
  Pts[5].X := mX + dX;
  Pts[5].Y := mY;
  Pts[6].X := mX + hX;
  Pts[6].Y := mY + hY;
  Pts[7].X := mX;
  Pts[7].Y := mY + dY;
  Pts[8].X := mX - hX;
  Pts[8].Y := mY + hY;
  RotatePoints(Pts, mX, mY, PI * Progress / 50);
  Rgn := CreatePolygonRgn(Pts, High(Pts), WINDING);
  SelectClipRgn(DestCanvas.Handle, Rgn);
  DeleteObject(Rgn);
  DestCanvas.Draw(0, 0, Image);
  SelectClipRgn(DestCanvas.Handle, 0);
end;

{$endif}

end.
