.class public Lim/doit/pro/activity/SetReminderRingtoneDialog;
.super Landroid/app/DialogFragment;
.source "SetReminderRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;,
        Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private isVibrate:Z

.field private listAdapter:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

.field private listView:Landroid/widget/ListView;

.field private mLayoutView:Landroid/view/View;

.field private mOnFinishListener:Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;

.field private okBtn:Landroid/widget/Button;

.field private onCancalClick:Landroid/view/View$OnClickListener;

.field private onOKClick:Landroid/view/View$OnClickListener;

.field private ringtone:Landroid/media/Ringtone;

.field private urlRingtone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    .line 117
    new-instance v0, Lim/doit/pro/activity/SetReminderRingtoneDialog$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$1;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->onOKClick:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->isVibrate:Z

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SetReminderRingtoneDialog;Z)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->saveVibrate(Z)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SetReminderRingtoneDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mOnFinishListener:Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SetReminderRingtoneDialog;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->isVibrate:Z

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/SetReminderRingtoneDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->setRingtone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listAdapter:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    return-object v0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isVibrate()Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->isVibrate:Z

    .line 95
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getUrlRingtone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/activity/SetReminderRingtoneDialog$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$3;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->onOKClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listView:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->cancelBtn:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->okBtn:Landroid/widget/Button;

    .line 91
    return-void
.end method

.method private saveVibrate(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 286
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_vibrate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    return-void
.end method

.method private setRingtone(Ljava/lang/String;)V
    .locals 2
    .param p1, "ringtoneUrl"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->stopPlay()V

    .line 295
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->urlRingtone:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    .line 300
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 303
    :cond_1
    return-void
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listAdapter:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->listAdapter:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-void
.end method

.method private stopPlay()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->stopPlay()V

    .line 308
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 309
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 313
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->stopPlay()V

    .line 314
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 315
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x0

    const v1, 0x7f0d00fc

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->setStyle(II)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    .line 70
    const v0, 0x7f030052

    .line 71
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mLayoutView:Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->initData()V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->initView()V

    .line 74
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->setViewContent()V

    .line 75
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->initListener()V

    .line 76
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->stopPlay()V

    .line 82
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 83
    return-void
.end method

.method public setOnSetReminderRingtoneFinishListener(Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;

    .prologue
    .line 57
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog;->mOnFinishListener:Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;

    .line 58
    return-void
.end method
