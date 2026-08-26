.class Lcom/evernote/edam/notestore/NoteStore$copyNote_args;
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
    name = "copyNote_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$copyNote_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TO_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private noteGuid:Ljava/lang/String;

.field private toNotebookGuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 18513
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "copyNote_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 18515
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 18516
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 18517
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "toNotebookGuid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->TO_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18527
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$copyNote_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    .prologue
    .line 18532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18533
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18534
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    .line 18536
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18537
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    .line 18539
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetToNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18540
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    .line 18542
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18549
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    .line 18550
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    .line 18551
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    .line 18552
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$copyNote_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    .prologue
    .line 18582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 18583
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

    .line 18616
    :cond_0
    :goto_0
    return v0

    .line 18586
    :cond_1
    const/4 v0, 0x0

    .line 18587
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 18589
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$copyNote_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 18590
    if-nez v0, :cond_0

    .line 18593
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 18594
    if-nez v0, :cond_0

    .line 18598
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetNoteGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetNoteGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 18599
    if-nez v0, :cond_0

    .line 18602
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 18603
    if-nez v0, :cond_0

    .line 18607
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetToNotebookGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetToNotebookGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 18608
    if-nez v0, :cond_0

    .line 18611
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->isSetToNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 18612
    if-nez v0, :cond_0

    .line 18616
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18512
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$copyNote_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$copyNote_args;
    .locals 1

    .prologue
    .line 18545
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$copyNote_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 18512
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 18560
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNoteGuid()Z
    .locals 1

    .prologue
    .line 18569
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetToNotebookGuid()Z
    .locals 1

    .prologue
    .line 18578
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 3
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xb

    .line 18621
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 18624
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 18625
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 18655
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 18656
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->validate()V

    .line 18657
    return-void

    .line 18628
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 18651
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 18653
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 18630
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 18631
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 18633
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 18637
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 18638
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    goto :goto_1

    .line 18640
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 18644
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 18645
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    goto :goto_1

    .line 18647
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 18628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 18555
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    .line 18556
    return-void
.end method

.method public setNoteGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteGuid"    # Ljava/lang/String;

    .prologue
    .line 18564
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    .line 18565
    return-void
.end method

.method public setToNotebookGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "toNotebookGuid"    # Ljava/lang/String;

    .prologue
    .line 18573
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    .line 18574
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
    .line 18684
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 18660
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->validate()V

    .line 18662
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 18663
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 18664
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18665
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 18666
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 18668
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 18669
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18670
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->noteGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 18671
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 18673
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 18674
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->TO_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18675
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->toNotebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 18676
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 18678
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 18679
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 18680
    return-void
.end method
