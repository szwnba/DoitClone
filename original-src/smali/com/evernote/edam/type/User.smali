.class public Lcom/evernote/edam/type/User;
.super Ljava/lang/Object;
.source "User.java"

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
        "Lcom/evernote/edam/type/User;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ACCOUNTING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARD_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TIMEZONE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ACTIVE_ISSET_ID:I = 0x4

.field private static final __CREATED_ISSET_ID:I = 0x1

.field private static final __DELETED_ISSET_ID:I = 0x3

.field private static final __ID_ISSET_ID:I = 0x0

.field private static final __UPDATED_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private accounting:Lcom/evernote/edam/type/Accounting;

.field private active:Z

.field private attributes:Lcom/evernote/edam/type/UserAttributes;

.field private businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

.field private created:J

.field private deleted:J

.field private email:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

.field private privilege:Lcom/evernote/edam/type/PrivilegeLevel;

.field private shardId:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private updated:J

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0xb

    .line 122
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "User"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/User;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 124
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "id"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 125
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "username"

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 126
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "email"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 127
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 128
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "timezone"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->TIMEZONE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 129
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "privilege"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 130
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "created"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 131
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updated"

    invoke-direct {v0, v1, v4, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 132
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 133
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "active"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 134
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "shardId"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->SHARD_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 135
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "attributes"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 136
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "accounting"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ACCOUNTING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 137
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumInfo"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->PREMIUM_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 138
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessUserInfo"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->BUSINESS_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/User;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/User;

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    .line 172
    iget-object v0, p1, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v0, p1, Lcom/evernote/edam/type/User;->id:I

    iput v0, p0, Lcom/evernote/edam/type/User;->id:I

    .line 174
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p1, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p1, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p1, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    .line 183
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p1, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    .line 186
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p1, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    .line 189
    :cond_4
    iget-wide v0, p1, Lcom/evernote/edam/type/User;->created:J

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    .line 190
    iget-wide v0, p1, Lcom/evernote/edam/type/User;->updated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    .line 191
    iget-wide v0, p1, Lcom/evernote/edam/type/User;->deleted:J

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    .line 192
    iget-boolean v0, p1, Lcom/evernote/edam/type/User;->active:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    .line 193
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p1, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    .line 196
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    new-instance v0, Lcom/evernote/edam/type/UserAttributes;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/UserAttributes;-><init>(Lcom/evernote/edam/type/UserAttributes;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 199
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    new-instance v0, Lcom/evernote/edam/type/Accounting;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Accounting;-><init>(Lcom/evernote/edam/type/Accounting;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 202
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    new-instance v0, Lcom/evernote/edam/type/PremiumInfo;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/PremiumInfo;-><init>(Lcom/evernote/edam/type/PremiumInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 205
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    new-instance v0, Lcom/evernote/edam/type/BusinessUserInfo;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/BusinessUserInfo;-><init>(Lcom/evernote/edam/type/BusinessUserInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    .line 208
    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/User;->setIdIsSet(Z)V

    .line 216
    iput v1, p0, Lcom/evernote/edam/type/User;->id:I

    .line 217
    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    .line 222
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/User;->setCreatedIsSet(Z)V

    .line 223
    iput-wide v2, p0, Lcom/evernote/edam/type/User;->created:J

    .line 224
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/User;->setUpdatedIsSet(Z)V

    .line 225
    iput-wide v2, p0, Lcom/evernote/edam/type/User;->updated:J

    .line 226
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/User;->setDeletedIsSet(Z)V

    .line 227
    iput-wide v2, p0, Lcom/evernote/edam/type/User;->deleted:J

    .line 228
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/User;->setActiveIsSet(Z)V

    .line 229
    iput-boolean v1, p0, Lcom/evernote/edam/type/User;->active:Z

    .line 230
    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 232
    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 233
    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 234
    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    .line 235
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/User;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 742
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 743
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

    .line 884
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    const/4 v0, 0x0

    .line 747
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 749
    .local v1, "typedOther":Lcom/evernote/edam/type/User;
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 750
    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/type/User;->id:I

    iget v3, v1, Lcom/evernote/edam/type/User;->id:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 754
    if-nez v0, :cond_0

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 759
    if-nez v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 763
    if-nez v0, :cond_0

    .line 767
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 768
    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 772
    if-nez v0, :cond_0

    .line 776
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 777
    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 781
    if-nez v0, :cond_0

    .line 785
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 786
    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 790
    if-nez v0, :cond_0

    .line 794
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 795
    if-nez v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 799
    if-nez v0, :cond_0

    .line 803
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 804
    if-nez v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v2, p0, Lcom/evernote/edam/type/User;->created:J

    iget-wide v4, v1, Lcom/evernote/edam/type/User;->created:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 808
    if-nez v0, :cond_0

    .line 812
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 813
    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-wide v2, p0, Lcom/evernote/edam/type/User;->updated:J

    iget-wide v4, v1, Lcom/evernote/edam/type/User;->updated:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 817
    if-nez v0, :cond_0

    .line 821
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 822
    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lcom/evernote/edam/type/User;->deleted:J

    iget-wide v4, v1, Lcom/evernote/edam/type/User;->deleted:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 826
    if-nez v0, :cond_0

    .line 830
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 831
    if-nez v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/evernote/edam/type/User;->active:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/User;->active:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 835
    if-nez v0, :cond_0

    .line 839
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 840
    if-nez v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 844
    if-nez v0, :cond_0

    .line 848
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 849
    if-nez v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 853
    if-nez v0, :cond_0

    .line 857
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 858
    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 862
    if-nez v0, :cond_0

    .line 866
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 867
    if-nez v0, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 871
    if-nez v0, :cond_0

    .line 875
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 876
    if-nez v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    iget-object v3, v1, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 880
    if-nez v0, :cond_0

    .line 884
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Lcom/evernote/edam/type/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->compareTo(Lcom/evernote/edam/type/User;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/User;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/evernote/edam/type/User;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/User;-><init>(Lcom/evernote/edam/type/User;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->deepCopy()Lcom/evernote/edam/type/User;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/User;)Z
    .locals 36
    .param p1, "that"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 596
    const/16 v32, 0x0

    .line 733
    :goto_0
    return v32

    .line 598
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v24

    .line 599
    .local v24, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v9

    .line 600
    .local v9, "that_present_id":Z
    if-nez v24, :cond_1

    if-eqz v9, :cond_4

    .line 601
    :cond_1
    if-eqz v24, :cond_2

    if-nez v9, :cond_3

    .line 602
    :cond_2
    const/16 v32, 0x0

    goto :goto_0

    .line 603
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/User;->id:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/User;->id:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 604
    const/16 v32, 0x0

    goto :goto_0

    .line 607
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v31

    .line 608
    .local v31, "this_present_username":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v16

    .line 609
    .local v16, "that_present_username":Z
    if-nez v31, :cond_5

    if-eqz v16, :cond_8

    .line 610
    :cond_5
    if-eqz v31, :cond_6

    if-nez v16, :cond_7

    .line 611
    :cond_6
    const/16 v32, 0x0

    goto :goto_0

    .line 612
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_8

    .line 613
    const/16 v32, 0x0

    goto :goto_0

    .line 616
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v23

    .line 617
    .local v23, "this_present_email":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v8

    .line 618
    .local v8, "that_present_email":Z
    if-nez v23, :cond_9

    if-eqz v8, :cond_c

    .line 619
    :cond_9
    if-eqz v23, :cond_a

    if-nez v8, :cond_b

    .line 620
    :cond_a
    const/16 v32, 0x0

    goto :goto_0

    .line 621
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 622
    const/16 v32, 0x0

    goto :goto_0

    .line 625
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v25

    .line 626
    .local v25, "this_present_name":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v10

    .line 627
    .local v10, "that_present_name":Z
    if-nez v25, :cond_d

    if-eqz v10, :cond_10

    .line 628
    :cond_d
    if-eqz v25, :cond_e

    if-nez v10, :cond_f

    .line 629
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 630
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 631
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 634
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v29

    .line 635
    .local v29, "this_present_timezone":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v14

    .line 636
    .local v14, "that_present_timezone":Z
    if-nez v29, :cond_11

    if-eqz v14, :cond_14

    .line 637
    :cond_11
    if-eqz v29, :cond_12

    if-nez v14, :cond_13

    .line 638
    :cond_12
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 639
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    .line 640
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 643
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v27

    .line 644
    .local v27, "this_present_privilege":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v12

    .line 645
    .local v12, "that_present_privilege":Z
    if-nez v27, :cond_15

    if-eqz v12, :cond_18

    .line 646
    :cond_15
    if-eqz v27, :cond_16

    if-nez v12, :cond_17

    .line 647
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 648
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/evernote/edam/type/PrivilegeLevel;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_18

    .line 649
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 652
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v21

    .line 653
    .local v21, "this_present_created":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v6

    .line 654
    .local v6, "that_present_created":Z
    if-nez v21, :cond_19

    if-eqz v6, :cond_1c

    .line 655
    :cond_19
    if-eqz v21, :cond_1a

    if-nez v6, :cond_1b

    .line 656
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 657
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/User;->created:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/User;->created:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_1c

    .line 658
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 661
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v30

    .line 662
    .local v30, "this_present_updated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v15

    .line 663
    .local v15, "that_present_updated":Z
    if-nez v30, :cond_1d

    if-eqz v15, :cond_20

    .line 664
    :cond_1d
    if-eqz v30, :cond_1e

    if-nez v15, :cond_1f

    .line 665
    :cond_1e
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 666
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/User;->updated:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/User;->updated:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_20

    .line 667
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 670
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v22

    .line 671
    .local v22, "this_present_deleted":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v7

    .line 672
    .local v7, "that_present_deleted":Z
    if-nez v22, :cond_21

    if-eqz v7, :cond_24

    .line 673
    :cond_21
    if-eqz v22, :cond_22

    if-nez v7, :cond_23

    .line 674
    :cond_22
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 675
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/User;->deleted:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/User;->deleted:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_24

    .line 676
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 679
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v18

    .line 680
    .local v18, "this_present_active":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v3

    .line 681
    .local v3, "that_present_active":Z
    if-nez v18, :cond_25

    if-eqz v3, :cond_28

    .line 682
    :cond_25
    if-eqz v18, :cond_26

    if-nez v3, :cond_27

    .line 683
    :cond_26
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 684
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/User;->active:Z

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/User;->active:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_28

    .line 685
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 688
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v28

    .line 689
    .local v28, "this_present_shardId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v13

    .line 690
    .local v13, "that_present_shardId":Z
    if-nez v28, :cond_29

    if-eqz v13, :cond_2c

    .line 691
    :cond_29
    if-eqz v28, :cond_2a

    if-nez v13, :cond_2b

    .line 692
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 693
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_2c

    .line 694
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 697
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v19

    .line 698
    .local v19, "this_present_attributes":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v4

    .line 699
    .local v4, "that_present_attributes":Z
    if-nez v19, :cond_2d

    if-eqz v4, :cond_30

    .line 700
    :cond_2d
    if-eqz v19, :cond_2e

    if-nez v4, :cond_2f

    .line 701
    :cond_2e
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 702
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/evernote/edam/type/UserAttributes;->equals(Lcom/evernote/edam/type/UserAttributes;)Z

    move-result v32

    if-nez v32, :cond_30

    .line 703
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 706
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v17

    .line 707
    .local v17, "this_present_accounting":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v2

    .line 708
    .local v2, "that_present_accounting":Z
    if-nez v17, :cond_31

    if-eqz v2, :cond_34

    .line 709
    :cond_31
    if-eqz v17, :cond_32

    if-nez v2, :cond_33

    .line 710
    :cond_32
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 711
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/evernote/edam/type/Accounting;->equals(Lcom/evernote/edam/type/Accounting;)Z

    move-result v32

    if-nez v32, :cond_34

    .line 712
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 715
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v26

    .line 716
    .local v26, "this_present_premiumInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v11

    .line 717
    .local v11, "that_present_premiumInfo":Z
    if-nez v26, :cond_35

    if-eqz v11, :cond_38

    .line 718
    :cond_35
    if-eqz v26, :cond_36

    if-nez v11, :cond_37

    .line 719
    :cond_36
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 720
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/evernote/edam/type/PremiumInfo;->equals(Lcom/evernote/edam/type/PremiumInfo;)Z

    move-result v32

    if-nez v32, :cond_38

    .line 721
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 724
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v20

    .line 725
    .local v20, "this_present_businessUserInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v5

    .line 726
    .local v5, "that_present_businessUserInfo":Z
    if-nez v20, :cond_39

    if-eqz v5, :cond_3c

    .line 727
    :cond_39
    if-eqz v20, :cond_3a

    if-nez v5, :cond_3b

    .line 728
    :cond_3a
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 729
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/evernote/edam/type/BusinessUserInfo;->equals(Lcom/evernote/edam/type/BusinessUserInfo;)Z

    move-result v32

    if-nez v32, :cond_3c

    .line 730
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 733
    :cond_3c
    const/16 v32, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 587
    if-nez p1, :cond_1

    .line 591
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 589
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/User;

    if-eqz v1, :cond_0

    .line 590
    check-cast p1, Lcom/evernote/edam/type/User;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->equals(Lcom/evernote/edam/type/User;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccounting()Lcom/evernote/edam/type/Accounting;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    return-object v0
.end method

.method public getAttributes()Lcom/evernote/edam/type/UserAttributes;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    return-object v0
.end method

.method public getBusinessUserInfo()Lcom/evernote/edam/type/BusinessUserInfo;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    return-wide v0
.end method

.method public getDeleted()J
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/evernote/edam/type/User;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    return-object v0
.end method

.method public getPrivilege()Lcom/evernote/edam/type/PrivilegeLevel;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object v0
.end method

.method public getShardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    return v0
.end method

.method public isSetAccounting()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetActive()Z
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetAttributes()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetBusinessUserInfo()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCreated()Z
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetDeleted()Z
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetEmail()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetId()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetName()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPremiumInfo()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPrivilege()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetShardId()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTimezone()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUpdated()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUsername()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 9
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/16 v7, 0xa

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x1

    .line 889
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 892
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 893
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1016
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1017
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->validate()V

    .line 1018
    return-void

    .line 896
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1012
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 1014
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 898
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v8, :cond_1

    .line 899
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/User;->id:I

    .line 900
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/User;->setIdIsSet(Z)V

    goto :goto_1

    .line 902
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 906
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 907
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    goto :goto_1

    .line 909
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 913
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_3

    .line 914
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    goto :goto_1

    .line 916
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 920
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_4

    .line 921
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    goto :goto_1

    .line 923
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 927
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_5

    .line 928
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    goto :goto_1

    .line 930
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 934
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v8, :cond_6

    .line 935
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/PrivilegeLevel;->findByValue(I)Lcom/evernote/edam/type/PrivilegeLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    goto :goto_1

    .line 937
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 941
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_7

    .line 942
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/User;->created:J

    .line 943
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/User;->setCreatedIsSet(Z)V

    goto :goto_1

    .line 945
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 949
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_8

    .line 950
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/User;->updated:J

    .line 951
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/User;->setUpdatedIsSet(Z)V

    goto/16 :goto_1

    .line 953
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 957
    :pswitch_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_9

    .line 958
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/User;->deleted:J

    .line 959
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/User;->setDeletedIsSet(Z)V

    goto/16 :goto_1

    .line 961
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 965
    :pswitch_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 966
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/User;->active:Z

    .line 967
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/User;->setActiveIsSet(Z)V

    goto/16 :goto_1

    .line 969
    :cond_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 973
    :pswitch_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_b

    .line 974
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    goto/16 :goto_1

    .line 976
    :cond_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 980
    :pswitch_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_c

    .line 981
    new-instance v1, Lcom/evernote/edam/type/UserAttributes;

    invoke-direct {v1}, Lcom/evernote/edam/type/UserAttributes;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 982
    iget-object v1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/UserAttributes;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 984
    :cond_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 988
    :pswitch_d
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_d

    .line 989
    new-instance v1, Lcom/evernote/edam/type/Accounting;

    invoke-direct {v1}, Lcom/evernote/edam/type/Accounting;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 990
    iget-object v1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Accounting;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 992
    :cond_d
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 996
    :pswitch_e
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_e

    .line 997
    new-instance v1, Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v1}, Lcom/evernote/edam/type/PremiumInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 998
    iget-object v1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/PremiumInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 1000
    :cond_e
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1004
    :pswitch_f
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_f

    .line 1005
    new-instance v1, Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-direct {v1}, Lcom/evernote/edam/type/BusinessUserInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    .line 1006
    iget-object v1, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 1008
    :cond_f
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setAccounting(Lcom/evernote/edam/type/Accounting;)V
    .locals 0
    .param p1, "accounting"    # Lcom/evernote/edam/type/Accounting;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 522
    return-void
.end method

.method public setAccountingIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 537
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/evernote/edam/type/User;->active:Z

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setActiveIsSet(Z)V

    .line 455
    return-void
.end method

.method public setActiveIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 468
    return-void
.end method

.method public setAttributes(Lcom/evernote/edam/type/UserAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lcom/evernote/edam/type/UserAttributes;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 499
    return-void
.end method

.method public setAttributesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 514
    :cond_0
    return-void
.end method

.method public setBusinessUserInfo(Lcom/evernote/edam/type/BusinessUserInfo;)V
    .locals 0
    .param p1, "businessUserInfo"    # Lcom/evernote/edam/type/BusinessUserInfo;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    .line 568
    return-void
.end method

.method public setBusinessUserInfoIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    .line 583
    :cond_0
    return-void
.end method

.method public setCreated(J)V
    .locals 1
    .param p1, "created"    # J

    .prologue
    .line 387
    iput-wide p1, p0, Lcom/evernote/edam/type/User;->created:J

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setCreatedIsSet(Z)V

    .line 389
    return-void
.end method

.method public setCreatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 401
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 402
    return-void
.end method

.method public setDeleted(J)V
    .locals 1
    .param p1, "deleted"    # J

    .prologue
    .line 431
    iput-wide p1, p0, Lcom/evernote/edam/type/User;->deleted:J

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setDeletedIsSet(Z)V

    .line 433
    return-void
.end method

.method public setDeletedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 445
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 446
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setEmailIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    .line 303
    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/evernote/edam/type/User;->id:I

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setIdIsSet(Z)V

    .line 244
    return-void
.end method

.method public setIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 257
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    .line 326
    :cond_0
    return-void
.end method

.method public setPremiumInfo(Lcom/evernote/edam/type/PremiumInfo;)V
    .locals 0
    .param p1, "premiumInfo"    # Lcom/evernote/edam/type/PremiumInfo;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 545
    return-void
.end method

.method public setPremiumInfoIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 560
    :cond_0
    return-void
.end method

.method public setPrivilege(Lcom/evernote/edam/type/PrivilegeLevel;)V
    .locals 0
    .param p1, "privilege"    # Lcom/evernote/edam/type/PrivilegeLevel;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    .line 365
    return-void
.end method

.method public setPrivilegeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    .line 380
    :cond_0
    return-void
.end method

.method public setShardId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shardId"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setShardIdIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    .line 491
    :cond_0
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setTimezoneIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    .line 349
    :cond_0
    return-void
.end method

.method public setUpdated(J)V
    .locals 1
    .param p1, "updated"    # J

    .prologue
    .line 409
    iput-wide p1, p0, Lcom/evernote/edam/type/User;->updated:J

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setUpdatedIsSet(Z)V

    .line 411
    return-void
.end method

.method public setUpdatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 424
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setUsernameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    .line 280
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1128
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    iget v2, p0, Lcom/evernote/edam/type/User;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1131
    const/4 v0, 0x0

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_1
    const-string v2, "username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v2, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 1137
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :goto_0
    const/4 v0, 0x0

    .line 1143
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1144
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_3
    const-string v2, "email:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    iget-object v2, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 1147
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    :goto_1
    const/4 v0, 0x0

    .line 1153
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1154
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :cond_5
    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    iget-object v2, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 1157
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    :goto_2
    const/4 v0, 0x0

    .line 1163
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1164
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_7
    const-string v2, "timezone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    iget-object v2, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 1167
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    :goto_3
    const/4 v0, 0x0

    .line 1173
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1174
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :cond_9
    const-string v2, "privilege:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    iget-object v2, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    if-nez v2, :cond_21

    .line 1177
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    :goto_4
    const/4 v0, 0x0

    .line 1183
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1184
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_b
    const-string v2, "created:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-wide v2, p0, Lcom/evernote/edam/type/User;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1187
    const/4 v0, 0x0

    .line 1189
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1190
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :cond_d
    const-string v2, "updated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget-wide v2, p0, Lcom/evernote/edam/type/User;->updated:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1193
    const/4 v0, 0x0

    .line 1195
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1196
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    :cond_f
    const-string v2, "deleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    iget-wide v2, p0, Lcom/evernote/edam/type/User;->deleted:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1199
    const/4 v0, 0x0

    .line 1201
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1202
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_11
    const-string v2, "active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-boolean v2, p0, Lcom/evernote/edam/type/User;->active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1205
    const/4 v0, 0x0

    .line 1207
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1208
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_13
    const-string v2, "shardId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    iget-object v2, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 1211
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    :goto_5
    const/4 v0, 0x0

    .line 1217
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1218
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_15
    const-string v2, "attributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    iget-object v2, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    if-nez v2, :cond_23

    .line 1221
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :goto_6
    const/4 v0, 0x0

    .line 1227
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1228
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_17
    const-string v2, "accounting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v2, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    if-nez v2, :cond_24

    .line 1231
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :goto_7
    const/4 v0, 0x0

    .line 1237
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1238
    if-nez v0, :cond_19

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_19
    const-string v2, "premiumInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    iget-object v2, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    if-nez v2, :cond_25

    .line 1241
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :goto_8
    const/4 v0, 0x0

    .line 1247
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1248
    if-nez v0, :cond_1b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_1b
    const-string v2, "businessUserInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    iget-object v2, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    if-nez v2, :cond_26

    .line 1251
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :goto_9
    const/4 v0, 0x0

    .line 1257
    :cond_1c
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1139
    :cond_1d
    iget-object v2, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1149
    :cond_1e
    iget-object v2, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1159
    :cond_1f
    iget-object v2, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1169
    :cond_20
    iget-object v2, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1179
    :cond_21
    iget-object v2, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1213
    :cond_22
    iget-object v2, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1223
    :cond_23
    iget-object v2, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1233
    :cond_24
    iget-object v2, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1243
    :cond_25
    iget-object v2, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1253
    :cond_26
    iget-object v2, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public unsetAccounting()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 526
    return-void
.end method

.method public unsetActive()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 459
    return-void
.end method

.method public unsetAttributes()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 503
    return-void
.end method

.method public unsetBusinessUserInfo()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    .line 572
    return-void
.end method

.method public unsetCreated()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 393
    return-void
.end method

.method public unsetDeleted()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 437
    return-void
.end method

.method public unsetEmail()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public unsetId()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 248
    return-void
.end method

.method public unsetName()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public unsetPremiumInfo()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 549
    return-void
.end method

.method public unsetPrivilege()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    .line 369
    return-void
.end method

.method public unsetShardId()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public unsetTimezone()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public unsetUpdated()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 415
    return-void
.end method

.method public unsetUsername()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    .line 269
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
    .line 1263
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->validate()V

    .line 1023
    sget-object v0, Lcom/evernote/edam/type/User;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 1024
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    sget-object v0, Lcom/evernote/edam/type/User;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1026
    iget v0, p0, Lcom/evernote/edam/type/User;->id:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1027
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1030
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    sget-object v0, Lcom/evernote/edam/type/User;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1032
    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    sget-object v0, Lcom/evernote/edam/type/User;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1039
    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1044
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    sget-object v0, Lcom/evernote/edam/type/User;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1046
    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1050
    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1051
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1052
    sget-object v0, Lcom/evernote/edam/type/User;->TIMEZONE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1053
    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1057
    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    if-eqz v0, :cond_5

    .line 1058
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1059
    sget-object v0, Lcom/evernote/edam/type/User;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1060
    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-virtual {v0}, Lcom/evernote/edam/type/PrivilegeLevel;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1061
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1064
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1065
    sget-object v0, Lcom/evernote/edam/type/User;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1066
    iget-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1067
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1069
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1070
    sget-object v0, Lcom/evernote/edam/type/User;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1071
    iget-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1072
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1074
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1075
    sget-object v0, Lcom/evernote/edam/type/User;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1076
    iget-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1077
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1079
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1080
    sget-object v0, Lcom/evernote/edam/type/User;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1081
    iget-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1082
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1084
    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1085
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1086
    sget-object v0, Lcom/evernote/edam/type/User;->SHARD_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1087
    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1091
    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    if-eqz v0, :cond_b

    .line 1092
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1093
    sget-object v0, Lcom/evernote/edam/type/User;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1094
    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/UserAttributes;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1095
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1098
    :cond_b
    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    if-eqz v0, :cond_c

    .line 1099
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1100
    sget-object v0, Lcom/evernote/edam/type/User;->ACCOUNTING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1101
    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Accounting;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1102
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1105
    :cond_c
    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    if-eqz v0, :cond_d

    .line 1106
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1107
    sget-object v0, Lcom/evernote/edam/type/User;->PREMIUM_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1108
    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/PremiumInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1109
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1112
    :cond_d
    iget-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    if-eqz v0, :cond_e

    .line 1113
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1114
    sget-object v0, Lcom/evernote/edam/type/User;->BUSINESS_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1115
    iget-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1116
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1119
    :cond_e
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1120
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1121
    return-void
.end method
