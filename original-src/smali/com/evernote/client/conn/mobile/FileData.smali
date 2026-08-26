.class public Lcom/evernote/client/conn/mobile/FileData;
.super Lcom/evernote/edam/type/Data;
.source "FileData.java"


# static fields
.field private static final BODY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BODY_HASH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBodyFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 52
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/client/conn/mobile/FileData;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 54
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "bodyHash"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    .line 53
    sput-object v0, Lcom/evernote/client/conn/mobile/FileData;->BODY_HASH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 56
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "size"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    .line 55
    sput-object v0, Lcom/evernote/client/conn/mobile/FileData;->SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 58
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "body"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    .line 57
    sput-object v0, Lcom/evernote/client/conn/mobile/FileData;->BODY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 60
    return-void
.end method

.method public constructor <init>([BLjava/io/File;)V
    .locals 2
    .param p1, "bodyHash"    # [B
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/evernote/edam/type/Data;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/evernote/client/conn/mobile/FileData;->mBodyFile:Ljava/io/File;

    .line 71
    invoke-virtual {p0, p1}, Lcom/evernote/client/conn/mobile/FileData;->setBodyHash([B)V

    .line 72
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/conn/mobile/FileData;->setSize(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/FileData;->validate()V

    .line 78
    sget-object v3, Lcom/evernote/client/conn/mobile/FileData;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 79
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/FileData;->getBodyHash()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/FileData;->isSetBodyHash()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    sget-object v3, Lcom/evernote/client/conn/mobile/FileData;->BODY_HASH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 82
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/FileData;->getBodyHash()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBinary(Ljava/nio/ByteBuffer;)V

    .line 83
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 86
    :cond_0
    sget-object v3, Lcom/evernote/client/conn/mobile/FileData;->SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 87
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/FileData;->getSize()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 88
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 89
    iget-object v3, p0, Lcom/evernote/client/conn/mobile/FileData;->mBodyFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/evernote/client/conn/mobile/FileData;->mBodyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    sget-object v3, Lcom/evernote/client/conn/mobile/FileData;->BODY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "s":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/evernote/client/conn/mobile/FileData;->mBodyFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v1    # "s":Ljava/io/InputStream;
    .local v2, "s":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lcom/evernote/client/conn/mobile/FileData;->mBodyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeStream(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    if-eqz v2, :cond_1

    .line 100
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 107
    .end local v2    # "s":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 108
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 109
    return-void

    .line 95
    .restart local v1    # "s":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    new-instance v3, Lcom/evernote/thrift/TException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to write binary body:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/evernote/client/conn/mobile/FileData;->mBodyFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    .line 99
    :goto_2
    if-eqz v1, :cond_3

    .line 100
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 104
    :cond_3
    :goto_3
    throw v3

    .line 102
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v1    # "s":Ljava/io/InputStream;
    .restart local v2    # "s":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 97
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "s":Ljava/io/InputStream;
    .restart local v1    # "s":Ljava/io/InputStream;
    goto :goto_2

    .line 95
    .end local v1    # "s":Ljava/io/InputStream;
    .restart local v2    # "s":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "s":Ljava/io/InputStream;
    .restart local v1    # "s":Ljava/io/InputStream;
    goto :goto_1
.end method
