.class Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;
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
    name = "getPublicUserInfo_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 3382
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getPublicUserInfo_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3384
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "username"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    .prologue
    .line 3397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3398
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3399
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    .line 3401
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    .line 3409
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    .prologue
    .line 3421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3422
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

    .line 3437
    :cond_0
    :goto_0
    return v0

    .line 3425
    :cond_1
    const/4 v0, 0x0

    .line 3426
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3428
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->isSetUsername()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->isSetUsername()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3429
    if-nez v0, :cond_0

    .line 3432
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->isSetUsername()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3433
    if-nez v0, :cond_0

    .line 3437
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3381
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;
    .locals 1

    .prologue
    .line 3404
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;-><init>(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3381
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetUsername()Z
    .locals 1

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

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
    .line 3442
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3445
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3446
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3462
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3463
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->validate()V

    .line 3464
    return-void

    .line 3449
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3458
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3460
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3451
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 3452
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    goto :goto_1

    .line 3454
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 3412
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    .line 3413
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
    .line 3481
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
    .line 3467
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->validate()V

    .line 3469
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3470
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3471
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3472
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3475
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3476
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3477
    return-void
.end method
