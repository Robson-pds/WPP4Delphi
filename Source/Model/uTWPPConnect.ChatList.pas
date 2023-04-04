unit uTWPPConnect.ChatList;

// *************************************************
// Generated By: JsonToDelphiClass - 0.65
// Project link: https://github.com/PKGeorgiev/Delphi-JsonToDelphiClass
// Generated On: 2022-10-27 21:17:49
// *************************************************
// Created By  : Petar Georgiev - 2014
// WebSite     : http://pgeorgiev.com
// *************************************************

interface

uses Generics.Collections, Rest.Json, uTWPPConnect.Classes,
  uTWPPConnect.Constant;

type

  TIdClass = class(TClassPadrao)
  private
    F_serialized: String;
    FFromMe: Boolean;
    FId: String;
    FRemote: String;
    FParticipant: String;
  public
    property _serialized: String read F_serialized write F_serialized;
    property fromMe: Boolean read FFromMe write FFromMe;
    property participant: String read FParticipant write FParticipant;
    property id: String read FId write FId;
    property remote: String read FRemote write FRemote;

  end;

TUrlButtonClass = class(TClassPadrao)
private
  FDisplayText: String;
  FUrl: String;
public
  property displayText: String read FDisplayText write FDisplayText;
  property url: String read FUrl write FUrl;

end;

THydratedButtonsClass = class(TClassPadrao)
private
  FIndex: Extended;
  FUrlButton: TUrlButtonClass;
public
  property &index: Extended read FIndex write FIndex;
  property urlButton: TUrlButtonClass read FUrlButton write FUrlButton;
  constructor Create(pAJsonString: string);
  destructor Destroy; override;
end;


TQuotedMsgClass = class(TClassPadrao)
private
  FBody: String;
  FEphemeralStartTimestamp: Extended;
  FFooter: String;
  FGroupMentions: TArray<String>;
  FHasReaction: Boolean;
  FHydratedButtons: TArray<THydratedButtonsClass>;
  FIsAvatar: Boolean;
  FIsDynamicReplyButtonsMsg: Boolean;
  FIsForwarded: Boolean;
  FIsFromTemplate: Boolean;
  FIsMdHistoryMsg: Boolean;
  FIsSentCagPollCreation: Boolean;
  FIsVcardOverMmsDocument: Boolean;
  FKicNotified: Boolean;
  FLabels: TArray<String>;
  FLastPlaybackProgress: Extended;
  FMentionedJidList: TArray<String>;
  FPollInvalidated: Boolean;
  FPollOptions: TArray<String>;
  FProductHeaderImageRejected: Boolean;
  FRequiresDirectConnection: Boolean;
  FStickerSentTs: Extended;
  FTitle: String;
  FType: String;
public
  property body: String read FBody write FBody;
  property ephemeralStartTimestamp: Extended read FEphemeralStartTimestamp write FEphemeralStartTimestamp;
  property footer: String read FFooter write FFooter;
  property groupMentions: TArray<String> read FGroupMentions write FGroupMentions;
  property hasReaction: Boolean read FHasReaction write FHasReaction;
 // property hydratedButtons: TArray<THydratedButtonsClass> read FHydratedButtons write FHydratedButtons;
  property isAvatar: Boolean read FIsAvatar write FIsAvatar;
  property isDynamicReplyButtonsMsg: Boolean read FIsDynamicReplyButtonsMsg write FIsDynamicReplyButtonsMsg;
  property isForwarded: Boolean read FIsForwarded write FIsForwarded;
  property isFromTemplate: Boolean read FIsFromTemplate write FIsFromTemplate;
  property isMdHistoryMsg: Boolean read FIsMdHistoryMsg write FIsMdHistoryMsg;
  property isSentCagPollCreation: Boolean read FIsSentCagPollCreation write FIsSentCagPollCreation;
  property isVcardOverMmsDocument: Boolean read FIsVcardOverMmsDocument write FIsVcardOverMmsDocument;
  property kicNotified: Boolean read FKicNotified write FKicNotified;
  property labels: TArray<String> read FLabels write FLabels;
  property lastPlaybackProgress: Extended read FLastPlaybackProgress write FLastPlaybackProgress;
  property mentionedJidList: TArray<String> read FMentionedJidList write FMentionedJidList;
  property pollInvalidated: Boolean read FPollInvalidated write FPollInvalidated;
  property pollOptions: TArray<String> read FPollOptions write FPollOptions;
  property productHeaderImageRejected: Boolean read FProductHeaderImageRejected write FProductHeaderImageRejected;
  property requiresDirectConnection: Boolean read FRequiresDirectConnection write FRequiresDirectConnection;
  property stickerSentTs: Extended read FStickerSentTs write FStickerSentTs;
  property title: String read FTitle write FTitle;
  property &type: String read FType write FType;
  destructor Destroy; override;
  constructor Create(pAJsonString: string);
