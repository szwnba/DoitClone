.class public Lim/doit/pro/github/GitHubSync;
.super Ljava/lang/Object;
.source "GitHubSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/github/GitHubSync$HttpResp;,
        Lim/doit/pro/github/GitHubSync$Worker;
    }
.end annotation


# static fields
.field private static final API:Ljava/lang/String; = "https://api.github.com"

.field private static final DB_NAME:Ljava/lang/String; = "doitim.db"

.field public static final DEFAULT_REPO:Ljava/lang/String; = "szwnba/doit-data"

.field private static final K_LAST:Ljava/lang/String; = "last_sync"

.field private static final K_REPO:Ljava/lang/String; = "repo"

.field private static final K_TOKEN:Ljava/lang/String; = "token"

.field private static final MAIN:Landroid/os/Handler;

.field public static final PREFS:Ljava/lang/String; = "doit_github_sync"

.field private static final REMOTE_FILE:Ljava/lang/String; = "doitim.db.gz"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lim/doit/pro/github/GitHubSync;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->snapshot(Landroid/content/Context;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100([B)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->gzip([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lim/doit/pro/github/GitHubSync;->remoteSha(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2, p3}, Lim/doit/pro/github/GitHubSync;->http(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 33
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500([B)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->gunzip([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;[B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lim/doit/pro/github/GitHubSync;->restoreDb(Landroid/content/Context;[B)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .line 33
    sget-object v0, Lim/doit/pro/github/GitHubSync;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method private static brief(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 269
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 271
    :cond_5
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    return-object p0

    .line 273
    :catch_11
    move-exception v0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public static doRestore(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 139
    new-instance v0, Lim/doit/pro/github/GitHubSync$3;

    invoke-direct {v0}, Lim/doit/pro/github/GitHubSync$3;-><init>()V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u6062\u590d\u2026"

    invoke-static {p0, v1, v0, p1}, Lim/doit/pro/github/GitHubSync;->runAsync(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/github/GitHubSync$Worker;Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public static doUpload(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 118
    new-instance v0, Lim/doit/pro/github/GitHubSync$2;

    invoke-direct {v0}, Lim/doit/pro/github/GitHubSync$2;-><init>()V

    const-string v1, "\u6b63\u5728\u4e0a\u4f20\u5907\u4efd\u2026"

    invoke-static {p0, v1, v0, p1}, Lim/doit/pro/github/GitHubSync;->runAsync(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/github/GitHubSync$Worker;Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method private static findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 101
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 105
    :cond_18
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 106
    check-cast p0, Landroid/view/ViewGroup;

    .line 107
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lim/doit/pro/github/GitHubSync;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_30

    return-object v1

    .line 107
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 112
    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private static gunzip([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 288
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 289
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 291
    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    .line 292
    :cond_1e
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 293
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static gzip([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 281
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 282
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 283
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static http(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    nop

    .line 206
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.github.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_c3

    .line 207
    const/16 v1, 0x3a98

    :try_start_22
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 208
    const v1, 0x1d4c0

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 209
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    const-string p1, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string p0, "Accept"

    const-string p1, "application/vnd.github+json"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string p0, "User-Agent"

    const-string p1, "DoitLocalSync/1.0"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_c0

    .line 213
    const-string p0, "UTF-8"

    if-eqz p3, :cond_7b

    .line 214
    const/4 p1, 0x1

    :try_start_5d
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 215
    const-string p1, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p2, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_c0

    .line 217
    :try_start_6b
    invoke-virtual {p3, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_76

    :try_start_72
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_7b

    :catchall_76
    move-exception p0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p0

    .line 219
    :cond_7b
    :goto_7b
    new-instance p1, Lim/doit/pro/github/GitHubSync$HttpResp;

    invoke-direct {p1, v0}, Lim/doit/pro/github/GitHubSync$HttpResp;-><init>(Lim/doit/pro/github/GitHubSync$1;)V

    .line 220
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    iput p3, p1, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    .line 221
    iget p3, p1, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v0, 0x190

    if-lt p3, v0, :cond_91

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    goto :goto_95

    :cond_91
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    .line 222
    :goto_95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    if-eqz p3, :cond_ae

    .line 224
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 226
    :goto_a0
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_ab

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a0

    .line 227
    :cond_ab
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_ae
    new-instance p3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p3, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p3, p1, Lim/doit/pro/github/GitHubSync$HttpResp;->body:Ljava/lang/String;
    :try_end_b9
    .catchall {:try_start_72 .. :try_end_b9} :catchall_c0

    .line 230
    nop

    .line 232
    if-eqz p2, :cond_bf

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 230
    :cond_bf
    return-object p1

    .line 232
    :catchall_c0
    move-exception p0

    move-object v0, p2

    goto :goto_c4

    :catchall_c3
    move-exception p0

    :goto_c4
    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 233
    :cond_c9
    goto :goto_cb

    :goto_ca
    throw p0

    :goto_cb
    goto :goto_ca
.end method

.method public static lastSync(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 66
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_sync"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "\u4ece\u672a\u540c\u6b65"

    :cond_14
    return-object p0
.end method

.method public static now()Ljava/lang/String;
    .registers 3

    .line 265
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    const-string v1, "im.doit.pro.github.GitHubSyncActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 53
    const-string v0, "doit_github_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static readFile(Ljava/io/File;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 299
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 301
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_19

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 302
    :cond_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 303
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static remoteSha(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lim/doit/pro/github/GitHubSync;->http(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;

    move-result-object p0

    .line 197
    iget p1, p0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v0, 0x194

    if-ne p1, v0, :cond_e

    return-object v1

    .line 198
    :cond_e
    iget p1, p0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_24

    .line 199
    :try_start_14
    new-instance p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lim/doit/pro/github/GitHubSync$HttpResp;->body:Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sha"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_22

    return-object p0

    .line 200
    :catch_22
    move-exception p0

    return-object v1

    .line 198
    :cond_24
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GitHub \u8fd4\u56de "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lim/doit/pro/github/GitHubSync$HttpResp;->body:Ljava/lang/String;

    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static repo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 61
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "repo"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "szwnba/doit-data"

    :cond_14
    return-object p0
.end method

.method private static restoreDb(Landroid/content/Context;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const-string v0, "doitim.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u65e0\u6cd5\u8bbf\u95ee\u6570\u636e\u5e93\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_1f
    :goto_1f
    new-instance v1, Ljava/io/File;

    const-string v2, "gh_restore_tmp.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 179
    :try_start_2b
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_b2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 181
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-journal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 182
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-wal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 183
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-shm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_9b

    goto :goto_a3

    :cond_9b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u65e0\u6cd5\u66ff\u6362\u65e7\u6570\u636e\u5e93\uff08\u8bf7\u91cd\u542f\u540e\u91cd\u8bd5\uff09"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_a3
    :goto_a3
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_aa

    .line 186
    return-void

    .line 185
    :cond_aa
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u5199\u5165\u6062\u590d\u6570\u636e\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :catchall_b2
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method private static runAsync(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/github/GitHubSync$Worker;Ljava/lang/Runnable;)V
    .registers 5

    .line 239
    invoke-static {p0, p1}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lim/doit/pro/github/GitHubSync$4;

    invoke-direct {v0, p2, p0, p3}, Lim/doit/pro/github/GitHubSync$4;-><init>(Lim/doit/pro/github/GitHubSync$Worker;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 254
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 255
    return-void
.end method

.method public static setLastSync(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 71
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lim/doit/pro/github/GitHubSync;->now()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "last_sync"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method private static snapshot(Landroid/content/Context;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-string v0, "doitim.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "gh_snapshot_tmp.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_54

    .line 164
    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VACUUM INTO \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_4f

    :try_start_44
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->readFile(Ljava/io/File;)[B

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_54

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 165
    return-object p0

    .line 164
    :catchall_4f
    move-exception v2

    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    .line 166
    :catchall_54
    move-exception v1

    .line 167
    :try_start_55
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->readFile(Ljava/io/File;)[B

    move-result-object p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_5d

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 167
    return-object p0

    .line 169
    :catchall_5d
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    throw p0

    .line 159
    :cond_62
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u672c\u673a\u6570\u636e\u5e93\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 258
    sget-object v0, Lim/doit/pro/github/GitHubSync;->MAIN:Landroid/os/Handler;

    new-instance v1, Lim/doit/pro/github/GitHubSync$5;

    invoke-direct {v1, p0, p1}, Lim/doit/pro/github/GitHubSync$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public static token(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 57
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "token"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wire(Landroid/app/Activity;)V
    .registers 3

    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "GitHub"

    invoke-static {v0, v1}, Lim/doit/pro/github/GitHubSync;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1e

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 82
    new-instance v1, Lim/doit/pro/github/GitHubSync$1;

    invoke-direct {v1, p0}, Lim/doit/pro/github/GitHubSync$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    .line 91
    :cond_1e
    goto :goto_20

    .line 89
    :catchall_1f
    move-exception p0

    .line 92
    :goto_20
    return-void
.end method
