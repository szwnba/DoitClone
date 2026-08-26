.class public Lcom/evernote/edam/type/BusinessUserInfo;
.super Ljava/lang/Object;
.source "BusinessUserInfo.java"

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
        "Lcom/evernote/edam/type/BusinessUserInfo;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __BUSINESSID_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private businessId:I

.field private businessName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private role:Lcom/evernote/edam/type/BusinessUserRole;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0x8

    .line 41
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "BusinessUserInfo"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 43
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessId"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 44
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessName"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 45
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "role"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 46
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "email"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/BusinessUserInfo;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/BusinessUserInfo;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    .line 65
    iget-object v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    iput v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    .line 67
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/BusinessUserInfo;->setBusinessIdIsSet(Z)V

    .line 84
    iput v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    .line 85
    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    .line 87
    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/BusinessUserInfo;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/BusinessUserInfo;

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
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

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    const/4 v0, 0x0

    .line 252
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 254
    .local v1, "typedOther":Lcom/evernote/edam/type/BusinessUserInfo;
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 255
    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    iget v3, v1, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 259
    if-nez v0, :cond_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 268
    if-nez v0, :cond_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 273
    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v3, v1, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 277
    if-nez v0, :cond_0

    .line 281
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 282
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 290
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lcom/evernote/edam/type/BusinessUserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->compareTo(Lcom/evernote/edam/type/BusinessUserInfo;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/BusinessUserInfo;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/BusinessUserInfo;-><init>(Lcom/evernote/edam/type/BusinessUserInfo;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->deepCopy()Lcom/evernote/edam/type/BusinessUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/BusinessUserInfo;)Z
    .locals 11
    .param p1, "that"    # Lcom/evernote/edam/type/BusinessUserInfo;

    .prologue
    const/4 v8, 0x0

    .line 199
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v8

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v4

    .line 203
    .local v4, "this_present_businessId":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v0

    .line 204
    .local v0, "that_present_businessId":Z
    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 205
    :cond_2
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 207
    iget v9, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    iget v10, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    if-ne v9, v10, :cond_0

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v5

    .line 212
    .local v5, "this_present_businessName":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v1

    .line 213
    .local v1, "that_present_businessName":Z
    if-nez v5, :cond_4

    if-eqz v1, :cond_5

    .line 214
    :cond_4
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 216
    iget-object v9, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iget-object v10, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v7

    .line 221
    .local v7, "this_present_role":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v3

    .line 222
    .local v3, "that_present_role":Z
    if-nez v7, :cond_6

    if-eqz v3, :cond_7

    .line 223
    :cond_6
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 225
    iget-object v9, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v10, p1, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v9, v10}, Lcom/evernote/edam/type/BusinessUserRole;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 229
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v6

    .line 230
    .local v6, "this_present_email":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v2

    .line 231
    .local v2, "that_present_email":Z
    if-nez v6, :cond_8

    if-eqz v2, :cond_9

    .line 232
    :cond_8
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 234
    iget-object v9, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    iget-object v10, p1, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 238
    :cond_9
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 191
    if-nez p1, :cond_1

    .line 195
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 193
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/BusinessUserInfo;

    if-eqz v1, :cond_0

    .line 194
    check-cast p1, Lcom/evernote/edam/type/BusinessUserInfo;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->equals(Lcom/evernote/edam/type/BusinessUserInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBusinessId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    return v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/evernote/edam/type/BusinessUserRole;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public isSetBusinessId()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetBusinessName()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetEmail()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRole()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

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
    const/16 v3, 0xb

    const/16 v2, 0x8

    .line 295
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 298
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 299
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 338
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->validate()V

    .line 339
    return-void

    .line 302
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 333
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 335
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 304
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/BusinessUserInfo;->setBusinessIdIsSet(Z)V

    goto :goto_1

    .line 308
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 312
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 313
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    goto :goto_1

    .line 315
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 319
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 320
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/BusinessUserRole;->findByValue(I)Lcom/evernote/edam/type/BusinessUserRole;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    goto :goto_1

    .line 322
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 326
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 327
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    goto :goto_1

    .line 329
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBusinessId(I)V
    .locals 1
    .param p1, "businessId"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/BusinessUserInfo;->setBusinessIdIsSet(Z)V

    .line 97
    return-void
.end method

.method public setBusinessIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 110
    return-void
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setBusinessNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setEmailIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    .line 187
    :cond_0
    return-void
.end method

.method public setRole(Lcom/evernote/edam/type/BusinessUserRole;)V
    .locals 0
    .param p1, "role"    # Lcom/evernote/edam/type/BusinessUserRole;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    .line 149
    return-void
.end method

.method public setRoleIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    .line 164
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BusinessUserInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 380
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string v2, "businessId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const/4 v0, 0x0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    const-string v2, "businessName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 389
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :goto_0
    const/4 v0, 0x0

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_3
    const-string v2, "role:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    if-nez v2, :cond_8

    .line 399
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :goto_1
    const/4 v0, 0x0

    .line 405
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_5
    const-string v2, "email:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 409
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :goto_2
    const/4 v0, 0x0

    .line 415
    :cond_6
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 391
    :cond_7
    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 401
    :cond_8
    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 411
    :cond_9
    iget-object v2, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public unsetBusinessId()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 101
    return-void
.end method

.method public unsetBusinessName()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public unsetEmail()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public unsetRole()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    .line 153
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
    .line 421
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
    .line 342
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->validate()V

    .line 344
    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 345
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 347
    iget v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 348
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 353
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 360
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v0}, Lcom/evernote/edam/type/BusinessUserRole;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 361
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 367
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 371
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 372
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 373
    return-void
.end method
