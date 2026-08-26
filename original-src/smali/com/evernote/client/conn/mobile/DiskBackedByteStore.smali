.class public Lcom/evernote/client/conn/mobile/DiskBackedByteStore;
.super Ljava/io/OutputStream;
.source "DiskBackedByteStore.java"


# instance fields
.field protected byteArray:Ljava/io/ByteArrayOutputStream;

.field protected current:Ljava/io/OutputStream;

.field protected exception:Ljava/lang/Exception;

.field protected file:Ljava/io/File;

.field protected fileInputStream:Ljava/io/FileInputStream;

.field protected fileoutputStream:Ljava/io/FileOutputStream;

.field protected maxMemory:I

.field protected size:I

.field protected tempPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "maxMemory"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileoutputStream:Ljava/io/FileOutputStream;

    .line 47
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    .line 48
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileInputStream:Ljava/io/FileInputStream;

    .line 49
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    .line 63
    iput-object p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    .line 64
    iput p2, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->maxMemory:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .param p1, "parentDir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "maxMemory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileoutputStream:Ljava/io/FileOutputStream;

    .line 47
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    .line 48
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileInputStream:Ljava/io/FileInputStream;

    .line 49
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 70
    iput-object p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->tempPath:Ljava/io/File;

    .line 71
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->makeTempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    .line 72
    iput p3, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->maxMemory:I

    .line 73
    return-void
.end method

.method private initBuffers()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    .line 115
    :cond_0
    return-void
.end method

.method private isSwapRequired(I)Z
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->maxMemory:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    .line 127
    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    .line 128
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileInputStream:Ljava/io/FileInputStream;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    .line 136
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 144
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 147
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileInputStream:Ljava/io/FileInputStream;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    return v0
.end method

.method protected makeTempFile()Ljava/io/File;
    .locals 8

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->tempPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tft"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->clear()V

    .line 157
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->makeTempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->exception:Ljava/lang/Exception;

    .line 162
    return-void
.end method

.method protected swapToDisk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileoutputStream:Ljava/io/FileOutputStream;

    .line 120
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileoutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->byteArray:Ljava/io/ByteArrayOutputStream;

    .line 122
    iget-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->fileoutputStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    .line 123
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I

    .prologue
    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->initBuffers()V

    .line 101
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->isSwapRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->swapToDisk()V

    .line 104
    :cond_0
    iget v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    .line 105
    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->exception:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->initBuffers()V

    .line 83
    :try_start_0
    invoke-direct {p0, p3}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->isSwapRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->swapToDisk()V

    .line 86
    :cond_0
    iget v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->size:I

    .line 87
    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->current:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;->exception:Ljava/lang/Exception;

    goto :goto_0
.end method
