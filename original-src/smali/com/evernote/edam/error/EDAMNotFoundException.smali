.class public Lcom/evernote/edam/error/EDAMNotFoundException;
.super Ljava/lang/Exception;
.source "EDAMNotFoundException.java"

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
        "Lcom/evernote/edam/error/EDAMNotFoundException;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private identifier:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 32
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "EDAMNotFoundException"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/error/EDAMNotFoundException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 34
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "identifier"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMNotFoundException;->IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 35
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "key"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMNotFoundException;->KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/error/EDAMNotFoundException;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/error/EDAMNotFoundException;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/error/EDAMNotFoundException;

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
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

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    .line 158
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 160
    .local v1, "typedOther":Lcom/evernote/edam/error/EDAMNotFoundException;
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 161
    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    if-nez v0, :cond_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 170
    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 174
    if-nez v0, :cond_0

    .line 178
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/evernote/edam/error/EDAMNotFoundException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->compareTo(Lcom/evernote/edam/error/EDAMNotFoundException;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, p0}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->deepCopy()Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/error/EDAMNotFoundException;)Z
    .locals 7
    .param p1, "that"    # Lcom/evernote/edam/error/EDAMNotFoundException;

    .prologue
    const/4 v4, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v2

    .line 127
    .local v2, "this_present_identifier":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v0

    .line 128
    .local v0, "that_present_identifier":Z
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 129
    :cond_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 131
    iget-object v5, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    iget-object v6, p1, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v3

    .line 136
    .local v3, "this_present_key":Z
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v1

    .line 137
    .local v1, "that_present_key":Z
    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 138
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 140
    iget-object v5, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    iget-object v6, p1, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 119
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 117
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v1, :cond_0

    .line 118
    check-cast p1, Lcom/evernote/edam/error/EDAMNotFoundException;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->equals(Lcom/evernote/edam/error/EDAMNotFoundException;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isSetIdentifier()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetKey()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

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

    .line 183
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 187
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 211
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->validate()V

    .line 212
    return-void

    .line 190
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 206
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 208
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 192
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 199
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    goto :goto_1

    .line 202
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setIdentifierIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setKeyIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    .line 111
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EDAMNotFoundException("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 241
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 244
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_0
    const/4 v0, 0x0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 254
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :goto_1
    const/4 v0, 0x0

    .line 260
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetIdentifier()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public unsetKey()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    .line 100
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
    .line 266
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
    .line 215
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->validate()V

    .line 217
    sget-object v0, Lcom/evernote/edam/error/EDAMNotFoundException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 218
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/evernote/edam/error/EDAMNotFoundException;->IDENTIFIER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 221
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMNotFoundException;->isSetKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/evernote/edam/error/EDAMNotFoundException;->KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 228
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMNotFoundException;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 233
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 234
    return-void
.end method
