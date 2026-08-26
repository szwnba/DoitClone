.class Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;
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
    name = "updateSearch_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;",
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
    .line 10760
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "updateSearch_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 10762
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 10763
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "search"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->SEARCH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10772
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    .prologue
    .line 10777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10778
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10779
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    .line 10781
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10782
    new-instance v0, Lcom/evernote/edam/type/SavedSearch;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10784
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10791
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    .line 10792
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10793
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    .prologue
    .line 10814
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10815
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

    .line 10839
    :cond_0
    :goto_0
    return v0

    .line 10818
    :cond_1
    const/4 v0, 0x0

    .line 10819
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 10821
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10822
    if-nez v0, :cond_0

    .line 10825
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10826
    if-nez v0, :cond_0

    .line 10830
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetSearch()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetSearch()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10831
    if-nez v0, :cond_0

    .line 10834
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->isSetSearch()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10835
    if-nez v0, :cond_0

    .line 10839
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10759
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;
    .locals 1

    .prologue
    .line 10787
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 10759
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 10801
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

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
    .line 10810
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

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
    .line 10844
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 10847
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 10848
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 10872
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 10873
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->validate()V

    .line 10874
    return-void

    .line 10851
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 10868
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 10870
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 10853
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 10854
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 10856
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10860
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 10861
    new-instance v1, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v1}, Lcom/evernote/edam/type/SavedSearch;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10862
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SavedSearch;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10864
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10851
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
    .line 10796
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    .line 10797
    return-void
.end method

.method public setSearch(Lcom/evernote/edam/type/SavedSearch;)V
    .locals 0
    .param p1, "search"    # Lcom/evernote/edam/type/SavedSearch;

    .prologue
    .line 10805
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    .line 10806
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
    .line 10896
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
    .line 10877
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->validate()V

    .line 10879
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 10880
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10881
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10882
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 10883
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 10885
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    if-eqz v0, :cond_1

    .line 10886
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->SEARCH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10887
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->search:Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SavedSearch;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10888
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 10890
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 10891
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 10892
    return-void
.end method
