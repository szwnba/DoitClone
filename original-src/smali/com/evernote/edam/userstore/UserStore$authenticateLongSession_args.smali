.class Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "authenticateLongSession_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CONSUMER_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONSUMER_SECRET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEVICE_DESCRIPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEVICE_IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PASSWORD_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUPPORTS_TWO_FACTOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __SUPPORTSTWOFACTOR_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private deviceDescription:Ljava/lang/String;

.field private deviceIdentifier:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private supportsTwoFactor:Z

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 1476
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "authenticateLongSession_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 1478
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "username"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1479
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "password"

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->PASSWORD_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1480
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "consumerKey"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->CONSUMER_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1481
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "consumerSecret"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->CONSUMER_SECRET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1482
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deviceIdentifier"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->DEVICE_IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1483
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deviceDescription"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->DEVICE_DESCRIPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1484
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "supportsTwoFactor"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->SUPPORTS_TWO_FACTOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    .line 1500
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    .prologue
    const/4 v3, 0x0

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    .line 1506
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1507
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    .line 1510
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    .line 1513
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1514
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    .line 1516
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerSecret()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1517
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    .line 1519
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceIdentifier()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1520
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    .line 1522
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceDescription()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1523
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    .line 1525
    :cond_5
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    .line 1526
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1533
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    .line 1534
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    .line 1535
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    .line 1536
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    .line 1537
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    .line 1538
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    .line 1539
    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setSupportsTwoFactorIsSet(Z)V

    .line 1540
    iput-boolean v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    .line 1541
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    .prologue
    .line 1612
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1613
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

    .line 1682
    :cond_0
    :goto_0
    return v0

    .line 1616
    :cond_1
    const/4 v0, 0x0

    .line 1617
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 1619
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetUsername()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetUsername()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1620
    if-nez v0, :cond_0

    .line 1623
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetUsername()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1624
    if-nez v0, :cond_0

    .line 1628
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetPassword()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1629
    if-nez v0, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetPassword()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1633
    if-nez v0, :cond_0

    .line 1637
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1638
    if-nez v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerKey()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1642
    if-nez v0, :cond_0

    .line 1646
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerSecret()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerSecret()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1647
    if-nez v0, :cond_0

    .line 1650
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetConsumerSecret()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1651
    if-nez v0, :cond_0

    .line 1655
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceIdentifier()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceIdentifier()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1656
    if-nez v0, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceIdentifier()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1660
    if-nez v0, :cond_0

    .line 1664
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceDescription()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceDescription()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1665
    if-nez v0, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetDeviceDescription()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1669
    if-nez v0, :cond_0

    .line 1673
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetSupportsTwoFactor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetSupportsTwoFactor()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1674
    if-nez v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->isSetSupportsTwoFactor()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    iget-boolean v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1678
    if-nez v0, :cond_0

    .line 1682
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1475
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;
    .locals 1

    .prologue
    .line 1529
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;-><init>(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetConsumerKey()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetConsumerSecret()Z
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDeviceDescription()Z
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDeviceIdentifier()Z
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPassword()Z
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSupportsTwoFactor()Z
    .locals 2

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUsername()Z
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

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

    .line 1687
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 1690
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 1691
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1750
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1751
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->validate()V

    .line 1752
    return-void

    .line 1694
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1746
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 1748
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1696
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 1697
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    goto :goto_1

    .line 1699
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1703
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 1704
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    goto :goto_1

    .line 1706
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1710
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 1711
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    goto :goto_1

    .line 1713
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1717
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 1718
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    goto :goto_1

    .line 1720
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1724
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_5

    .line 1725
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    goto :goto_1

    .line 1727
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1731
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_6

    .line 1732
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    goto :goto_1

    .line 1734
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1738
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1739
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    .line 1740
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setSupportsTwoFactorIsSet(Z)V

    goto :goto_1

    .line 1742
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    .line 1563
    return-void
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    .line 1572
    return-void
.end method

.method public setDeviceDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceDescription"    # Ljava/lang/String;

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    .line 1590
    return-void
.end method

.method public setDeviceIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    .line 1581
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    .line 1554
    return-void
.end method

.method public setSupportsTwoFactor(Z)V
    .locals 1
    .param p1, "supportsTwoFactor"    # Z

    .prologue
    .line 1598
    iput-boolean p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    .line 1599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setSupportsTwoFactorIsSet(Z)V

    .line 1600
    return-void
.end method

.method public setSupportsTwoFactorIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1609
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    .line 1545
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
    .line 1797
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
    .line 1755
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->validate()V

    .line 1757
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 1758
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1759
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1760
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1764
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->PASSWORD_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1765
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1769
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->CONSUMER_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1770
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1773
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1774
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->CONSUMER_SECRET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1775
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1778
    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1779
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->DEVICE_IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1780
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1783
    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1784
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->DEVICE_DESCRIPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1785
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->deviceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1788
    :cond_5
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->SUPPORTS_TWO_FACTOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1789
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->supportsTwoFactor:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1790
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1791
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1792
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1793
    return-void
.end method
