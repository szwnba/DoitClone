.class public Lcom/evernote/edam/type/SavedSearchScope;
.super Ljava/lang/Object;
.source "SavedSearchScope.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/type/SavedSearchScope;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_ACCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __INCLUDEACCOUNT_ISSET_ID:I = 0x0

.field private static final __INCLUDEBUSINESSLINKEDNOTEBOOKS_ISSET_ID:I = 0x2

.field private static final __INCLUDEPERSONALLINKEDNOTEBOOKS_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private includeAccount:Z

.field private includeBusinessLinkedNotebooks:Z

.field private includePersonalLinkedNotebooks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 36
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SavedSearchScope"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 38
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeAccount"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_ACCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 39
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includePersonalLinkedNotebooks"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 40
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeBusinessLinkedNotebooks"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SavedSearchScope;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SavedSearchScope;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    .line 60
    iget-object v0, p1, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-boolean v0, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    .line 62
    iget-boolean v0, p1, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    .line 63
    iget-boolean v0, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeAccountIsSet(Z)V

    .line 72
    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    .line 73
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludePersonalLinkedNotebooksIsSet(Z)V

    .line 74
    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    .line 75
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeBusinessLinkedNotebooksIsSet(Z)V

    .line 76
    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    .line 77
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SavedSearchScope;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SavedSearchScope;

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
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

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 199
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 201
    .local v1, "typedOther":Lcom/evernote/edam/type/SavedSearchScope;
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 202
    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 206
    if-nez v0, :cond_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 211
    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 215
    if-nez v0, :cond_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 220
    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 228
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lcom/evernote/edam/type/SavedSearchScope;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->compareTo(Lcom/evernote/edam/type/SavedSearchScope;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SavedSearchScope;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/evernote/edam/type/SavedSearchScope;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SavedSearchScope;-><init>(Lcom/evernote/edam/type/SavedSearchScope;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->deepCopy()Lcom/evernote/edam/type/SavedSearchScope;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/SavedSearchScope;)Z
    .locals 9
    .param p1, "that"    # Lcom/evernote/edam/type/SavedSearchScope;

    .prologue
    const/4 v6, 0x0

    .line 155
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v6

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v3

    .line 159
    .local v3, "this_present_includeAccount":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v0

    .line 160
    .local v0, "that_present_includeAccount":Z
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 161
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 163
    iget-boolean v7, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    iget-boolean v8, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    if-ne v7, v8, :cond_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v5

    .line 168
    .local v5, "this_present_includePersonalLinkedNotebooks":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v2

    .line 169
    .local v2, "that_present_includePersonalLinkedNotebooks":Z
    if-nez v5, :cond_4

    if-eqz v2, :cond_5

    .line 170
    :cond_4
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 172
    iget-boolean v7, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    iget-boolean v8, p1, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    if-ne v7, v8, :cond_0

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v4

    .line 177
    .local v4, "this_present_includeBusinessLinkedNotebooks":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v1

    .line 178
    .local v1, "that_present_includeBusinessLinkedNotebooks":Z
    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    .line 179
    :cond_6
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 181
    iget-boolean v7, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    iget-boolean v8, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    if-ne v7, v8, :cond_0

    .line 185
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 147
    if-nez p1, :cond_1

    .line 151
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 149
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/SavedSearchScope;

    if-eqz v1, :cond_0

    .line 150
    check-cast p1, Lcom/evernote/edam/type/SavedSearchScope;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->equals(Lcom/evernote/edam/type/SavedSearchScope;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public isIncludeAccount()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    return v0
.end method

.method public isIncludeBusinessLinkedNotebooks()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    return v0
.end method

.method public isIncludePersonalLinkedNotebooks()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    return v0
.end method

.method public isSetIncludeAccount()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeBusinessLinkedNotebooks()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludePersonalLinkedNotebooks()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 233
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 236
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 237
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 271
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->validate()V

    .line 272
    return-void

    .line 240
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 266
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 268
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 242
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    .line 244
    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeAccountIsSet(Z)V

    goto :goto_1

    .line 246
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 250
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 251
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    .line 252
    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludePersonalLinkedNotebooksIsSet(Z)V

    goto :goto_1

    .line 254
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 258
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 259
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    .line 260
    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeBusinessLinkedNotebooksIsSet(Z)V

    goto :goto_1

    .line 262
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIncludeAccount(Z)V
    .locals 1
    .param p1, "includeAccount"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeAccountIsSet(Z)V

    .line 86
    return-void
.end method

.method public setIncludeAccountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 99
    return-void
.end method

.method public setIncludeBusinessLinkedNotebooks(Z)V
    .locals 1
    .param p1, "includeBusinessLinkedNotebooks"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeBusinessLinkedNotebooksIsSet(Z)V

    .line 130
    return-void
.end method

.method public setIncludeBusinessLinkedNotebooksIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 143
    return-void
.end method

.method public setIncludePersonalLinkedNotebooks(Z)V
    .locals 1
    .param p1, "includePersonalLinkedNotebooks"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludePersonalLinkedNotebooksIsSet(Z)V

    .line 108
    return-void
.end method

.method public setIncludePersonalLinkedNotebooksIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SavedSearchScope("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 302
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const-string v2, "includeAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-boolean v2, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    const/4 v0, 0x0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    const-string v2, "includePersonalLinkedNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-boolean v2, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    const/4 v0, 0x0

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 314
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_3
    const-string v2, "includeBusinessLinkedNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-boolean v2, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    const/4 v0, 0x0

    .line 319
    :cond_4
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unsetIncludeAccount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 90
    return-void
.end method

.method public unsetIncludeBusinessLinkedNotebooks()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 134
    return-void
.end method

.method public unsetIncludePersonalLinkedNotebooks()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 112
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
    .line 325
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
    .line 275
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->validate()V

    .line 277
    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 278
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_ACCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 280
    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 281
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 285
    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 286
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 290
    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 291
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 293
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 294
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 295
    return-void
.end method
