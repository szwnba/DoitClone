.class public abstract Lcom/evernote/thrift/protocol/TProtocol;
.super Ljava/lang/Object;
.source "TProtocol.java"


# instance fields
.field protected trans_:Lcom/evernote/thrift/transport/TTransport;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/evernote/thrift/transport/TTransport;)V
    .locals 0
    .param p1, "trans"    # Lcom/evernote/thrift/transport/TTransport;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    .line 50
    return-void
.end method


# virtual methods
.method public getTransport()Lcom/evernote/thrift/transport/TTransport;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    return-object v0
.end method

.method public abstract readBinary()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readFieldBegin()Lcom/evernote/thrift/protocol/TField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readFieldEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readI16()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readI32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readI64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readListBegin()Lcom/evernote/thrift/protocol/TList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readListEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMapBegin()Lcom/evernote/thrift/protocol/TMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMapEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMessageEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readSetBegin()Lcom/evernote/thrift/protocol/TSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readSetEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readStructBegin()Lcom/evernote/thrift/protocol/TStruct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readStructEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public writeBinary(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    sub-int v0, v1, v2

    .line 105
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBinary([BII)V

    .line 106
    return-void
.end method

.method public writeBinary([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeBinary([BII)V

    .line 124
    return-void
.end method

.method public abstract writeBinary([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeBool(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeByte(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeDouble(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeFieldEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeFieldStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeI16(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeI32(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeI64(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeListBegin(Lcom/evernote/thrift/protocol/TList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeListEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMapEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMessageEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeSetBegin(Lcom/evernote/thrift/protocol/TSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeSetEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public writeStream(Ljava/io/InputStream;J)V
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 109
    long-to-int v3, p2

    invoke-virtual {p0, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 110
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 112
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "bufflen":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    .line 113
    iget-object v3, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/evernote/thrift/TException;

    const-string v4, "Failed to read from stream"

    invoke-direct {v3, v4, v2}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeStructEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method