end;

  TChatListClass = class(TClassPadrao)
  private
    FAck: Extended;
    FBody: String;
    FBroadcast: Boolean;
    FFrom: String;
    FGroupMentions: TArray<String>;
    FHasReaction: Boolean;
    FId: TIdClass;
    FIsAvatar: Boolean;
    FIsDynamicReplyButtonsMsg: Boolean;
    FIsForwarded: Boolean;
    FIsFromTemplate: Boolean;
    FIsMdHistoryMsg: Boolean;
    FIsNewMsg: Boolean;
    FIsSentCagPollCreation: Boolean;
    FIsVcardOverMmsDocument: Boolean;
    FKicNotified: Boolean;
    FLabels: TArray<String>;
    FLastPlaybackProgress: Extended;
    FMentionedJidList: TArray<String>;
    FNotifyName: String;
    FPollInvalidated: Boolean;
    FProductHeaderImageRejected: Boolean;
    FRecvFresh: Boolean;
    FRequiresDirectConnection: Boolean;
    FSelf: String;
    FStar: Boolean;
    FStickerSentTs: Extended;
    FT: Extended;
    FTo: String;
    FType: String;
    FAuthor: String;
    FisGroup: Boolean;
    FFilename: String;
    FPollOptions: TArray<String>;
    FFilehash: String;
    FThumbnailWidth: Extended;
    FRowId: Extended;
    FPageCount: Extended;
    FThumbnailEncSha256: String;
    FMediaKey: String;
    FThumbnailSha256: String;
    FCaption: String;
    FMimetype: String;
    FThumbnailDirectPath: String;
    FSize: Extended;
    FThumbnailHeight: Extended;
    FDeprecatedMms3Url: String;
    FDirectPath: String;
    FEncFilehash: String;
    FMediaKeyTimestamp: Extended;
    FIsCaptionByUser: Boolean;
    FStaticUrl: String;
    FScansSidecar: TScansSidecarClass;
    FScanLengths: TArray<Extended>;
    FWidth: Extended;
    FDuration: String;
    FInteractiveAnnotations: TArray<String>;
    FHeight: Extended;
    FIsViewOnce: Boolean;
    FQuotedParticipant: String;
    FThumbnail: String;
    FRichPreviewType: Extended;
    FQuotedStanzaID: String;
    FQuotedMsg: TQuotedMsgClass;
    FInviteGrpType: String;
  public
    property ack: Extended read FAck write FAck;
    property author: String read FAuthor write FAuthor;
    property body: String read FBody write FBody;
    property broadcast: Boolean read FBroadcast write FBroadcast;
    property from: String read FFrom write FFrom;
    property groupMentions: TArray<String> read FGroupMentions write FGroupMentions;
    property hasReaction: Boolean read FHasReaction write FHasReaction;
    property id: TIdClass read FId write FId;
    property isAvatar: Boolean read FIsAvatar write FIsAvatar;
    property isDynamicReplyButtonsMsg: Boolean read FIsDynamicReplyButtonsMsg write FIsDynamicReplyButtonsMsg;
    property isForwarded: Boolean read FIsForwarded write FIsForwarded;
    property isFromTemplate: Boolean read FIsFromTemplate write FIsFromTemplate;
    property isMdHistoryMsg: Boolean read FIsMdHistoryMsg write FIsMdHistoryMsg;
    property isNewMsg: Boolean read FIsNewMsg write FIsNewMsg;
    property isSentCagPollCreation: Boolean read FIsSentCagPollCreation write FIsSentCagPollCreation;
    property isVcardOverMmsDocument: Boolean read FIsVcardOverMmsDocument write FIsVcardOverMmsDocument;
    property kicNotified: Boolean read FKicNotified write FKicNotified;
    property labels: TArray<String> read FLabels write FLabels;
    property lastPlaybackProgress: Extended read FLastPlaybackProgress write FLastPlaybackProgress;
    property mentionedJidList: TArray<String> read FMentionedJidList write FMentionedJidList;
    property notifyName: String read FNotifyName write FNotifyName;
    property pollInvalidated: Boolean read FPollInvalidated write FPollInvalidated;
    property productHeaderImageRejected: Boolean read FProductHeaderImageRejected write FProductHeaderImageRejected;
    property recvFresh: Boolean read FRecvFresh write FRecvFresh;
    property requiresDirectConnection: Boolean read FRequiresDirectConnection write FRequiresDirectConnection;
    property self: String read FSelf write FSelf;
    property star: Boolean read FStar write FStar;
    property stickerSentTs: Extended read FStickerSentTs write FStickerSentTs;
    property t: Extended read FT write FT;
    property &to: String read FTo write FTo;
    property &type: String read FType write FType;
    property isGroup: Boolean read FisGroup write FisGroup;
    property caption: String read FCaption write FCaption;
    property deprecatedMms3Url: String read FDeprecatedMms3Url write FDeprecatedMms3Url;
    property directPath: String read FDirectPath write FDirectPath;
    property encFilehash: String read FEncFilehash write FEncFilehash;
    property filehash: String read FFilehash write FFilehash;
    property filename: String read FFilename write FFilename;
    property isCaptionByUser: Boolean read FIsCaptionByUser write FIsCaptionByUser;
    property mediaKey: String read FMediaKey write FMediaKey;
    property mediaKeyTimestamp: Extended read FMediaKeyTimestamp write FMediaKeyTimestamp;
    property mimetype: String read FMimetype write FMimetype;
    property pageCount: Extended read FPageCount write FPageCount;
    property pollOptions: TArray<String> read FPollOptions write FPollOptions;
    property rowId: Extended read FRowId write FRowId;
    property size: Extended read FSize write FSize;
    property thumbnailDirectPath: String read FThumbnailDirectPath write FThumbnailDirectPath;
    property thumbnailEncSha256: String read FThumbnailEncSha256 write FThumbnailEncSha256;
    property thumbnailHeight: Extended read FThumbnailHeight write FThumbnailHeight;
    property thumbnailSha256: String read FThumbnailSha256 write FThumbnailSha256;
    property thumbnailWidth: Extended read FThumbnailWidth write FThumbnailWidth;
    property duration: String read FDuration write FDuration;
    property height: Extended read FHeight write FHeight;
    property width: Extended read FWidth write FWidth;
    property interactiveAnnotations: TArray<String> read FInteractiveAnnotations write FInteractiveAnnotations;
    property isViewOnce: Boolean read FIsViewOnce write FIsViewOnce;
    property scanLengths: TArray<Extended> read FScanLengths write FScanLengths;
    property scansSidecar: TScansSidecarClass read FScansSidecar write FScansSidecar;
    property staticUrl: String read FStaticUrl write FStaticUrl;
    property inviteGrpType: String read FInviteGrpType write FInviteGrpType;
    property quotedMsg: TQuotedMsgClass read FQuotedMsg write FQuotedMsg;
    property quotedParticipant: String read FQuotedParticipant write FQuotedParticipant;
    property quotedStanzaID: String read FQuotedStanzaID write FQuotedStanzaID;
    property richPreviewType: Extended read FRichPreviewType write FRichPreviewType;
    property thumbnail: String read FThumbnail write FThumbnail;

    constructor Create(pAJsonString: string);
    destructor Destroy; override;
  end;

  TGetChatList = class(TClassPadraoList<TChatListClass>)
  private
    FName: String;
    FResult: TArray<TChatListClass>;
  public
    property name: String read FName write FName;
    property result: TArray<TChatListClass> read FResult write FResult;
    constructor Create(pAJsonString: string);
    destructor Destroy; override;
  end;

