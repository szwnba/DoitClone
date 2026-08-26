.class Lcom/evernote/edam/userstore/UserStore$getUser_result;
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
    name = "getUser_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getUser_result;",
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
.field private success:Lcom/evernote/edam/type/User;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 3218
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getUser_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3220
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3221
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3222
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3232
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getUser_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getUser_result;

    .prologue
    .line 3237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3238
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3239
    new-instance v0, Lcom/evernote/edam/type/User;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/User;-><init>(Lcom/evernote/edam/type/User;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    .line 3241
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3242
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3244
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3245
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3247
    :cond_2
    return-void
.end method

.method static synthetic access$1900(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/type/User;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getUser_result;

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getUser_result;

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getUser_result;

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3254
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    .line 3255
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3256
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3257
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getUser_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getUser_result;

    .prologue
    .line 3275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3276
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

    .line 3309
    :cond_0
    :goto_0
    return v0

    .line 3279
    :cond_1
    const/4 v0, 0x0

    .line 3280
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3282
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getUser_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3283
    if-nez v0, :cond_0

    .line 3286
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3287
    if-nez v0, :cond_0

    .line 3291
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3292
    if-nez v0, :cond_0

    .line 3295
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3296
    if-nez v0, :cond_0

    .line 3300
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3301
    if-nez v0, :cond_0

    .line 3304
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3305
    if-nez v0, :cond_0

    .line 3309
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3217
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getUser_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getUser_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getUser_result;
    .locals 1

    .prologue
    .line 3250
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getUser_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3217
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getUser_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

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
    .line 3271
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 3266
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 3314
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3317
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3318
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3351
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3352
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->validate()V

    .line 3353
    return-void

    .line 3321
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3347
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3349
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3323
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 3324
    new-instance v1, Lcom/evernote/edam/type/User;

    invoke-direct {v1}, Lcom/evernote/edam/type/User;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    .line 3325
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/User;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3327
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3331
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 3332
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3333
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3335
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3339
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 3340
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3341
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3343
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3321
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
    .line 3377
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
    .line 3356
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3358
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3359
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3360
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->success:Lcom/evernote/edam/type/User;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/User;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3361
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3371
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3372
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3373
    return-void

    .line 3362
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3363
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3364
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3365
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 3366
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3368
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getUser_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3369
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
