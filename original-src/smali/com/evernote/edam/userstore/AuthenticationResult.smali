.class public Lcom/evernote/edam/userstore/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"

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
        "Lcom/evernote/edam/userstore/AuthenticationResult;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPIRATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_STORE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PUBLIC_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SECOND_FACTOR_REQUIRED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final USER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WEB_API_URL_PREFIX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CURRENTTIME_ISSET_ID:I = 0x0

.field private static final __EXPIRATION_ISSET_ID:I = 0x1

.field private static final __SECONDFACTORREQUIRED_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private currentTime:J

.field private expiration:J

.field private noteStoreUrl:Ljava/lang/String;

.field private publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

.field private secondFactorDeliveryHint:Ljava/lang/String;

.field private secondFactorRequired:Z

.field private user:Lcom/evernote/edam/type/User;

.field private webApiUrlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 88
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "AuthenticationResult"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 90
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "currentTime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 91
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 92
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expiration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->EXPIRATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 93
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "user"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->USER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 94
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "publicUserInfo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->PUBLIC_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 95
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteStoreUrl"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->NOTE_STORE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 96
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "webApiUrlPrefix"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->WEB_API_URL_PREFIX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 97
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "secondFactorRequired"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_REQUIRED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 98
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "secondFactorDeliveryHint"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    .line 118
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "authenticationToken"    # Ljava/lang/String;
    .param p4, "expiration"    # J

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-direct {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>()V

    .line 126
    iput-wide p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    .line 127
    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    .line 128
    iput-object p3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 129
    iput-wide p4, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 130
    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/AuthenticationResult;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    .line 137
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-wide v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    iput-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    .line 139
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 142
    :cond_0
    iget-wide v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    iput-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 143
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Lcom/evernote/edam/type/User;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/User;-><init>(Lcom/evernote/edam/type/User;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>(Lcom/evernote/edam/userstore/PublicUserInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 149
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    .line 152
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    .line 155
    :cond_4
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    .line 156
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    .line 159
    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    .line 167
    iput-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    .line 168
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    .line 170
    iput-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 171
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 172
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 173
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setSecondFactorRequiredIsSet(Z)V

    .line 176
    iput-boolean v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    .line 177
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/AuthenticationResult;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/userstore/AuthenticationResult;

    .prologue
    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
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

    .line 575
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    const/4 v0, 0x0

    .line 492
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 494
    .local v1, "typedOther":Lcom/evernote/edam/userstore/AuthenticationResult;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 495
    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    iget-wide v4, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 499
    if-nez v0, :cond_0

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 504
    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 508
    if-nez v0, :cond_0

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 513
    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    iget-wide v4, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 517
    if-nez v0, :cond_0

    .line 521
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 522
    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    iget-object v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 526
    if-nez v0, :cond_0

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 531
    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 535
    if-nez v0, :cond_0

    .line 539
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 540
    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 544
    if-nez v0, :cond_0

    .line 548
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 549
    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 553
    if-nez v0, :cond_0

    .line 557
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 558
    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    iget-boolean v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 562
    if-nez v0, :cond_0

    .line 566
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 567
    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 571
    if-nez v0, :cond_0

    .line 575
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Lcom/evernote/edam/userstore/AuthenticationResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->compareTo(Lcom/evernote/edam/userstore/AuthenticationResult;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->deepCopy()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/userstore/AuthenticationResult;)Z
    .locals 24
    .param p1, "that"    # Lcom/evernote/edam/userstore/AuthenticationResult;

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    const/16 v20, 0x0

    .line 478
    :goto_0
    return v20

    .line 397
    :cond_0
    const/4 v12, 0x1

    .line 398
    .local v12, "this_present_currentTime":Z
    const/4 v3, 0x1

    .line 399
    .local v3, "that_present_currentTime":Z
    if-nez v12, :cond_1

    if-eqz v3, :cond_4

    .line 400
    :cond_1
    if-eqz v12, :cond_2

    if-nez v3, :cond_3

    .line 401
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 402
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    .line 403
    const/16 v20, 0x0

    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v11

    .line 407
    .local v11, "this_present_authenticationToken":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v2

    .line 408
    .local v2, "that_present_authenticationToken":Z
    if-nez v11, :cond_5

    if-eqz v2, :cond_8

    .line 409
    :cond_5
    if-eqz v11, :cond_6

    if-nez v2, :cond_7

    .line 410
    :cond_6
    const/16 v20, 0x0

    goto :goto_0

    .line 411
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 412
    const/16 v20, 0x0

    goto :goto_0

    .line 415
    :cond_8
    const/4 v13, 0x1

    .line 416
    .local v13, "this_present_expiration":Z
    const/4 v4, 0x1

    .line 417
    .local v4, "that_present_expiration":Z
    if-nez v13, :cond_9

    if-eqz v4, :cond_c

    .line 418
    :cond_9
    if-eqz v13, :cond_a

    if-nez v4, :cond_b

    .line 419
    :cond_a
    const/16 v20, 0x0

    goto :goto_0

    .line 420
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_c

    .line 421
    const/16 v20, 0x0

    goto :goto_0

    .line 424
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v18

    .line 425
    .local v18, "this_present_user":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v9

    .line 426
    .local v9, "that_present_user":Z
    if-nez v18, :cond_d

    if-eqz v9, :cond_10

    .line 427
    :cond_d
    if-eqz v18, :cond_e

    if-nez v9, :cond_f

    .line 428
    :cond_e
    const/16 v20, 0x0

    goto :goto_0

    .line 429
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/evernote/edam/type/User;->equals(Lcom/evernote/edam/type/User;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 430
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 433
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v15

    .line 434
    .local v15, "this_present_publicUserInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v6

    .line 435
    .local v6, "that_present_publicUserInfo":Z
    if-nez v15, :cond_11

    if-eqz v6, :cond_14

    .line 436
    :cond_11
    if-eqz v15, :cond_12

    if-nez v6, :cond_13

    .line 437
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 438
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/evernote/edam/userstore/PublicUserInfo;->equals(Lcom/evernote/edam/userstore/PublicUserInfo;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 439
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 442
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v14

    .line 443
    .local v14, "this_present_noteStoreUrl":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v5

    .line 444
    .local v5, "that_present_noteStoreUrl":Z
    if-nez v14, :cond_15

    if-eqz v5, :cond_18

    .line 445
    :cond_15
    if-eqz v14, :cond_16

    if-nez v5, :cond_17

    .line 446
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 447
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 448
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 451
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v19

    .line 452
    .local v19, "this_present_webApiUrlPrefix":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v10

    .line 453
    .local v10, "that_present_webApiUrlPrefix":Z
    if-nez v19, :cond_19

    if-eqz v10, :cond_1c

    .line 454
    :cond_19
    if-eqz v19, :cond_1a

    if-nez v10, :cond_1b

    .line 455
    :cond_1a
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 456
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    .line 457
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 460
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v17

    .line 461
    .local v17, "this_present_secondFactorRequired":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v8

    .line 462
    .local v8, "that_present_secondFactorRequired":Z
    if-nez v17, :cond_1d

    if-eqz v8, :cond_20

    .line 463
    :cond_1d
    if-eqz v17, :cond_1e

    if-nez v8, :cond_1f

    .line 464
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 465
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_20

    .line 466
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 469
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v16

    .line 470
    .local v16, "this_present_secondFactorDeliveryHint":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v7

    .line 471
    .local v7, "that_present_secondFactorDeliveryHint":Z
    if-nez v16, :cond_21

    if-eqz v7, :cond_24

    .line 472
    :cond_21
    if-eqz v16, :cond_22

    if-nez v7, :cond_23

    .line 473
    :cond_22
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 474
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_24

    .line 475
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 478
    :cond_24
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 386
    if-nez p1, :cond_1

    .line 390
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 388
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;

    if-eqz v1, :cond_0

    .line 389
    check-cast p1, Lcom/evernote/edam/userstore/AuthenticationResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->equals(Lcom/evernote/edam/userstore/AuthenticationResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    return-wide v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    return-wide v0
.end method

.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicUserInfo()Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-object v0
.end method

.method public getSecondFactorDeliveryHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/evernote/edam/type/User;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    return-object v0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public isSecondFactorRequired()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCurrentTime()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetExpiration()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetNoteStoreUrl()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPublicUserInfo()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSecondFactorDeliveryHint()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSecondFactorRequired()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUser()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetWebApiUrlPrefix()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 8
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 580
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 583
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 584
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 662
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->validate()V

    .line 663
    return-void

    .line 587
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 657
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 659
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 589
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_1

    .line 590
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    .line 591
    invoke-virtual {p0, v5}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    goto :goto_1

    .line 593
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 597
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 598
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 600
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 604
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_3

    .line 605
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 606
    invoke-virtual {p0, v5}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    goto :goto_1

    .line 608
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 612
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_4

    .line 613
    new-instance v1, Lcom/evernote/edam/type/User;

    invoke-direct {v1}, Lcom/evernote/edam/type/User;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 614
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/User;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 616
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 620
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_5

    .line 621
    new-instance v1, Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 622
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 624
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 628
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 629
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 635
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 636
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    goto/16 :goto_1

    .line 638
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 642
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 643
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    .line 644
    invoke-virtual {p0, v5}, Lcom/evernote/edam/userstore/AuthenticationResult;->setSecondFactorRequiredIsSet(Z)V

    goto/16 :goto_1

    .line 646
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 650
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 651
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 653
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setAuthenticationTokenIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 223
    :cond_0
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    .line 187
    return-void
.end method

.method public setCurrentTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 200
    return-void
.end method

.method public setExpiration(J)V
    .locals 1
    .param p1, "expiration"    # J

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    .line 232
    return-void
.end method

.method public setExpirationIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 244
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 245
    return-void
.end method

.method public setNoteStoreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setNoteStoreUrlIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    .line 314
    :cond_0
    return-void
.end method

.method public setPublicUserInfo(Lcom/evernote/edam/userstore/PublicUserInfo;)V
    .locals 0
    .param p1, "publicUserInfo"    # Lcom/evernote/edam/userstore/PublicUserInfo;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 276
    return-void
.end method

.method public setPublicUserInfoIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 291
    :cond_0
    return-void
.end method

.method public setSecondFactorDeliveryHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondFactorDeliveryHint"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setSecondFactorDeliveryHintIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    .line 382
    :cond_0
    return-void
.end method

.method public setSecondFactorRequired(Z)V
    .locals 1
    .param p1, "secondFactorRequired"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setSecondFactorRequiredIsSet(Z)V

    .line 346
    return-void
.end method

.method public setSecondFactorRequiredIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 359
    return-void
.end method

.method public setUser(Lcom/evernote/edam/type/User;)V
    .locals 0
    .param p1, "user"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 253
    return-void
.end method

.method public setUserIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 268
    :cond_0
    return-void
.end method

.method public setWebApiUrlPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "webApiUrlPrefix"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setWebApiUrlPrefixIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    .line 337
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthenticationResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 729
    .local v0, "first":Z
    const-string v2, "currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 731
    const/4 v0, 0x0

    .line 732
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_0
    const-string v2, "authenticationToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 735
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :goto_0
    const/4 v0, 0x0

    .line 740
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :cond_1
    const-string v2, "expiration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-wide v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 743
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 745
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_2
    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    if-nez v2, :cond_f

    .line 748
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :goto_1
    const/4 v0, 0x0

    .line 754
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 755
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_4
    const-string v2, "publicUserInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-nez v2, :cond_10

    .line 758
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :goto_2
    const/4 v0, 0x0

    .line 764
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 765
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_6
    const-string v2, "noteStoreUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 768
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :goto_3
    const/4 v0, 0x0

    .line 774
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 775
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_8
    const-string v2, "webApiUrlPrefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 778
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :goto_4
    const/4 v0, 0x0

    .line 784
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 785
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_a
    const-string v2, "secondFactorRequired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    iget-boolean v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 788
    const/4 v0, 0x0

    .line 790
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 791
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_c
    const-string v2, "secondFactorDeliveryHint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 794
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :goto_5
    const/4 v0, 0x0

    .line 800
    :cond_d
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 737
    :cond_e
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 750
    :cond_f
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 760
    :cond_10
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 770
    :cond_11
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 780
    :cond_12
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 796
    :cond_13
    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public unsetAuthenticationToken()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public unsetCurrentTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 191
    return-void
.end method

.method public unsetExpiration()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 236
    return-void
.end method

.method public unsetNoteStoreUrl()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public unsetPublicUserInfo()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 280
    return-void
.end method

.method public unsetSecondFactorDeliveryHint()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public unsetSecondFactorRequired()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 350
    return-void
.end method

.method public unsetUser()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 257
    return-void
.end method

.method public unsetWebApiUrlPrefix()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'currentTime\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'authenticationToken\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v0

    if-nez v0, :cond_2

    .line 815
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'expiration\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_2
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
    .line 666
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->validate()V

    .line 668
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 669
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 670
    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 671
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 672
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 674
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 677
    :cond_0
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->EXPIRATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 678
    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 679
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 680
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->USER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 683
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/User;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 684
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-eqz v0, :cond_2

    .line 688
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->PUBLIC_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 690
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 691
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->NOTE_STORE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 697
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 702
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->WEB_API_URL_PREFIX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 704
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 708
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 709
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_REQUIRED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 710
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 711
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 713
    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 714
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 715
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 716
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 720
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 721
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 722
    return-void
.end method
