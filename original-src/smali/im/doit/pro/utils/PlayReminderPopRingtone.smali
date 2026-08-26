.class public Lim/doit/pro/utils/PlayReminderPopRingtone;
.super Ljava/lang/Object;
.source "PlayReminderPopRingtone.java"


# static fields
.field private static _self:Lim/doit/pro/utils/PlayReminderPopRingtone;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lim/doit/pro/utils/PlayReminderPopRingtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sput-object p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mContext:Landroid/content/Context;

    .line 20
    sget-object v0, Lim/doit/pro/utils/PlayReminderPopRingtone;->_self:Lim/doit/pro/utils/PlayReminderPopRingtone;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lim/doit/pro/utils/PlayReminderPopRingtone;

    invoke-direct {v0}, Lim/doit/pro/utils/PlayReminderPopRingtone;-><init>()V

    sput-object v0, Lim/doit/pro/utils/PlayReminderPopRingtone;->_self:Lim/doit/pro/utils/PlayReminderPopRingtone;

    .line 23
    :cond_0
    sget-object v0, Lim/doit/pro/utils/PlayReminderPopRingtone;->_self:Lim/doit/pro/utils/PlayReminderPopRingtone;

    return-object v0
.end method

.method private playRingtoneAndVibrate()V
    .locals 8

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isVibrate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    sget-object v5, Lim/doit/pro/utils/PlayReminderPopRingtone;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->vibrator:Landroid/os/Vibrator;

    .line 43
    const/4 v5, 0x6

    new-array v2, v5, [J

    const/4 v5, 0x1

    const-wide/16 v6, 0x7d0

    aput-wide v6, v2, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x3e8

    aput-wide v6, v2, v5

    const/4 v5, 0x3

    const-wide/16 v6, 0x7d0

    aput-wide v6, v2, v5

    const/4 v5, 0x4

    const-wide/16 v6, 0x3e8

    aput-wide v6, v2, v5

    const/4 v5, 0x5

    const-wide/16 v6, 0x7d0

    aput-wide v6, v2, v5

    .line 44
    .local v2, "pattern":[J
    iget-object v5, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->vibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v5, v2, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 46
    .end local v2    # "pattern":[J
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getUrlRingtone()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "urlRingtone":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 48
    sget-object v5, Lim/doit/pro/utils/PlayReminderPopRingtone;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 49
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 51
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 64
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "urlRingtone":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 54
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "urlRingtone":Ljava/lang/String;
    :cond_2
    sget-object v5, Lim/doit/pro/utils/PlayReminderPopRingtone;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v5

    iput-object v5, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 55
    iget-object v5, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 56
    iget-object v5, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 57
    iget-object v5, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "urlRingtone":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopRingtone()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 70
    :cond_0
    iget-object v0, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lim/doit/pro/utils/PlayReminderPopRingtone;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public play()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->stopRingtone()V

    .line 32
    invoke-direct {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->playRingtoneAndVibrate()V

    .line 33
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->stopRingtone()V

    .line 37
    return-void
.end method
