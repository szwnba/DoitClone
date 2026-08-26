.class public Lcom/evernote/client/android/EvernoteSession;
.super Ljava/lang/Object;
.source "EvernoteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    }
.end annotation


# static fields
.field public static final HOST_CHINA:Ljava/lang/String; = "https://app.yinxiang.com"

.field public static final HOST_PRODUCTION:Ljava/lang/String; = "https://www.evernote.com"

.field public static final HOST_SANDBOX:Ljava/lang/String; = "https://sandbox.evernote.com"

.field private static final LOGTAG:Ljava/lang/String; = "EvernoteSession"

.field public static final REQUEST_CODE_OAUTH:I = 0x3836

.field private static sInstance:Lcom/evernote/client/android/EvernoteSession;


# instance fields
.field private mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

.field private mBootstrapManager:Lcom/evernote/client/android/BootstrapManager;

.field private mClientFactory:Lcom/evernote/client/android/ClientFactory;

.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field private mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field private mSupportAppLinkedNotebooks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;Z)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "consumerSecret"    # Ljava/lang/String;
    .param p4, "evernoteService"    # Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .param p5, "supportAppLinkedNotebooks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    if-nez p4, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters canot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    iput-object p2, p0, Lcom/evernote/client/android/EvernoteSession;->mConsumerKey:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/evernote/client/android/EvernoteSession;->mConsumerSecret:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/evernote/client/android/EvernoteSession;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 220
    iput-boolean p5, p0, Lcom/evernote/client/android/EvernoteSession;->mSupportAppLinkedNotebooks:Z

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    invoke-static {p1}, Lcom/evernote/client/android/SessionPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResultFromPref(Landroid/content/SharedPreferences;)Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    new-instance v0, Lcom/evernote/client/android/ClientFactory;

    invoke-direct {p0, p1}, Lcom/evernote/client/android/EvernoteSession;->generateUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/ClientFactory;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    .line 225
    new-instance v0, Lcom/evernote/client/android/BootstrapManager;

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteSession;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/BootstrapManager;-><init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/ClientFactory;)V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mBootstrapManager:Lcom/evernote/client/android/BootstrapManager;

    .line 226
    return-void

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;ZLjava/util/Locale;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "consumerSecret"    # Ljava/lang/String;
    .param p4, "evernoteService"    # Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .param p5, "supportAppLinkedNotebooks"    # Z
    .param p6, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 245
    const-string v1, "Parameters canot be null or empty"

    .line 244
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iput-object p2, p0, Lcom/evernote/client/android/EvernoteSession;->mConsumerKey:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/evernote/client/android/EvernoteSession;->mConsumerSecret:Ljava/lang/String;

    .line 250
    iput-object p4, p0, Lcom/evernote/client/android/EvernoteSession;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 251
    iput-boolean p5, p0, Lcom/evernote/client/android/EvernoteSession;->mSupportAppLinkedNotebooks:Z

    .line 252
    monitor-enter p0

    .line 254
    :try_start_0
    invoke-static {p1}, Lcom/evernote/client/android/SessionPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResultFromPref(Landroid/content/SharedPreferences;)Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    new-instance v0, Lcom/evernote/client/android/ClientFactory;

    invoke-direct {p0, p1}, Lcom/evernote/client/android/EvernoteSession;->generateUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/ClientFactory;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 256
    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    .line 258
    new-instance v0, Lcom/evernote/client/android/BootstrapManager;

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 259
    iget-object v2, p0, Lcom/evernote/client/android/EvernoteSession;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    invoke-direct {v0, v1, v2, p6}, Lcom/evernote/client/android/BootstrapManager;-><init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/ClientFactory;Ljava/util/Locale;)V

    .line 258
    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mBootstrapManager:Lcom/evernote/client/android/BootstrapManager;

    .line 260
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private generateUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 332
    .local v3, "packageVersion":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "userAgent":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 342
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    return-object v4

    .line 335
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v4    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "EvernoteSession"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "locale":Ljava/util/Locale;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getAuthenticationResultFromPref(Landroid/content/SharedPreferences;)Lcom/evernote/client/android/AuthenticationResult;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 284
    new-instance v0, Lcom/evernote/client/android/AuthenticationResult;

    invoke-direct {v0, p1}, Lcom/evernote/client/android/AuthenticationResult;-><init>(Landroid/content/SharedPreferences;)V

    .line 286
    .local v0, "authResult":Lcom/evernote/client/android/AuthenticationResult;
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getWebApiUrlPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 294
    .end local v0    # "authResult":Lcom/evernote/client/android/AuthenticationResult;
    :cond_1
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;Z)Lcom/evernote/client/android/EvernoteSession;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "evernoteService"    # Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .param p4, "supportAppLinkedNotebooks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/evernote/client/android/EvernoteSession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evernote/client/android/EvernoteSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;Z)V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    .line 163
    :cond_0
    sget-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;ZLjava/util/Locale;)Lcom/evernote/client/android/EvernoteSession;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "evernoteService"    # Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .param p4, "supportAppLinkedNotebooks"    # Z
    .param p5, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/evernote/client/android/EvernoteSession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/EvernoteSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;ZLjava/util/Locale;)V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    .line 184
    sget-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    return-object v0
