.class public Lcom/evernote/client/android/EvernoteUtil;
.super Ljava/lang/Object;
.source "EvernoteUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/EvernoteUtil$EvernoteUtilException;
    }
.end annotation


# static fields
.field private static final EDAM_HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field public static final NOTE_PREFIX:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\"><en-note>"

.field public static final NOTE_SUFFIX:Ljava/lang/String; = "</en-note>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/evernote/client/android/EvernoteUtil;->bytesToHex([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHex([BZ)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "withSpaces"    # Z

    .prologue
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 110
    :cond_0
    aget-byte v0, p0, v3

    .line 111
    .local v0, "hashByte":B
    and-int/lit16 v1, v0, 0xff

    .line 112
    .local v1, "intVal":I
    const/16 v5, 0x10

    if-ge v1, v5, :cond_1

    .line 113
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    if-eqz p1, :cond_2

    .line 117
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static createEnMediaTag(Lcom/evernote/edam/type/Resource;)Ljava/lang/String;
    .locals 2
    .param p0, "resource"    # Lcom/evernote/edam/type/Resource;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<en-media hash=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->getData()Lcom/evernote/edam/type/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/edam/type/Data;->getBodyHash()[B

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/client/android/EvernoteUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string v1, "\" type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hash(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    .local v1, "digest":Ljava/security/MessageDigest;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 87
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4

    .line 82
    .end local v0    # "buf":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "n":I
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lcom/evernote/client/android/EvernoteUtil$EvernoteUtilException;

    const-string v5, "MD5 not supported"

    invoke-direct {v4, v5, v2}, Lcom/evernote/client/android/EvernoteUtil$EvernoteUtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 88
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "buf":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "n":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method

.method public static hash([B)[B
    .locals 3
    .param p0, "body"    # [B

    .prologue
    .line 69
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/evernote/client/android/EvernoteUtil$EvernoteUtilException;

    const-string v2, "MD5 not supported"

    invoke-direct {v1, v2, v0}, Lcom/evernote/client/android/EvernoteUtil$EvernoteUtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 131
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 136
    return-object v2

    .line 132
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 134
    .local v1, "offset":I
    add-int/lit8 v3, v1, 0x2

    .line 133
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 134
    const/16 v4, 0x10

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
