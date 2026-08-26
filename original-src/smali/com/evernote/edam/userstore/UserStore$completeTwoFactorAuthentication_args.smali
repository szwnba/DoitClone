.class Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;
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
    name = "completeTwoFactorAuthentication_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEVICE_DESCRIPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEVICE_IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ONE_TIME_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private deviceDescription:Ljava/lang/String;

.field private deviceIdentifier:Ljava/lang/String;

.field private oneTimeCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1966
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "completeTwoFactorAuthentication_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 1968
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1969
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "oneTimeCode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->ONE_TIME_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1970
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deviceIdentifier"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->DEVICE_IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 1971
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deviceDescription"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->DEVICE_DESCRIPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1982
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    .prologue
    .line 1987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1988
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    .line 1991
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetOneTimeCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    .line 1994
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceIdentifier()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1995
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    .line 1997
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1998
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    .line 2000
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2007
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    .line 2008
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    .line 2009
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    .line 2010
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    .line 2011
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    .prologue
    .line 2050
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2051
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

    .line 2093
    :cond_0
    :goto_0
    return v0

    .line 2054
    :cond_1
    const/4 v0, 0x0

    .line 2055
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 2057
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2058
    if-nez v0, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2062
    if-nez v0, :cond_0

    .line 2066
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetOneTimeCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetOneTimeCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2067
    if-nez v0, :cond_0

    .line 2070
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetOneTimeCode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2071
    if-nez v0, :cond_0

    .line 2075
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceIdentifier()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceIdentifier()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2076
    if-nez v0, :cond_0

    .line 2079
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceIdentifier()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2080
    if-nez v0, :cond_0

    .line 2084
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceDescription()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceDescription()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2085
    if-nez v0, :cond_0

    .line 2088
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->isSetDeviceDescription()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2089
    if-nez v0, :cond_0

    .line 2093
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1965
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;
    .locals 1

    .prologue
    .line 2003
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;-><init>(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

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
    .line 2046
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

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
    .line 2037
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetOneTimeCode()Z
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

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
    const/16 v2, 0xb

    .line 2098
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 2101
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 2102
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 2139
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 2140
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->validate()V

    .line 2141
    return-void

    .line 2105
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 2135
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 2137
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 2107
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 2108
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 2110
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2114
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 2115
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    goto :goto_1

    .line 2117
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2121
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 2122
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    goto :goto_1

    .line 2124
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2128
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 2129
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    goto :goto_1

    .line 2131
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    .line 2015
    return-void
.end method

.method public setDeviceDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceDescription"    # Ljava/lang/String;

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    .line 2042
    return-void
.end method

.method public setDeviceIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    .line 2033
    return-void
.end method

.method public setOneTimeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "oneTimeCode"    # Ljava/lang/String;

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    .line 2024
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
    .line 2173
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
    .line 2144
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->validate()V

    .line 2146
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 2147
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2148
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2149
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2153
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->ONE_TIME_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2154
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->oneTimeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2157
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2158
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->DEVICE_IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2159
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2163
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->DEVICE_DESCRIPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2164
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->deviceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2167
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 2168
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 2169
    return-void
.end method
