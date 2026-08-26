.class public Lcom/evernote/edam/error/EDAMSystemException;
.super Ljava/lang/Exception;
.source "EDAMSystemException.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/error/EDAMSystemException;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RATE_LIMIT_DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __RATELIMITDURATION_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

.field private message:Ljava/lang/String;

.field private rateLimitDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 33
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "EDAMSystemException"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 35
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "errorCode"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 36
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 37
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "rateLimitDuration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->RATE_LIMIT_DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/evernote/edam/error/EDAMErrorCode;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/error/EDAMSystemException;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    .line 62
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    .line 69
    :cond_1
    iget v0, p1, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    iput v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    iput-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 78
    iput-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v0}, Lcom/evernote/edam/error/EDAMSystemException;->setRateLimitDurationIsSet(Z)V

    .line 80
    iput v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    .line 81
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/error/EDAMSystemException;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/error/EDAMSystemException;

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
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

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    .line 213
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 215
    .local v1, "typedOther":Lcom/evernote/edam/error/EDAMSystemException;
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 216
    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iget-object v3, v1, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 220
    if-nez v0, :cond_0

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 225
    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 234
    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    iget v3, v1, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 238
    if-nez v0, :cond_0

    .line 242
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->compareTo(Lcom/evernote/edam/error/EDAMSystemException;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, p0}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->deepCopy()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/error/EDAMSystemException;)Z
    .locals 9
    .param p1, "that"    # Lcom/evernote/edam/error/EDAMSystemException;

    .prologue
    const/4 v6, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v6

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v3

    .line 173
    .local v3, "this_present_errorCode":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    .line 174
    .local v0, "that_present_errorCode":Z
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 175
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 177
    iget-object v7, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iget-object v8, p1, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v7, v8}, Lcom/evernote/edam/error/EDAMErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v4

    .line 182
    .local v4, "this_present_message":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v1

    .line 183
    .local v1, "that_present_message":Z
    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    .line 184
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 186
    iget-object v7, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    iget-object v8, p1, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v5

    .line 191
    .local v5, "this_present_rateLimitDuration":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v2

    .line 192
    .local v2, "that_present_rateLimitDuration":Z
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    .line 193
    :cond_6
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 195
    iget v7, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    iget v8, p1, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    if-ne v7, v8, :cond_0

    .line 199
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 165
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 163
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v1, :cond_0

    .line 164
    check-cast p1, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result v0

    goto :goto_0
.end method

.method public getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRateLimitDuration()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isSetErrorCode()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMessage()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRateLimitDuration()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
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
    const/16 v3, 0x8

    .line 247
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 250
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 251
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 283
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->validate()V

    .line 284
    return-void

    .line 254
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 278
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 280
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 256
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->findByValue(I)Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    goto :goto_1

    .line 259
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 263
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 264
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    goto :goto_1

    .line 266
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 270
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 271
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    .line 272
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/error/EDAMSystemException;->setRateLimitDurationIsSet(Z)V

    goto :goto_1

    .line 274
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setErrorCode(Lcom/evernote/edam/error/EDAMErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/evernote/edam/error/EDAMErrorCode;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 97
    return-void
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 112
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setMessageIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    .line 135
    :cond_0
    return-void
.end method

.method public setRateLimitDuration(I)V
    .locals 1
    .param p1, "rateLimitDuration"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/error/EDAMSystemException;->setRateLimitDurationIsSet(Z)V

    .line 144
    return-void
.end method

.method public setRateLimitDurationIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EDAMSystemException("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 316
    .local v0, "first":Z
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-nez v2, :cond_4

    .line 318
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_0
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 327
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :goto_1
    const/4 v0, 0x0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_2
    const-string v2, "rateLimitDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const/4 v0, 0x0

    .line 339
    :cond_3
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_5
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetErrorCode()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 101
    return-void
.end method

.method public unsetMessage()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public unsetRateLimitDuration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 148
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
    .line 345
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
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
    .line 287
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->validate()V

    .line 289
    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 290
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 292
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v0}, Lcom/evernote/edam/error/EDAMErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 293
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 298
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->RATE_LIMIT_DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 304
    iget v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 305
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 307
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 308
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 309
    return-void
.end method
