.class Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sendMessageToSharedNotebookMembers_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MESSAGE_TEXT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECIPIENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private messageText:Ljava/lang/String;

.field private notebookGuid:Ljava/lang/String;

.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 25294
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "sendMessageToSharedNotebookMembers_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 25296
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25297
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookGuid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25298
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "messageText"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->MESSAGE_TEXT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25299
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recipients"

    const/16 v2, 0xf

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->RECIPIENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25310
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    .prologue
    .line 25315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25316
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetAuthenticationToken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25317
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    .line 25319
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetNotebookGuid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25320
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    .line 25322
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetMessageText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25323
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    .line 25325
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetRecipients()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 25326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25327
    .local v0, "__this__recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25328
    .local v2, "other_element":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25330
    .end local v2    # "other_element":Ljava/lang/String;
    :cond_3
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    .line 25332
    .end local v0    # "__this__recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25339
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    .line 25340
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    .line 25341
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    .line 25342
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    .line 25343
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    .prologue
    .line 25382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 25425
    :cond_0
    :goto_0
    return v0

    .line 25386
    :cond_1
    const/4 v0, 0x0

    .line 25387
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 25389
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25390
    if-nez v0, :cond_0

    .line 25393
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25394
    if-nez v0, :cond_0

    .line 25398
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetNotebookGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetNotebookGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25399
    if-nez v0, :cond_0

    .line 25402
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25403
    if-nez v0, :cond_0

    .line 25407
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetMessageText()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetMessageText()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25408
    if-nez v0, :cond_0

    .line 25411
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetMessageText()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25412
    if-nez v0, :cond_0

    .line 25416
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetRecipients()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetRecipients()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25417
    if-nez v0, :cond_0

    .line 25420
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->isSetRecipients()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 25421
    if-nez v0, :cond_0

    .line 25425
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25293
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;
    .locals 1

    .prologue
    .line 25335
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 25293
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 25351
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMessageText()Z
    .locals 1

    .prologue
    .line 25369
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebookGuid()Z
    .locals 1

    .prologue
    .line 25360
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRecipients()Z
    .locals 1

    .prologue
    .line 25378
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    .line 25430
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 25433
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 25434
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 25481
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 25482
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->validate()V

    .line 25483
    return-void

    .line 25437
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 25477
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 25479
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 25439
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_1

    .line 25440
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 25442
    :cond_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25446
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_2

    .line 25447
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    goto :goto_1

    .line 25449
    :cond_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25453
    :pswitch_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 25454
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    goto :goto_1

    .line 25456
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25460
    :pswitch_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_5

    .line 25462
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 25463
    .local v2, "_list138":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    .line 25464
    const/4 v1, 0x0

    .local v1, "_i139":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_4

    .line 25467
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 25468
    .local v0, "_elem140":Ljava/lang/String;
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25464
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25470
    .end local v0    # "_elem140":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 25473
    .end local v1    # "_i139":I
    .end local v2    # "_list138":Lcom/evernote/thrift/protocol/TList;
    :cond_5
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 25346
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    .line 25347
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageText"    # Ljava/lang/String;

    .prologue
    .line 25364
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    .line 25365
    return-void
.end method

.method public setNotebookGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "notebookGuid"    # Ljava/lang/String;

    .prologue
    .line 25355
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    .line 25356
    return-void
.end method

.method public setRecipients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25373
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    .line 25374
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 25522
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 25486
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->validate()V

    .line 25488
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 25489
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 25490
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25491
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 25492
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25494
    :cond_0
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 25495
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25496
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->notebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 25497
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25499
    :cond_1
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 25500
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->MESSAGE_TEXT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25501
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->messageText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 25502
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25504
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 25505
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->RECIPIENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25507
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 25508
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->recipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25510
    .local v0, "_iter141":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 25512
    .end local v0    # "_iter141":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 25514
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25516
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 25517
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 25518
    return-void
.end method
