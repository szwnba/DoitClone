.class public Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;
.super Landroid/app/DialogFragment;
.source "SetReminderSnoozeTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;,
        Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listAdapter:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

.field private listView:Landroid/widget/ListView;

.field private mLayoutView:Landroid/view/View;

.field private mOnFinishListener:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;

.field private mSnoozeTime:I

.field private onCancalClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mSnoozeTime:I

    .line 97
    new-instance v0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$1;-><init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mSnoozeTime:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listAdapter:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mSnoozeTime:I

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mOnFinishListener:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;

    return-object v0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getReminderSnoozeTime()I

    move-result v0

    iput v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mSnoozeTime:I

    .line 72
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;-><init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0c0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listView:Landroid/widget/ListView;

    .line 67
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->cancelBtn:Landroid/widget/Button;

    .line 68
    return-void
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;-><init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listAdapter:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

    .line 76
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->listAdapter:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x0

    const v1, 0x7f0d00fc

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->setStyle(II)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    .line 54
    const v0, 0x7f030053

    .line 55
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mLayoutView:Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->initData()V

    .line 57
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->initView()V

    .line 58
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->setViewContent()V

    .line 59
    invoke-direct {p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->initListener()V

    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public setOnSetReminderSnoozeTimeFinishListener(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;

    .prologue
    .line 41
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->mOnFinishListener:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;

    .line 42
    return-void
.end method
