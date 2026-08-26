.class Lim/doit/pro/api/HttpApiWithBasicAuth$3;
.super Ljava/lang/Object;
.source "HttpApiWithBasicAuth.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/api/HttpApiWithBasicAuth;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/api/HttpApiWithBasicAuth;


# direct methods
.method constructor <init>(Lim/doit/pro/api/HttpApiWithBasicAuth;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/api/HttpApiWithBasicAuth$3;->this$0:Lim/doit/pro/api/HttpApiWithBasicAuth;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 44
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 45
    .local v0, "ceheader":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 47
    .local v1, "codecs":[Lorg/apache/http/HeaderElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 54
    .end local v1    # "codecs":[Lorg/apache/http/HeaderElement;
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 48
    .restart local v1    # "codecs":[Lorg/apache/http/HeaderElement;
    .restart local v3    # "i":I
    :cond_1
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    new-instance v4, Lim/doit/pro/api/HttpApiWithBasicAuth$GzipDecompressingEntity;

    iget-object v5, p0, Lim/doit/pro/api/HttpApiWithBasicAuth$3;->this$0:Lim/doit/pro/api/HttpApiWithBasicAuth;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lim/doit/pro/api/HttpApiWithBasicAuth$GzipDecompressingEntity;-><init>(Lim/doit/pro/api/HttpApiWithBasicAuth;Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
