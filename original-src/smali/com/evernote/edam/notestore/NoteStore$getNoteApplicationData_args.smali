.class Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;
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
    name = "getNoteApplicationData_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 13576
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteApplicationData_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 13578
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 13579
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13588
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    .prologue
    .line 13593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13594
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13595
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    .line 13597
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13598
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    .line 13600
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13607
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    .line 13608
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    .line 13609
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    .prologue
    .line 13630
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13631
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

    .line 13655
    :cond_0
    :goto_0
    return v0

    .line 13634
    :cond_1
    const/4 v0, 0x0

    .line 13635
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 13637
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13638
    if-nez v0, :cond_0

    .line 13641
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 13642
    if-nez v0, :cond_0

    .line 13646
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13647
    if-nez v0, :cond_0

    .line 13650
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 13651
    if-nez v0, :cond_0

    .line 13655
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13575
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;
    .locals 1

    .prologue
    .line 13603
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 13575
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 13617
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetGuid()Z
    .locals 1

    .prologue
    .line 13626
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

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

    .line 13660
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 13663
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 13664
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 13687
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 13688
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->validate()V

    .line 13689
    return-void

    .line 13667
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 13683
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 13685
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 13669
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 13670
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 13672
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13676
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 13677
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 13679
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13667
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
    .line 13612
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    .line 13613
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 13621
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    .line 13622
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
    .line 13711
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
    .line 13692
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->validate()V

    .line 13694
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 13695
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13696
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13697
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 13698
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13700
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 13701
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13702
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 13703
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13705
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 13706
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 13707
    return-void
.end method
