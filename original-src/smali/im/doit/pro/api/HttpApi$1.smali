.class Lim/doit/pro/api/HttpApi$1;
.super Ljava/lang/Object;
.source "HttpApi.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/api/HttpApi;->getImageFromServer(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/api/HttpApi;


# direct methods
.method constructor <init>(Lim/doit/pro/api/HttpApi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/api/HttpApi$1;->this$0:Lim/doit/pro/api/HttpApi;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 400
    .local v3, "statusCode":I
    const/16 v5, 0x12e

    if-ne v3, v5, :cond_1

    .line 402
    const-string v5, "location"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 403
    .local v2, "headers":[Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 404
    .local v4, "url":Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 408
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "url":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 404
    .restart local v2    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_0
    aget-object v1, v2, v5

    .line 405
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 404
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "header":Lorg/apache/http/Header;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 413
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 389
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 390
    .local v0, "statusCode":I
    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    .line 391
    const/4 v1, 0x1

    .line 393
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
