.class Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;
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
    name = "createLinkedNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26413
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createLinkedNotebook_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 26415
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 26416
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "linkedNotebook"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26425
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    .prologue
    .line 26430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26431
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26432
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 26434
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26435
    new-instance v0, Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>(Lcom/evernote/edam/type/LinkedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26437
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26444
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 26445
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26446
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    .prologue
    .line 26467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26468
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

    .line 26492
    :cond_0
    :goto_0
    return v0

    .line 26471
    :cond_1
    const/4 v0, 0x0

    .line 26472
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 26474
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26475
    if-nez v0, :cond_0

    .line 26478
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26479
    if-nez v0, :cond_0

    .line 26483
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26484
    if-nez v0, :cond_0

    .line 26487
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 26488
    if-nez v0, :cond_0

    .line 26492
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26412
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;
    .locals 1

    .prologue
    .line 26440
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 26412
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 26454
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLinkedNotebook()Z
    .locals 1

    .prologue
    .line 26463
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

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
    .line 26497
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 26500
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 26501
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 26525
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 26526
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->validate()V

    .line 26527
    return-void

    .line 26504
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 26521
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 26523
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 26506
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 26507
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 26509
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26513
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 26514
    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26515
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26517
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 26449
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 26450
    return-void
.end method

.method public setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 0
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;

    .prologue
    .line 26458
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26459
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
    .line 26549
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
    .line 26530
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->validate()V

    .line 26532
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 26533
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26534
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26535
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 26536
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26538
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    if-eqz v0, :cond_1

    .line 26539
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26540
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LinkedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26541
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26543
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 26544
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 26545
    return-void
.end method
