.class Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;
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
    name = "createSharedNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24229
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createSharedNotebook_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 24231
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 24232
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sharedNotebook"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->SHARED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24241
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    .prologue
    .line 24246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24247
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24248
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 24250
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetSharedNotebook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24251
    new-instance v0, Lcom/evernote/edam/type/SharedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    .line 24253
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24260
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 24261
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    .line 24262
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    .prologue
    .line 24283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24284
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

    .line 24308
    :cond_0
    :goto_0
    return v0

    .line 24287
    :cond_1
    const/4 v0, 0x0

    .line 24288
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 24290
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 24291
    if-nez v0, :cond_0

    .line 24294
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24295
    if-nez v0, :cond_0

    .line 24299
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetSharedNotebook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetSharedNotebook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 24300
    if-nez v0, :cond_0

    .line 24303
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->isSetSharedNotebook()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 24304
    if-nez v0, :cond_0

    .line 24308
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24228
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;
    .locals 1

    .prologue
    .line 24256
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 24228
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 24270
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSharedNotebook()Z
    .locals 1

    .prologue
    .line 24279
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

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
    .line 24313
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 24316
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 24317
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 24341
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 24342
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->validate()V

    .line 24343
    return-void

    .line 24320
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 24337
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 24339
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 24322
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 24323
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 24325
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24329
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 24330
    new-instance v1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    .line 24331
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 24333
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24320
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
    .line 24265
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 24266
    return-void
.end method

.method public setSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 0
    .param p1, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;

    .prologue
    .line 24274
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    .line 24275
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
    .line 24365
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
    .line 24346
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->validate()V

    .line 24348
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 24349
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24350
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24351
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 24352
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 24354
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    if-eqz v0, :cond_1

    .line 24355
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->SHARED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24356
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->sharedNotebook:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 24357
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 24359
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 24360
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 24361
    return-void
.end method
