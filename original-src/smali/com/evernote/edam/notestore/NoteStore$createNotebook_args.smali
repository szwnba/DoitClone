.class Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
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
    name = "createNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private notebook:Lcom/evernote/edam/type/Notebook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 6532
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createNotebook_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 6534
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 6535
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebook"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6544
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    .prologue
    .line 6549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6550
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6551
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 6553
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6554
    new-instance v0, Lcom/evernote/edam/type/Notebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 6556
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6563
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 6564
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 6565
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    .prologue
    .line 6586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6587
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

    .line 6611
    :cond_0
    :goto_0
    return v0

    .line 6590
    :cond_1
    const/4 v0, 0x0

    .line 6591
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 6593
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6594
    if-nez v0, :cond_0

    .line 6597
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6598
    if-nez v0, :cond_0

    .line 6602
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6603
    if-nez v0, :cond_0

    .line 6606
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6607
    if-nez v0, :cond_0

    .line 6611
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6531
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
    .locals 1

    .prologue
    .line 6559
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 6531
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 6573
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebook()Z
    .locals 1

    .prologue
    .line 6582
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

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
    .line 6616
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 6619
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 6620
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 6644
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 6645
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->validate()V

    .line 6646
    return-void

    .line 6623
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 6640
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 6642
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 6625
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 6626
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 6628
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6632
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 6633
    new-instance v1, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/Notebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 6634
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6636
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6623
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
    .line 6568
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 6569
    return-void
.end method

.method public setNotebook(Lcom/evernote/edam/type/Notebook;)V
    .locals 0
    .param p1, "notebook"    # Lcom/evernote/edam/type/Notebook;

    .prologue
    .line 6577
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 6578
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
    .line 6668
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
    .line 6649
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->validate()V

    .line 6651
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 6652
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6653
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6654
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 6655
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 6657
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    if-eqz v0, :cond_1

    .line 6658
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6659
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6660
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 6662
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 6663
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 6664
    return-void
.end method
