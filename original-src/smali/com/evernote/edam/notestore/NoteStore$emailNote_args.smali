.class Lcom/evernote/edam/notestore/NoteStore$emailNote_args;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "emailNote_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$emailNote_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PARAMETERS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28392
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "emailNote_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 28394
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28395
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "parameters"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->PARAMETERS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28404
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$emailNote_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    .prologue
    .line 28409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28410
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28411
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    .line 28413
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetParameters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28414
    new-instance v0, Lcom/evernote/edam/notestore/NoteEmailParameters;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;-><init>(Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    .line 28416
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28423
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    .line 28424
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    .line 28425
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$emailNote_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    .prologue
    .line 28446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28447
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

    .line 28471
    :cond_0
    :goto_0
    return v0

    .line 28450
    :cond_1
    const/4 v0, 0x0

    .line 28451
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 28453
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$emailNote_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28454
    if-nez v0, :cond_0

    .line 28457
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28458
    if-nez v0, :cond_0

    .line 28462
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetParameters()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetParameters()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28463
    if-nez v0, :cond_0

    .line 28466
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->isSetParameters()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28467
    if-nez v0, :cond_0

    .line 28471
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28391
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$emailNote_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$emailNote_args;
    .locals 1

    .prologue
    .line 28419
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$emailNote_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 28391
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 28433
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetParameters()Z
    .locals 1

    .prologue
    .line 28442
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

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
    .line 28476
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 28479
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 28480
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 28504
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 28505
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->validate()V

    .line 28506
    return-void

    .line 28483
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 28500
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 28502
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 28485
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 28486
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 28488
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28492
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 28493
    new-instance v1, Lcom/evernote/edam/notestore/NoteEmailParameters;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    .line 28494
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28496
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 28428
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    .line 28429
    return-void
.end method

.method public setParameters(Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/evernote/edam/notestore/NoteEmailParameters;

    .prologue
    .line 28437
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    .line 28438
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
    .line 28528
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
    .line 28509
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->validate()V

    .line 28511
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 28512
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28513
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 28514
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 28515
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 28517
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    if-eqz v0, :cond_1

    .line 28518
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->PARAMETERS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 28519
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->parameters:Lcom/evernote/edam/notestore/NoteEmailParameters;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 28520
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 28522
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 28523
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 28524
    return-void
.end method
