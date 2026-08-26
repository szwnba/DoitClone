.class public Lim/doit/pro/activity/EvernoteAccountActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "EvernoteAccountActivity.java"


# instance fields
.field private onUnlinkClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 74
    new-instance v0, Lim/doit/pro/activity/EvernoteAccountActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/EvernoteAccountActivity$1;-><init>(Lim/doit/pro/activity/EvernoteAccountActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/EvernoteAccountActivity;->onUnlinkClick:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/EvernoteAccountActivity;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->showUnlinkEvernoteDialog()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/EvernoteAccountActivity;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->onUnlinkConfirm()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/EvernoteAccountActivity;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->showUnlinkFailedDailog()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->initView()V

    .line 44
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->initViewContent()V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->initActionBar()V

    .line 49
    return-void
.end method

.method private initViewContent()V
    .locals 7

    .prologue
    .line 62
    const v3, 0x7f0b0085

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/EvernoteAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 63
    .local v0, "accountView":Lim/doit/pro/ui/component/LabelTextView;
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->getEvernoteUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 64
    const v3, 0x106000d

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/LabelTextView;->setBackgroundResource(I)V

    .line 66
    const v3, 0x7f0b0086

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/EvernoteAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, "unlinkBtn":Landroid/widget/TextView;
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isEvernoteAuth()Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f0c0107

    .line 69
    .local v1, "nameId":I
    :goto_0
    const v3, 0x7f0c010a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 70
    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 69
    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, p0, Lim/doit/pro/activity/EvernoteAccountActivity;->onUnlinkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 68
    .end local v1    # "nameId":I
    :cond_0
    const v1, 0x7f0c0106

    goto :goto_0
.end method

.method private onUnlinkConfirm()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 107
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient()Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v1

    .line 108
    new-instance v2, Lim/doit/pro/activity/EvernoteAccountActivity$3;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/EvernoteAccountActivity$3;-><init>(Lim/doit/pro/activity/EvernoteAccountActivity;)V

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/AsyncUserStoreClient;->revokeLongSession(Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 137
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->showUnlinkFailedDailog()V

    goto :goto_0
.end method

.method private showUnlinkEvernoteDialog()V
    .locals 7

    .prologue
    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    const v4, 0x7f0c010b

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 85
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isEvernoteAuth()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0c0107

    :goto_0
    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 84
    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "dialog_message_str"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c002c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c010c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 91
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/activity/EvernoteAccountActivity$2;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/EvernoteAccountActivity$2;-><init>(Lim/doit/pro/activity/EvernoteAccountActivity;)V

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 98
    invoke-virtual {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DIALOG_TAG_EVERNOTE_AUTH_FAILED"

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void

    .line 86
    .end local v1    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0c0106

    goto :goto_0
.end method

.method private showUnlinkFailedDailog()V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c010d

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 146
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    invoke-virtual {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_TAG_UNLINK_EVERNOTE_FAILED"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    return-void
.end method


# virtual methods
.method protected initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 57
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isEvernoteAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0107

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 59
    return-void

    .line 58
    :cond_0
    const v1, 0x7f0c0106

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/EvernoteAccountActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->init()V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 26
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 31
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/EvernoteAccountActivity;->finish()V

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
