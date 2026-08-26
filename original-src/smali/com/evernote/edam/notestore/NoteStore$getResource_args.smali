.class Lcom/evernote/edam/notestore/NoteStore$getResource_args;
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
    name = "getResource_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getResource_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final WITH_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __WITHALTERNATEDATA_ISSET_ID:I = 0x3

.field private static final __WITHATTRIBUTES_ISSET_ID:I = 0x2

.field private static final __WITHDATA_ISSET_ID:I = 0x0

.field private static final __WITHRECOGNITION_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private withAlternateData:Z

.field private withAttributes:Z

.field private withData:Z

.field private withRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    .line 19740
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getResource_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 19742
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19743
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19744
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19745
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withRecognition"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19746
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withAttributes"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19747
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withAlternateData"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19762
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    .line 19765
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getResource_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    .prologue
    const/4 v3, 0x0

    .line 19770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19762
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    .line 19771
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19772
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19773
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    .line 19775
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19776
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    .line 19778
    :cond_1
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    .line 19779
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    .line 19780
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    .line 19781
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    .line 19782
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19789
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    .line 19790
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    .line 19791
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithDataIsSet(Z)V

    .line 19792
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    .line 19793
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithRecognitionIsSet(Z)V

    .line 19794
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    .line 19795
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAttributesIsSet(Z)V

    .line 19796
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    .line 19797
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAlternateDataIsSet(Z)V

    .line 19798
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    .line 19799
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getResource_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    .prologue
    .line 19876
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19877
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

    .line 19937
    :cond_0
    :goto_0
    return v0

    .line 19880
    :cond_1
    const/4 v0, 0x0

    .line 19881
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 19883
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getResource_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19884
    if-nez v0, :cond_0

    .line 19887
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 19888
    if-nez v0, :cond_0

    .line 19892
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19893
    if-nez v0, :cond_0

    .line 19896
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 19897
    if-nez v0, :cond_0

    .line 19901
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19902
    if-nez v0, :cond_0

    .line 19905
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithData()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19906
    if-nez v0, :cond_0

    .line 19910
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithRecognition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithRecognition()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19911
    if-nez v0, :cond_0

    .line 19914
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithRecognition()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19915
    if-nez v0, :cond_0

    .line 19919
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithAttributes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithAttributes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19920
    if-nez v0, :cond_0

    .line 19923
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithAttributes()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19924
    if-nez v0, :cond_0

    .line 19928
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithAlternateData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithAlternateData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19929
    if-nez v0, :cond_0

    .line 19932
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->isSetWithAlternateData()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19933
    if-nez v0, :cond_0

    .line 19937
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19739
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getResource_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResource_args;
    .locals 1

    .prologue
    .line 19785
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getResource_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 19739
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 19807
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

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
    .line 19816
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetWithAlternateData()Z
    .locals 2

    .prologue
    .line 19868
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithAttributes()Z
    .locals 2

    .prologue
    .line 19854
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithData()Z
    .locals 2

    .prologue
    .line 19826
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithRecognition()Z
    .locals 2

    .prologue
    .line 19840
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 19942
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 19945
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 19946
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 20001
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 20002
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->validate()V

    .line 20003
    return-void

    .line 19949
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 19997
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 19999
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 19951
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 19952
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 19954
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19958
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 19959
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 19961
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19965
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 19966
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    .line 19967
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithDataIsSet(Z)V

    goto :goto_1

    .line 19969
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19973
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 19974
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    .line 19975
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithRecognitionIsSet(Z)V

    goto :goto_1

    .line 19977
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19981
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_5

    .line 19982
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    .line 19983
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAttributesIsSet(Z)V

    goto :goto_1

    .line 19985
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19989
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_6

    .line 19990
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    .line 19991
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAlternateDataIsSet(Z)V

    goto :goto_1

    .line 19993
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19949
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 19802
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    .line 19803
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 19811
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    .line 19812
    return-void
.end method

.method public setWithAlternateData(Z)V
    .locals 1
    .param p1, "withAlternateData"    # Z

    .prologue
    .line 19862
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    .line 19863
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAlternateDataIsSet(Z)V

    .line 19864
    return-void
.end method

.method public setWithAlternateDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19872
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 19873
    return-void
.end method

.method public setWithAttributes(Z)V
    .locals 1
    .param p1, "withAttributes"    # Z

    .prologue
    .line 19848
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    .line 19849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAttributesIsSet(Z)V

    .line 19850
    return-void
.end method

.method public setWithAttributesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19858
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 19859
    return-void
.end method

.method public setWithData(Z)V
    .locals 1
    .param p1, "withData"    # Z

    .prologue
    .line 19820
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    .line 19821
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithDataIsSet(Z)V

    .line 19822
    return-void
.end method

.method public setWithDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19830
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 19831
    return-void
.end method

.method public setWithRecognition(Z)V
    .locals 1
    .param p1, "withRecognition"    # Z

    .prologue
    .line 19834
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    .line 19835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithRecognitionIsSet(Z)V

    .line 19836
    return-void
.end method

.method public setWithRecognitionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19844
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 19845
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
    .line 20037
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
    .line 20006
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->validate()V

    .line 20008
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 20009
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20010
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20011
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 20012
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20014
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 20015
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20016
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 20017
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20019
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20020
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 20021
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20022
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20023
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withRecognition:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 20024
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20025
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20026
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAttributes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 20027
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20028
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->WITH_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20029
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->withAlternateData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 20030
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20031
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 20032
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 20033
    return-void
.end method