implementation

{ TRootClass }

{ TChatsList }

constructor TGetChatList.Create(pAJsonString: string);
begin
  inherited Create(pAJsonString);
end;

destructor TGetChatList.Destroy;
begin

  inherited;
end;

{ TChatClass }

constructor TChatListClass.Create(pAJsonString: string);
begin
  inherited Create(pAJsonString);
  FId := TIdClass.Create(pAJsonString);
  FQuotedMsg := TQuotedMsgClass.Create(pAJsonString);
end;

destructor TChatListClass.Destroy;
begin
  FId.free;
  FQuotedMsg.Free;
  inherited;
end;

{ TMsgChunkClass }

{ TQuotedMsgClass }

constructor TQuotedMsgClass.Create(pAJsonString: string);
begin
  inherited Create(pAJSonString);
end;

destructor TQuotedMsgClass.Destroy;
//var
//  LhydratedButtons : THydratedButtonsClass;
begin
//  for LhydratedButtons in Self.hydratedButtons do
//    LhydratedButtons.Free;
  inherited;
end;

{ THydratedButtonsClass }

constructor THydratedButtonsClass.Create(pAJsonString: string);
begin
  inherited Create(pAJsonString);
end;

destructor THydratedButtonsClass.Destroy;
begin

  inherited;
end;

end.
