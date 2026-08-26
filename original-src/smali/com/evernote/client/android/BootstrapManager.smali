.class public Lcom/evernote/client/android/BootstrapManager;
.super Ljava/lang/Object;
.source "BootstrapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;,
        Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$evernote$client$android$EvernoteSession$EvernoteService:[I = null

.field public static final CHINA_PROFILE:Ljava/lang/String; = "Evernote-China"

.field public static final DISPLAY_EVERNOTE:Ljava/lang/String; = "Evernote"

.field public static final DISPLAY_EVERNOTE_INTL:Ljava/lang/String; = "Evernote International"

.field public static final DISPLAY_YXBIJI:Ljava/lang/String; = "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

.field private static final LOGTAG:Ljava/lang/String; = "EvernoteSession"

.field private static sChinaLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootstrapServerUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootstrapServerUsed:Ljava/lang/String;

.field private mClientProducer:Lcom/evernote/client/android/ClientFactory;

.field private mLocale:Ljava/util/Locale;

.field private mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;


# direct methods
.method static synthetic $SWITCH_TABLE$com$evernote$client$android$EvernoteSession$EvernoteService()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/evernote/client/android/BootstrapManager;->$SWITCH_TABLE$com$evernote$client$android$EvernoteSession$EvernoteService:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->values()[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/evernote/client/android/BootstrapManager;->$SWITCH_TABLE$com$evernote$client$android$EvernoteSession$EvernoteService:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 57
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 58
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/BootstrapManager;->sChinaLocales:Ljava/util/List;

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/ClientFactory;)V
    .locals 1
    .param p1, "service"    # Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .param p2, "producer"    # Lcom/evernote/client/android/ClientFactory;

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/evernote/client/android/BootstrapManager;-><init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/ClientFactory;Ljava/util/Locale;)V

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/ClientFactory;Ljava/util/Locale;)V
    .locals 2
    .param p1, "service"    # Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .param p2, "producer"    # Lcom/evernote/client/android/ClientFactory;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    .line 101
    iput-object p3, p0, Lcom/evernote/client/android/BootstrapManager;->mLocale:Ljava/util/Locale;

    .line 102
    iput-object p2, p0, Lcom/evernote/client/android/BootstrapManager;->mClientProducer:Lcom/evernote/client/android/ClientFactory;

    .line 104
    iget-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    invoke-static {}, Lcom/evernote/client/android/BootstrapManager;->$SWITCH_TABLE$com$evernote$client$android$EvernoteSession$EvernoteService()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 107
    :pswitch_0
    sget-object v0, Lcom/evernote/client/android/BootstrapManager;->sChinaLocales:Ljava/util/List;

    iget-object v1, p0, Lcom/evernote/client/android/BootstrapManager;->mLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    const-string v1, "https://app.yinxiang.com"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    const-string v1, "https://www.evernote.com"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    const-string v1, "https://sandbox.evernote.com"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeUserStoreAndCheckVersion()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "i":I
    const-string v4, "1.25"

    .line 131
    .local v4, "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 159
    :goto_1
    return-void

    .line 131
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "url":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 134
    :try_start_0
    iget-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->mClientProducer:Lcom/evernote/client/android/ClientFactory;

    invoke-virtual {v6, v3}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient(Ljava/lang/String;)Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v6

    iput-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;

    .line 136
    iget-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;

    invoke-virtual {v6}, Lcom/evernote/client/android/AsyncUserStoreClient;->getClient()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v6

    iget-object v7, p0, Lcom/evernote/client/android/BootstrapManager;->mClientProducer:Lcom/evernote/client/android/ClientFactory;

    invoke-virtual {v7}, Lcom/evernote/client/android/ClientFactory;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    .line 137
    const/4 v8, 0x1

    .line 138
    const/16 v9, 0x19

    .line 136
    invoke-virtual {v6, v7, v8, v9}, Lcom/evernote/edam/userstore/UserStore$Client;->checkVersion(Ljava/lang/String;SS)Z

    move-result v6

    .line 138
    if-nez v6, :cond_1

    .line 139
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;

    .line 140
    new-instance v6, Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;

    invoke-direct {v6, v4}, Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "cue":Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    const-string v5, "EvernoteSession"

    const-string v6, "Invalid Version"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    throw v0

    .line 143
    .end local v0    # "cue":Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    :cond_1
    :try_start_1
    iput-object v3, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUsed:Ljava/lang/String;
    :try_end_1
    .catch Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 149
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    iput-object v10, p0, Lcom/evernote/client/android/BootstrapManager;->mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;

    .line 151
    iget-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 152
    const-string v6, "EvernoteSession"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error contacting bootstrap server="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    :cond_2
    throw v1
.end method


# virtual methods
.method getBootstrapInfo()Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    const-string v4, "EvernoteSession"

    const-string v5, "getBootstrapInfo()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "bsInfo":Lcom/evernote/edam/userstore/BootstrapInfo;
    :try_start_0
    iget-object v4, p0, Lcom/evernote/client/android/BootstrapManager;->mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;

    if-nez v4, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/evernote/client/android/BootstrapManager;->initializeUserStoreAndCheckVersion()V

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/evernote/client/android/BootstrapManager;->mUserStoreClient:Lcom/evernote/client/android/AsyncUserStoreClient;

    invoke-virtual {v4}, Lcom/evernote/client/android/AsyncUserStoreClient;->getClient()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v4

    iget-object v5, p0, Lcom/evernote/client/android/BootstrapManager;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/evernote/edam/userstore/UserStore$Client;->getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lcom/evernote/client/android/BootstrapManager;->printBootstrapInfo(Lcom/evernote/edam/userstore/BootstrapInfo;)V
    :try_end_0
    .catch Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :goto_0
    new-instance v3, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;

    iget-object v4, p0, Lcom/evernote/client/android/BootstrapManager;->mBootstrapServerUsed:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;-><init>(Ljava/lang/String;Lcom/evernote/edam/userstore/BootstrapInfo;)V

    .line 186
    .local v3, "wrapper":Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;
    return-object v3

    .line 179
    .end local v3    # "wrapper":Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "cue":Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    throw v1

    .line 181
    .end local v1    # "cue":Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    :catch_1
    move-exception v2

    .line 182
    .local v2, "e":Lcom/evernote/thrift/TException;
    const-string v4, "EvernoteSession"

    const-string v5, "error getting bootstrap info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method printBootstrapInfo(Lcom/evernote/edam/userstore/BootstrapInfo;)V
    .locals 5
    .param p1, "bsInfo"    # Lcom/evernote/edam/userstore/BootstrapInfo;

    .prologue
    .line 194
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v2, "EvernoteSession"

    const-string v3, "printBootstrapInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapInfo;->getProfiles()Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/userstore/BootstrapProfile;>;"
    if-eqz v1, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/userstore/BootstrapProfile;

    .line 200
    .local v0, "profile":Lcom/evernote/edam/userstore/BootstrapProfile;
    const-string v3, "EvernoteSession"

    invoke-virtual {v0}, Lcom/evernote/edam/userstore/BootstrapProfile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v0    # "profile":Lcom/evernote/edam/userstore/BootstrapProfile;
    :cond_2
    const-string v2, "EvernoteSession"

    const-string v3, "Profiles are null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
