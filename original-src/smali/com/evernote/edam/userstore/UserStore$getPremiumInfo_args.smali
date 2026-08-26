.class Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;
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
    name = "getPremiumInfo_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 3682
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getPremiumInfo_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3684
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3692
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    .prologue
    .line 3697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3698
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3699
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    .line 3701
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    .line 3709
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    .prologue
    .line 3721
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3722
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

    .line 3737
    :cond_0
    :goto_0
    return v0

    .line 3725
    :cond_1
    const/4 v0, 0x0

    .line 3726
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3728
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3729
    if-nez v0, :cond_0

    .line 3732
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3733
    if-nez v0, :cond_0

    .line 3737
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3681
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;
    .locals 1

    .prologue
    .line 3704
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;-><init>(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3681
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

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
    .line 3742
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3745
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3746
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3762
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3763
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->validate()V

    .line 3764
    return-void

    .line 3749
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3758
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3760
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3751
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 3752
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 3754
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 3712
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    .line 3713
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
    .line 3781
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
    .line 3767
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->validate()V

    .line 3769
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3770
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3771
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3772
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3775
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3776
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3777
    return-void
.end method
