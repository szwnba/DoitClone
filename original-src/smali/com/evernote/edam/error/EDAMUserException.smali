.class public Lcom/evernote/edam/error/EDAMUserException;
.super Ljava/lang/Exception;
.source "EDAMUserException.java"

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
        "Lcom/evernote/edam/error/EDAMUserException;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PARAMETER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

.field private parameter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "EDAMUserException"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/error/EDAMUserException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 38
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "errorCode"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMUserException;->ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 39
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "parameter"

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMUserException;->PARAMETER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/evernote/edam/error/EDAMErrorCode;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/error/EDAMUserException;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 75
    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/error/EDAMUserException;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/error/EDAMUserException;

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
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

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    const/4 v0, 0x0

    .line 177
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 179
    .local v1, "typedOther":Lcom/evernote/edam/error/EDAMUserException;
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 180
    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iget-object v3, v1, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 184
    if-nez v0, :cond_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 189
    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 193
    if-nez v0, :cond_0

    .line 197
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lcom/evernote/edam/error/EDAMUserException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMUserException;->compareTo(Lcom/evernote/edam/error/EDAMUserException;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/error/EDAMUserException;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, p0}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->deepCopy()Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/error/EDAMUserException;)Z
    .locals 7
    .param p1, "that"    # Lcom/evernote/edam/error/EDAMUserException;

    .prologue
    const/4 v4, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v4

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v2

    .line 146
    .local v2, "this_present_errorCode":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v0

    .line 147
    .local v0, "that_present_errorCode":Z
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 148
    :cond_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 150
    iget-object v5, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iget-object v6, p1, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v5, v6}, Lcom/evernote/edam/error/EDAMErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v3

    .line 155
    .local v3, "this_present_parameter":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v1

    .line 156
    .local v1, "that_present_parameter":Z
    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 157
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 159
    iget-object v5, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    iget-object v6, p1, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_1

    .line 138
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 136
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v1, :cond_0

    .line 137
    check-cast p1, Lcom/evernote/edam/error/EDAMUserException;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMUserException;->equals(Lcom/evernote/edam/error/EDAMUserException;)Z

    move-result v0

    goto :goto_0
.end method

.method public getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isSetErrorCode()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetParameter()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

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
    .line 202
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 205
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 206
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 230
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->validate()V

    .line 231
    return-void

    .line 209
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 225
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 227
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 211
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->findByValue(I)Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    goto :goto_1

    .line 214
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 218
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 219
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setErrorCode(Lcom/evernote/edam/error/EDAMErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/evernote/edam/error/EDAMErrorCode;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 92
    return-void
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 107
    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setParameterIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EDAMUserException("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 258
    .local v0, "first":Z
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-nez v2, :cond_2

    .line 260
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :goto_0
    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    const-string v2, "parameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 269
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_1
    const/4 v0, 0x0

    .line 275
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetErrorCode()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 96
    return-void
.end method

.method public unsetParameter()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    .line 119
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
    .line 281
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetErrorCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
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
    .line 234
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->validate()V

    .line 236
    sget-object v0, Lcom/evernote/edam/error/EDAMUserException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 237
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/evernote/edam/error/EDAMUserException;->ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 239
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v0}, Lcom/evernote/edam/error/EDAMErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 240
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMUserException;->isSetParameter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/evernote/edam/error/EDAMUserException;->PARAMETER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 245
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMUserException;->parameter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 250
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 251
    return-void
.end method
