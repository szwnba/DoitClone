.class public Lim/doit/pro/activity/ReceiveOtherAppData;
.super Lim/doit/pro/activity/BaseActivity;
.source "ReceiveOtherAppData.java"


# static fields
.field private static final REQUEST_ADD_TASK:I = 0x1

.field private static final REQUEST_LOGIN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private autoSubString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "maxLength"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 78
    :cond_0
    return-object p1
.end method

.method private handleSendText(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "title":Ljava/lang/String;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "context":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    :cond_0
    new-instance v1, Lim/doit/pro/model/Task;

    invoke-direct {v1}, Lim/doit/pro/model/Task;-><init>()V

    .line 53
    .local v1, "task":Lim/doit/pro/model/Task;
    sget-object v3, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v3}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 54
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 55
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    const v3, 0x7f0a0008

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    .line 56
    invoke-direct {p0, v0, v3}, Lim/doit/pro/activity/ReceiveOtherAppData;->autoSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/Task;->setName(Ljava/lang/String;)V

    .line 61
    :goto_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    const v3, 0x7f0a000a

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    .line 62
    invoke-direct {p0, v0, v3}, Lim/doit/pro/activity/ReceiveOtherAppData;->autoSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V

    .line 68
    :goto_1
    invoke-direct {p0, v1}, Lim/doit/pro/activity/ReceiveOtherAppData;->openTaskEditActivity(Lim/doit/pro/model/Task;)V

    .line 72
    .end local v1    # "task":Lim/doit/pro/model/Task;
    :goto_2
    return-void

    .line 59
    .restart local v1    # "task":Lim/doit/pro/model/Task;
    :cond_1
    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    const v3, 0x7f0a0009

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    .line 65
    invoke-direct {p0, v0, v3}, Lim/doit/pro/activity/ReceiveOtherAppData;->autoSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    .end local v1    # "task":Lim/doit/pro/model/Task;
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->finish()V

    goto :goto_2
.end method

.method private needLogin()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginAgain()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-direct {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->toLoginAgain()V

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const-string v1, "need_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/ReceiveOtherAppData;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private openTaskEditActivity(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string v1, "task"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/ReceiveOtherAppData;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method

.method private receiveShareText()V
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "type":Ljava/lang/String;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 40
    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-direct {p0, v1}, Lim/doit/pro/activity/ReceiveOtherAppData;->handleSendText(Landroid/content/Intent;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->finish()V

    goto :goto_0
.end method

.method private toLoginAgain()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginAgainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "need_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/ReceiveOtherAppData;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    return-void

    .line 93
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 94
    invoke-direct {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->receiveShareText()V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->finish()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->needLogin()V

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/ReceiveOtherAppData;->receiveShareText()V

    goto :goto_0
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    return-void
.end method
