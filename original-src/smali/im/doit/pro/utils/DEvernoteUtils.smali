.class public Lim/doit/pro/utils/DEvernoteUtils;
.super Ljava/lang/Object;
.source "DEvernoteUtils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$evernote$edam$error$EDAMErrorCode:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$evernote$edam$error$EDAMErrorCode()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lim/doit/pro/utils/DEvernoteUtils;->$SWITCH_TABLE$com$evernote$edam$error$EDAMErrorCode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/evernote/edam/error/EDAMErrorCode;->values()[Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->AUTH_EXPIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_1
    :try_start_1
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->BAD_DATA_FORMAT:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_2
    :try_start_2
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->DATA_CONFLICT:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_3
    :try_start_3
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->DATA_REQUIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_4
    :try_start_4
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->ENML_VALIDATION:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_5
    :try_start_5
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->INTERNAL_ERROR:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_6
    :try_start_6
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->INVALID_AUTH:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_7
    :try_start_7
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->LEN_TOO_LONG:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_8
    :try_start_8
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->LEN_TOO_SHORT:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_9
    :try_start_9
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_a
    :try_start_a
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->PERMISSION_DENIED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_b
    :try_start_b
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->QUOTA_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_c
    :try_start_c
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->RATE_LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_d
    :try_start_d
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->SHARD_UNAVAILABLE:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_e
    :try_start_e
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->TAKEN_DOWN:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_f
    :try_start_f
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->TOO_FEW:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_10
    :try_start_10
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->TOO_MANY:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_11
    :try_start_11
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->UNKNOWN:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->UNSUPPORTED_OPERATION:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_13
    sput-object v0, Lim/doit/pro/utils/DEvernoteUtils;->$SWITCH_TABLE$com$evernote$edam$error$EDAMErrorCode:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_13

    :catch_1
    move-exception v1

    goto :goto_12

    :catch_2
    move-exception v1

    goto :goto_11

    :catch_3
    move-exception v1

    goto :goto_10

    :catch_4
    move-exception v1

    goto :goto_f

    :catch_5
    move-exception v1

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_d

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto/16 :goto_8

    :catch_c
    move-exception v1

    goto/16 :goto_7

    :catch_d
    move-exception v1

    goto/16 :goto_6

    :catch_e
    move-exception v1

    goto/16 :goto_5

    :catch_f
    move-exception v1

    goto/16 :goto_4

    :catch_10
    move-exception v1

    goto/16 :goto_3

    :catch_11
    move-exception v1

    goto/16 :goto_2

    :catch_12
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEvernoteUsername()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getEvernote()Lim/doit/pro/model/Evernote;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getEvernote()Lim/doit/pro/model/Evernote;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Evernote;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAuth()Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEvernoteAuth()Z
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    const-string v1, "https://www.evernote.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 31
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isYinxiangAuth()Z
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    const-string v1, "https://app.yinxiang.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 62
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lim/doit/pro/utils/DEvernoteUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;I)V

    .line 63
    return-void
.end method

.method public static showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "defaultMsg"    # I

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    move-object v0, p1

    .line 71
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 74
    :cond_2
    instance-of v4, v0, Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 75
    check-cast v2, Lcom/evernote/edam/error/EDAMUserException;

    .line 76
    .local v2, "e":Lcom/evernote/edam/error/EDAMUserException;
    invoke-virtual {v2}, Lcom/evernote/edam/error/EDAMUserException;->getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v1

    .line 77
    .local v1, "code":Lcom/evernote/edam/error/EDAMErrorCode;
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->$SWITCH_TABLE$com$evernote$edam$error$EDAMErrorCode()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/evernote/edam/error/EDAMErrorCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 86
    .end local v1    # "code":Lcom/evernote/edam/error/EDAMErrorCode;
    .end local v2    # "e":Lcom/evernote/edam/error/EDAMUserException;
    :cond_3
    instance-of v4, v0, Lcom/evernote/thrift/transport/TTransportException;

    if-eqz v4, :cond_4

    move-object v2, v0

    .line 87
    check-cast v2, Lcom/evernote/thrift/transport/TTransportException;

    .line 88
    .local v2, "e":Lcom/evernote/thrift/transport/TTransportException;
    invoke-virtual {v2}, Lcom/evernote/thrift/transport/TTransportException;->getType()I

    move-result v3

    .line 89
    .local v3, "type":I
    packed-switch v3, :pswitch_data_1

    .line 98
    .end local v2    # "e":Lcom/evernote/thrift/transport/TTransportException;
    .end local v3    # "type":I
    :cond_4
    :pswitch_0
    if-lez p2, :cond_0

    .line 99
    invoke-static {p2}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 80
    .restart local v1    # "code":Lcom/evernote/edam/error/EDAMErrorCode;
    .local v2, "e":Lcom/evernote/edam/error/EDAMUserException;
    :pswitch_1
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showEvernoteReAuthDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 92
    .end local v1    # "code":Lcom/evernote/edam/error/EDAMErrorCode;
    .local v2, "e":Lcom/evernote/thrift/transport/TTransportException;
    .restart local v3    # "type":I
    :pswitch_2
    invoke-static {}, Lim/doit/pro/utils/ToastUtils;->showNetworkNotReady()Z

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 89
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
