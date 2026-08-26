.class public Lim/doit/pro/api/HttpApi;
.super Ljava/lang/Object;
.source "HttpApi.java"


# static fields
.field private static final CONN_TIMEOUT:I = 0x1e

.field private static final JSON_TYPE:Ljava/lang/String; = "application/json;charset=utf-8"

.field private static final TIMEOUT:I = 0x1e


# instance fields
.field protected mAuthScope:Lorg/apache/http/auth/AuthScope;

.field protected final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mUserAgentInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/api/HttpApi;->setAuthScope(Ljava/lang/String;I)V

    .line 76
    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 77
    return-void
.end method

.method private addBody(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v0, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 343
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    return-void
.end method

.method private addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2
    .param p1, "httRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 306
    const-string v0, "User-Agent"

    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->getUserAgentInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "Accept"

    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "Content-type"

    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private clearIpAddress()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveIPAddress(Ljava/lang/String;)V

    .line 215
    new-instance v0, Lim/doit/pro/exception/DoitReSyncException;

    const-string v1, "use host try again"

    invoke-direct {v0, v1}, Lim/doit/pro/exception/DoitReSyncException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 9

    .prologue
    .line 81
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 85
    .local v4, "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    .line 86
    .local v3, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    const/16 v8, 0x50

    invoke-direct {v6, v7, v3, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 88
    :try_start_0
    new-instance v5, Lim/doit/pro/api/TrustAllSSLSocketFactory;

    invoke-direct {v5}, Lim/doit/pro/api/TrustAllSSLSocketFactory;-><init>()V

    .line 89
    .local v5, "tasslf":Lim/doit/pro/api/TrustAllSSLSocketFactory;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v5, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v5    # "tasslf":Lim/doit/pro/api/TrustAllSSLSocketFactory;
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 96
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 98
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 100
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v6

    .line 90
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lim/doit/pro/api/HttpApi;->addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 302
    return-object v0
.end method

.method private createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    const/16 v2, 0x7530

    .line 110
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 114
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 115
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 117
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 118
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 119
    return-object v0
.end method

.method private createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v1}, Lim/doit/pro/api/HttpApi;->addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 316
    :try_start_0
    invoke-direct {p0, p2, v1}, Lim/doit/pro/api/HttpApi;->addBody(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 319
    const-string v3, "Unable to encode http parameters."

    .line 318
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createHttpPut(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPut;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 325
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {p0, v1}, Lim/doit/pro/api/HttpApi;->addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 328
    :try_start_0
    invoke-direct {p0, p2, v1}, Lim/doit/pro/api/HttpApi;->addBody(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-object v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 331
    const-string v3, "Unable to encode http parameters."

    .line 330
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 349
    iget-object v1, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 352
    throw v0
.end method

.method private getBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 255
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 256
    .local v8, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 257
    .local v5, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 260
    const/4 v11, 0x2

    new-array v4, v11, [B

    .line 261
    .local v4, "header":[B
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .line 263
    .local v9, "result":I
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 265
    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    invoke-direct {p0, v4}, Lim/doit/pro/api/HttpApi;->getShort([B)I

    move-result v11

    const v12, 0x8b1f

    if-ne v11, v12, :cond_0

    .line 266
    const-string v11, "use Gzip"

    invoke-static {v11}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 267
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-direct {v5, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_0
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v7, v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 275
    .local v7, "reader":Ljava/io/InputStreamReader;
    const/16 v11, 0x64

    new-array v2, v11, [C

    .line 277
    .local v2, "data":[C
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    .local v10, "sb":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "readSize":I
    if-gtz v6, :cond_1

    .line 281
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "body":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 283
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 292
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "data":[C
    .end local v4    # "header":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "readSize":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "result":I
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :goto_2
    return-object v1

    .line 269
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "header":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "result":I
    :cond_0
    const-string v11, "not use Gzip"

    invoke-static {v11}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 271
    move-object v5, v0

    goto :goto_0

    .line 279
    .restart local v2    # "data":[C
    .restart local v6    # "readSize":I
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 285
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "data":[C
    .end local v4    # "header":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "readSize":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "result":I
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 292
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    .line 287
    :catch_1
    move-exception v3

    .line 288
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 289
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 290
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getShort([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 296
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getUserAgentInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 451
    iget-object v5, p0, Lim/doit/pro/api/HttpApi;->mUserAgentInfo:Ljava/lang/String;

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 453
    .local v0, "appInfo":Ljava/lang/StringBuffer;
    const-string v5, "Doit.im for Android"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 454
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 457
    .local v1, "deviceInfo":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v2, "; "

    .line 458
    .local v2, "divider":Ljava/lang/String;
    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 460
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 461
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 462
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getScreenWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 463
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getScreenHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 464
    const-string v6, "; ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 466
    .local v4, "tz":Ljava/util/TimeZone;
    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Android; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 467
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 468
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 469
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocaleInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 470
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 471
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->getGMTOffset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 472
    const-string v6, " offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 473
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    const-string v5, " (Daylight)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v5, "manufacturer:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 478
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v2    # "divider":Ljava/lang/String;
    .end local v4    # "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lim/doit/pro/api/HttpApi;->mUserAgentInfo:Ljava/lang/String;

    .line 486
    .end local v0    # "appInfo":Ljava/lang/StringBuffer;
    .end local v1    # "deviceInfo":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v5, p0, Lim/doit/pro/api/HttpApi;->mUserAgentInfo:Ljava/lang/String;

    return-object v5

    .line 480
    .restart local v0    # "appInfo":Ljava/lang/StringBuffer;
    .restart local v1    # "deviceInfo":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 481
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lim/doit/pro/api/Response;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    const-string v3, "handleRequest start"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 187
    invoke-direct {p0, p1}, Lim/doit/pro/api/HttpApi;->executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 188
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const-string v3, "handleRequest finish"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 190
    .local v1, "ip":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/PrefUtils;->saveIPAddress(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, v2}, Lim/doit/pro/api/HttpApi;->handleResponse(Lorg/apache/http/HttpResponse;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 207
    .end local v1    # "ip":Ljava/net/InetAddress;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->clearIpAddress()V

    .line 194
    new-instance v3, Lim/doit/pro/exception/DoitConnectionException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConnectTimeoutException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-direct {v3, v4}, Lim/doit/pro/exception/DoitConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->clearIpAddress()V

    .line 198
    new-instance v3, Lim/doit/pro/exception/DoitConnectionException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SocketTimeoutException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-direct {v3, v4}, Lim/doit/pro/exception/DoitConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->clearIpAddress()V

    .line 202
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    new-instance v3, Lim/doit/pro/api/Response;

    const/16 v4, 0x1bc

    const-string v5, "Error"

    invoke-direct {v3, v4, v5}, Lim/doit/pro/api/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 203
    :catch_3
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->clearIpAddress()V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lim/doit/pro/api/Response;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v1, Lim/doit/pro/api/Response;

    invoke-direct {v1}, Lim/doit/pro/api/Response;-><init>()V

    .line 220
    .local v1, "resp":Lim/doit/pro/api/Response;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 242
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, v1, Lim/doit/pro/api/Response;->code:I

    .line 243
    invoke-direct {p0, p1}, Lim/doit/pro/api/HttpApi;->getBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :goto_0
    return-object v1

    .line 226
    :sswitch_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, v1, Lim/doit/pro/api/Response;->code:I

    .line 227
    invoke-direct {p0, p1}, Lim/doit/pro/api/HttpApi;->getBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :sswitch_1
    const/16 v2, 0x191

    iput v2, v1, Lim/doit/pro/api/Response;->code:I

    .line 234
    invoke-direct {p0, p1}, Lim/doit/pro/api/HttpApi;->getBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    goto :goto_0

    .line 237
    :sswitch_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 238
    const/16 v2, 0x194

    iput v2, v1, Lim/doit/pro/api/Response;->code:I

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .restart local v0    # "e":Lorg/apache/http/ParseException;
    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_0
        0x194 -> :sswitch_2
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lim/doit/pro/api/HttpApi;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 153
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lim/doit/pro/api/HttpApi;->handleRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lim/doit/pro/api/Response;

    move-result-object v1

    return-object v1
.end method

.method public doHttpPost(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lim/doit/pro/api/HttpApi;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 142
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0}, Lim/doit/pro/api/HttpApi;->handleRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lim/doit/pro/api/Response;

    move-result-object v1

    return-object v1
.end method

.method public doHttpPut(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lim/doit/pro/api/HttpApi;->createHttpPut(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPut;

    move-result-object v0

    .line 148
    .local v0, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {p0, v0}, Lim/doit/pro/api/HttpApi;->handleRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lim/doit/pro/api/Response;

    move-result-object v1

    return-object v1
.end method

.method public getImageFromServer(Ljava/lang/String;)[B
    .locals 21
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 357
    const/4 v9, 0x0

    .line 360
    .local v9, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v16, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 364
    .local v16, "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v15

    .line 365
    .local v15, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v18, Lorg/apache/http/conn/scheme/Scheme;

    const-string v19, "http"

    const/16 v20, 0x50

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v15, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :try_start_1
    new-instance v17, Lim/doit/pro/api/TrustAllSSLSocketFactory;

    invoke-direct/range {v17 .. v17}, Lim/doit/pro/api/TrustAllSSLSocketFactory;-><init>()V

    .line 368
    .local v17, "tasslf":Lim/doit/pro/api/TrustAllSSLSocketFactory;
    new-instance v18, Lorg/apache/http/conn/scheme/Scheme;

    const-string v19, "https"

    const/16 v20, 0x1bb

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .end local v17    # "tasslf":Lim/doit/pro/api/TrustAllSSLSocketFactory;
    :goto_0
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/api/HttpApi;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .line 375
    .local v11, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v11, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 377
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v0, v16

    invoke-direct {v5, v11, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 379
    .local v5, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10, v5, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    .end local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_3
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 382
    .local v13, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v18, "User-Agent"

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/api/HttpApi;->getUserAgentInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v18, Lim/doit/pro/api/HttpApi$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lim/doit/pro/api/HttpApi$1;-><init>(Lim/doit/pro/api/HttpApi;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 417
    invoke-virtual {v10, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v14

    .line 418
    .local v14, "response":Lorg/apache/http/HttpResponse;
    if-nez v14, :cond_2

    .line 443
    if-eqz v10, :cond_0

    .line 444
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 419
    :cond_0
    const/16 v18, 0x0

    move-object v9, v10

    .line 447
    .end local v5    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v16    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_1
    return-object v18

    .line 369
    .restart local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v16    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v8

    .line 370
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 439
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v16    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_1
    move-exception v8

    .line 440
    .restart local v8    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lim/doit/pro/utils/PrefUtils;->saveDownloadAvatars(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 443
    if-eqz v9, :cond_1

    .line 444
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 447
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/16 v18, 0x0

    goto :goto_1

    .line 422
    .end local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .restart local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v16    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_2
    :try_start_6
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 423
    .local v6, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    .line 424
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 425
    .local v12, "in":Ljava/io/InputStream;
    if-eqz v12, :cond_6

    .line 426
    new-instance v4, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v18, 0x400

    move/from16 v0, v18

    invoke-direct {v4, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 427
    .local v4, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v7, 0x0

    .line 428
    .local v7, "current":I
    :goto_4
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    .line 431
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 432
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v18

    .line 443
    if-eqz v10, :cond_3

    .line 444
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    move-object v9, v10

    .line 432
    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_1

    .line 429
    .end local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_4
    :try_start_7
    invoke-virtual {v4, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_4

    .line 439
    .end local v4    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v6    # "code":I
    .end local v7    # "current":I
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    move-object v9, v10

    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_2

    .line 434
    .end local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "code":I
    .restart local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    const/16 v18, 0x194

    move/from16 v0, v18

    if-eq v6, v0, :cond_6

    .line 436
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lim/doit/pro/utils/PrefUtils;->saveDownloadAvatars(Z)V

    .line 438
    :cond_6
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 443
    if-eqz v10, :cond_7

    .line 444
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_7
    move-object v9, v10

    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_3

    .line 442
    .end local v5    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v6    # "code":I
    .end local v11    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v16    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v18

    .line 443
    :goto_5
    if-eqz v9, :cond_8

    .line 444
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 446
    :cond_8
    throw v18

    .line 442
    .end local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .restart local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v15    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v16    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_5
.end method

.method public hasCredentials()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/api/HttpApi;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    invoke-interface {v0, v1}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendFile(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ByteArrayBody;)Lim/doit/pro/api/Response;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bab"    # Lorg/apache/http/entity/mime/content/ByteArrayBody;

    .prologue
    .line 158
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    .line 159
    sget-object v5, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const-string v6, "doit_android"

    .line 160
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    .line 158
    invoke-direct {v1, v5, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 161
    .local v1, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v5, "uploaded"

    invoke-virtual {v1, v5, p2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 164
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "User-Agent"

    invoke-direct {p0}, Lim/doit/pro/api/HttpApi;->getUserAgentInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v5, "Accept"

    const-string v6, "application/json;charset=utf-8"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v5, "Content-type"

    .line 168
    const-string v6, "multipart/form-data; boundary=doit_android"

    .line 167
    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip,deflate"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 173
    :try_start_0
    invoke-direct {p0, v3}, Lim/doit/pro/api/HttpApi;->executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 174
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v2}, Lim/doit/pro/api/HttpApi;->handleResponse(Lorg/apache/http/HttpResponse;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 178
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setAuthScope(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 136
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lim/doit/pro/api/HttpApi;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    .line 137
    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/api/HttpApi;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    .line 127
    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    goto :goto_0
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lim/doit/pro/api/HttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 107
    :cond_0
    return-void
.end method