.end method

.method static getOpenSession()Lcom/evernote/client/android/EvernoteSession;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/evernote/client/android/EvernoteSession;->sInstance:Lcom/evernote/client/android/EvernoteSession;

    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EVERNOTE_HOST"

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteSession;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const-string v1, "CONSUMER_KEY"

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteSession;->mConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "CONSUMER_SECRET"

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteSession;->mConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "SUPPORT_APP_LINKED_NOTEBOOKS"

    iget-boolean v2, p0, Lcom/evernote/client/android/EvernoteSession;->mSupportAppLinkedNotebooks:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 369
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "ctx":Landroid/content/Context;
    const/16 v1, 0x3836

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 375
    :goto_0
    return-void

    .line 372
    .restart local p1    # "ctx":Landroid/content/Context;
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    return-object v0
.end method

.method protected getBootstrapSession()Lcom/evernote/client/android/BootstrapManager;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mBootstrapManager:Lcom/evernote/client/android/BootstrapManager;

    return-object v0
.end method

.method public getClientFactory()Lcom/evernote/client/android/ClientFactory;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    return-object v0
.end method

.method public isAppLinkedNotebook()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->isAppLinkedNotebook()Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logOut(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/client/android/InvalidAuthenticationException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    new-instance v1, Lcom/evernote/client/android/InvalidAuthenticationException;

    const-string v2, "Must not call when already logged out"

    invoke-direct {v1, v2}, Lcom/evernote/client/android/InvalidAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    invoke-static {p1}, Lcom/evernote/client/android/SessionPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/AuthenticationResult;->clear(Landroid/content/SharedPreferences;)V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    .line 428
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 436
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 437
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 438
    return-void

    .line 428
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected persistAuthenticationToken(Landroid/content/Context;Lcom/evernote/client/oauth/EvernoteAuthToken;Ljava/lang/String;)Z
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "authToken"    # Lcom/evernote/client/oauth/EvernoteAuthToken;
    .param p3, "evernoteHost"    # Ljava/lang/String;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 389
    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    .line 391
    :cond_1
    monitor-enter p0

    .line 393
    :try_start_0
    new-instance v0, Lcom/evernote/client/android/AuthenticationResult;

    .line 394
    invoke-virtual {p2}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {p2}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {p2}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getWebApiUrlPrefix()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {p2}, Lcom/evernote/client/oauth/EvernoteAuthToken;->getUserId()I

    move-result v5

    .line 399
    invoke-virtual {p2}, Lcom/evernote/client/oauth/EvernoteAuthToken;->isAppLinkedNotebook()Z

    move-result v6

    move-object v4, p3

    .line 393
    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/AuthenticationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 392
    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    .line 401
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->mAuthenticationResult:Lcom/evernote/client/android/AuthenticationResult;

    invoke-static {p1}, Lcom/evernote/client/android/SessionPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/AuthenticationResult;->persist(Landroid/content/SharedPreferences;)V

    .line 391
    monitor-exit p0

    .line 404
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
