.class Lcom/evernote/edam/notestore/NoteStore$createSearch_args;
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
    name = "createSearch_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createSearch_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SEARCH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private search:Lcom/evernote/edam/type/SavedSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10455
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createSearch_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 10457
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 10458
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "search"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->SEARCH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10467
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createSearch_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    .prologue
    .line 10472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10473
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10474
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    .line 10476
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10477
    new-instance v0, Lcom/evernote/edam/type/SavedSearch;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10479
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10486
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    .line 10487
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10488
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createSearch_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    .prologue
    .line 10509
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10510
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

    .line 10534
    :cond_0
    :goto_0
    return v0

    .line 10513
    :cond_1
    const/4 v0, 0x0

    .line 10514
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 10516
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createSearch_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10517
    if-nez v0, :cond_0

    .line 10520
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10521
    if-nez v0, :cond_0

    .line 10525
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetSearch()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetSearch()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10526
    if-nez v0, :cond_0

    .line 10529
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->isSetSearch()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10530
    if-nez v0, :cond_0

    .line 10534
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10454
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createSearch_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createSearch_args;
    .locals 1

    .prologue
    .line 10482
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$createSearch_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 10454
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 10496
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSearch()Z
    .locals 1

    .prologue
    .line 10505
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

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
    .line 10539
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 10542
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 10543
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 10567
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 10568
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->validate()V

    .line 10569
    return-void

    .line 10546
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 10563
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 10565
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 10548
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 10549
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 10551
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10555
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 10556
    new-instance v1, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v1}, Lcom/evernote/edam/type/SavedSearch;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10557
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SavedSearch;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10559
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10546
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
    .line 10491
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    .line 10492
    return-void
.end method

.method public setSearch(Lcom/evernote/edam/type/SavedSearch;)V
    .locals 0
    .param p1, "search"    # Lcom/evernote/edam/type/SavedSearch;

    .prologue
    .line 10500
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10501
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
    .line 10591
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
    .line 10572
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->validate()V

    .line 10574
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 10575
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10576
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10577
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 10578
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 10580
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    if-eqz v0, :cond_1

    .line 10581
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->SEARCH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10582
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SavedSearch;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10583
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 10585
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 10586
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 10587
    return-void
.end method
