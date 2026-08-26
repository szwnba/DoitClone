.class Lim/doit/pro/api/HttpApiWithBasicAuth$GzipDecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "HttpApiWithBasicAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/api/HttpApiWithBasicAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GzipDecompressingEntity"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/api/HttpApiWithBasicAuth;


# direct methods
.method public constructor <init>(Lim/doit/pro/api/HttpApiWithBasicAuth;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 85
    iput-object p1, p0, Lim/doit/pro/api/HttpApiWithBasicAuth$GzipDecompressingEntity;->this$0:Lim/doit/pro/api/HttpApiWithBasicAuth;

    .line 86
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lim/doit/pro/api/HttpApiWithBasicAuth$GzipDecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 92
    .local v0, "wrappedin":Ljava/io/InputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, -0x1

    return-wide v0
.end method
