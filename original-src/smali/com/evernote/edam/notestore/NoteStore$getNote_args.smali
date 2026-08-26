.class Lcom/evernote/edam/notestore/NoteStore$getNote_args;
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
    name = "getNote_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNote_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final WITH_CONTENT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RESOURCES_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RESOURCES_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RESOURCES_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __WITHCONTENT_ISSET_ID:I = 0x0

.field private static final __WITHRESOURCESALTERNATEDATA_ISSET_ID:I = 0x3

.field private static final __WITHRESOURCESDATA_ISSET_ID:I = 0x1

.field private static final __WITHRESOURCESRECOGNITION_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private withContent:Z

.field private withResourcesAlternateData:Z

.field private withResourcesData:Z

.field private withResourcesRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    .line 13078
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNote_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 13080
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 13081
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 13082
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withContent"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_CONTENT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 13083
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withResourcesData"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_RESOURCES_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 13084
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withResourcesRecognition"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_RESOURCES_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 13085
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withResourcesAlternateData"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_RESOURCES_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13100
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    .line 13103
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNote_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    .prologue
    const/4 v3, 0x0

    .line 13108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13100
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    .line 13109
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13110
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13111
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    .line 13113
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13114
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    .line 13116
    :cond_1
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    .line 13117
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    .line 13118
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    .line 13119
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    .line 13120
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13127
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    .line 13128
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    .line 13129
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithContentIsSet(Z)V

    .line 13130
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    .line 13131
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesDataIsSet(Z)V

    .line 13132
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    .line 13133
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesRecognitionIsSet(Z)V

    .line 13134
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    .line 13135
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesAlternateDataIsSet(Z)V

    .line 13136
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    .line 13137
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNote_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    .prologue
    .line 13214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13215
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

    .line 13275
    :cond_0
    :goto_0
    return v0

    .line 13218
    :cond_1
    const/4 v0, 0x0

    .line 13219
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 13221
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNote_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13222
    if-nez v0, :cond_0

    .line 13225
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 13226
    if-nez v0, :cond_0

    .line 13230
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13231
    if-nez v0, :cond_0

    .line 13234
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 13235
    if-nez v0, :cond_0

    .line 13239
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithContent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithContent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13240
    if-nez v0, :cond_0

    .line 13243
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithContent()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 13244
    if-nez v0, :cond_0

    .line 13248
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13249
    if-nez v0, :cond_0

    .line 13252
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesData()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 13253
    if-nez v0, :cond_0

    .line 13257
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesRecognition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesRecognition()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13258
    if-nez v0, :cond_0

    .line 13261
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesRecognition()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 13262
    if-nez v0, :cond_0

    .line 13266
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesAlternateData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesAlternateData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 13267
    if-nez v0, :cond_0

    .line 13270
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->isSetWithResourcesAlternateData()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 13271
    if-nez v0, :cond_0

    .line 13275
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13077
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNote_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNote_args;
    .locals 1

    .prologue
    .line 13123
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNote_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 13077
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 13145
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

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
    .line 13154
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetWithContent()Z
    .locals 2

    .prologue
    .line 13164
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithResourcesAlternateData()Z
    .locals 2

    .prologue
    .line 13206
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithResourcesData()Z
    .locals 2

    .prologue
    .line 13178
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithResourcesRecognition()Z
    .locals 2

    .prologue
    .line 13192
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x2

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

    .line 13280
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 13283
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 13284
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 13339
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 13340
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->validate()V

    .line 13341
    return-void

    .line 13287
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 13335
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 13337
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 13289
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 13290
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 13292
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13296
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 13297
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 13299
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13303
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 13304
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    .line 13305
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithContentIsSet(Z)V

    goto :goto_1

    .line 13307
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13311
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 13312
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    .line 13313
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesDataIsSet(Z)V

    goto :goto_1

    .line 13315
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13319
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_5

    .line 13320
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    .line 13321
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesRecognitionIsSet(Z)V

    goto :goto_1

    .line 13323
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13327
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_6

    .line 13328
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    .line 13329
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesAlternateDataIsSet(Z)V

    goto :goto_1

    .line 13331
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13287
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
    .line 13140
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    .line 13141
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 13149
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    .line 13150
    return-void
.end method

.method public setWithContent(Z)V
    .locals 1
    .param p1, "withContent"    # Z

    .prologue
    .line 13158
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    .line 13159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithContentIsSet(Z)V

    .line 13160
    return-void
.end method

.method public setWithContentIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 13168
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 13169
    return-void
.end method

.method public setWithResourcesAlternateData(Z)V
    .locals 1
    .param p1, "withResourcesAlternateData"    # Z

    .prologue
    .line 13200
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    .line 13201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesAlternateDataIsSet(Z)V

    .line 13202
    return-void
.end method

.method public setWithResourcesAlternateDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 13210
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 13211
    return-void
.end method

.method public setWithResourcesData(Z)V
    .locals 1
    .param p1, "withResourcesData"    # Z

    .prologue
    .line 13172
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    .line 13173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesDataIsSet(Z)V

    .line 13174
    return-void
.end method

.method public setWithResourcesDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 13182
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 13183
    return-void
.end method

.method public setWithResourcesRecognition(Z)V
    .locals 1
    .param p1, "withResourcesRecognition"    # Z

    .prologue
    .line 13186
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    .line 13187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesRecognitionIsSet(Z)V

    .line 13188
    return-void
.end method

.method public setWithResourcesRecognitionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 13196
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 13197
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
    .line 13375
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
    .line 13344
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->validate()V

    .line 13346
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 13347
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13348
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13349
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 13350
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13352
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 13353
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13354
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 13355
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13357
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_CONTENT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13358
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withContent:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 13359
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13360
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_RESOURCES_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13361
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 13362
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13363
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_RESOURCES_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13364
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesRecognition:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 13365
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13366
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->WITH_RESOURCES_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13367
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->withResourcesAlternateData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 13368
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13369
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 13370
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 13371
    return-void
.end method
