.class Lcom/evernote/edam/notestore/NoteStore$findRelated_args;
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
    name = "findRelated_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findRelated_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final QUERY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RESULT_SPEC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private query:Lcom/evernote/edam/notestore/RelatedQuery;

.field private resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 29708
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "findRelated_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 29710
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29711
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "query"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->QUERY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29712
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "resultSpec"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->RESULT_SPEC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29722
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findRelated_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    .prologue
    .line 29727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29728
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29729
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    .line 29731
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29732
    new-instance v0, Lcom/evernote/edam/notestore/RelatedQuery;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/RelatedQuery;-><init>(Lcom/evernote/edam/notestore/RelatedQuery;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    .line 29734
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetResultSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29735
    new-instance v0, Lcom/evernote/edam/notestore/RelatedResultSpec;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;-><init>(Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    .line 29737
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29744
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    .line 29745
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    .line 29746
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    .line 29747
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findRelated_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    .prologue
    .line 29777
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29778
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

    .line 29811
    :cond_0
    :goto_0
    return v0

    .line 29781
    :cond_1
    const/4 v0, 0x0

    .line 29782
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 29784
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$findRelated_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29785
    if-nez v0, :cond_0

    .line 29788
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29789
    if-nez v0, :cond_0

    .line 29793
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetQuery()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetQuery()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29794
    if-nez v0, :cond_0

    .line 29797
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetQuery()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29798
    if-nez v0, :cond_0

    .line 29802
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetResultSpec()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetResultSpec()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29803
    if-nez v0, :cond_0

    .line 29806
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->isSetResultSpec()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29807
    if-nez v0, :cond_0

    .line 29811
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29707
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findRelated_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findRelated_args;
    .locals 1

    .prologue
    .line 29740
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$findRelated_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 29707
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 29755
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetQuery()Z
    .locals 1

    .prologue
    .line 29764
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetResultSpec()Z
    .locals 1

    .prologue
    .line 29773
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 29816
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 29819
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 29820
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 29852
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 29853
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->validate()V

    .line 29854
    return-void

    .line 29823
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 29848
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 29850
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 29825
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 29826
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 29828
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29832
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 29833
    new-instance v1, Lcom/evernote/edam/notestore/RelatedQuery;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/RelatedQuery;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    .line 29834
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/RelatedQuery;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 29836
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29840
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 29841
    new-instance v1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    .line 29842
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 29844
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29823
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
    .line 29750
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    .line 29751
    return-void
.end method

.method public setQuery(Lcom/evernote/edam/notestore/RelatedQuery;)V
    .locals 0
    .param p1, "query"    # Lcom/evernote/edam/notestore/RelatedQuery;

    .prologue
    .line 29759
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    .line 29760
    return-void
.end method

.method public setResultSpec(Lcom/evernote/edam/notestore/RelatedResultSpec;)V
    .locals 0
    .param p1, "resultSpec"    # Lcom/evernote/edam/notestore/RelatedResultSpec;

    .prologue
    .line 29768
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    .line 29769
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
    .line 29881
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
    .line 29857
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->validate()V

    .line 29859
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 29860
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29861
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29862
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 29863
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29865
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    if-eqz v0, :cond_1

    .line 29866
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->QUERY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29867
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->query:Lcom/evernote/edam/notestore/RelatedQuery;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/RelatedQuery;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29868
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29870
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    if-eqz v0, :cond_2

    .line 29871
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->RESULT_SPEC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29872
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->resultSpec:Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29873
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29875
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 29876
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 29877
    return-void
.end method
