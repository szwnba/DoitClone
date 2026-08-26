.class Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;
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
    name = "getPremiumInfo_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private success:Lcom/evernote/edam/type/PremiumInfo;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 3786
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getPremiumInfo_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3788
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3789
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3790
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3800
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    .prologue
    .line 3805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3806
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3807
    new-instance v0, Lcom/evernote/edam/type/PremiumInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/PremiumInfo;-><init>(Lcom/evernote/edam/type/PremiumInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    .line 3809
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3810
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3812
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3813
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3815
    :cond_2
    return-void
.end method

.method static synthetic access$2600(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/type/PremiumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3822
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    .line 3823
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3824
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3825
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    .prologue
    .line 3843
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3844
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

    .line 3877
    :cond_0
    :goto_0
    return v0

    .line 3847
    :cond_1
    const/4 v0, 0x0

    .line 3848
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3850
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3851
    if-nez v0, :cond_0

    .line 3854
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3855
    if-nez v0, :cond_0

    .line 3859
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3860
    if-nez v0, :cond_0

    .line 3863
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3864
    if-nez v0, :cond_0

    .line 3868
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3869
    if-nez v0, :cond_0

    .line 3872
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3873
    if-nez v0, :cond_0

    .line 3877
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3785
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;
    .locals 1

    .prologue
    .line 3818
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3785
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserException()Z
    .locals 1

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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
    const/16 v2, 0xc

    .line 3882
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3885
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3886
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3919
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3920
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->validate()V

    .line 3921
    return-void

    .line 3889
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3915
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3917
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3891
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 3892
    new-instance v1, Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v1}, Lcom/evernote/edam/type/PremiumInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    .line 3893
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/PremiumInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3895
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3899
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 3900
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3901
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3903
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3907
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 3908
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3909
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3911
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3889
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3945
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
    .line 3924
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3926
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3927
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3928
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->success:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/PremiumInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3929
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3939
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3940
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3941
    return-void

    .line 3930
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3931
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3932
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3933
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 3934
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3935
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3936
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3937
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
